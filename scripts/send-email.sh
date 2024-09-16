#!/usr/bin/env bash

set -euo pipefail

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' exit

to=$1
subject=$2

cp /dev/stdin "$tmp/content"

cat <<EOF >> "$tmp/content"

---

To stop getting emails and waive your voter privileges for the Nix SC Election 2024, let us know in a reply to this email.
EOF

# pandoc -f gfm -t gfm --wrap=auto --columns=76 -o "$tmp/content" "$tmp/content"

export XDG_CONFIG_HOME="$tmp/config"
mkdir -p "$tmp/config/msmtp"

# Don't allow others to read the file
umask 077

cat << EOF > "$tmp/config/msmtp/config"
account        ec
logfile        -
host           smtp.improvmx.com
port           587
tls_starttls   on
tls            on
from           elections@nixos.org
from_full_name Nix Election Committee
auth           on
user           elections@nixos.org
password       $SMTP_PASSWORD
# Would only be needed if we used mailutils to send emails,
# which I'm not, because its multipart/alternative support seems to be messed up.
# But let's keep this here just in case
allow_from_override off

account default: ec
EOF

# Only encode with base64 if necessary
# It would be better to use quoted-printable, but there's no easy way to get that here :)
encode() {
  local inputFile=$1
  if iconv -f utf-8 -t ascii -o "$tmp/ascii" "$inputFile" >/dev/null; then
    echo "Content-Transfer-Encoding: 7bit"
    echo ""
    cat "$tmp/ascii"
  else
    echo "Content-Transfer-Encoding: base64"
    echo ""
    base64 < "$inputFile"
  fi
}

boundary=$(sha256sum < "$tmp/content" | cut -d' ' -f1)

pandoc -f gfm -t html -o "$tmp/html" "$tmp/content"

msmtp -t << EOF 
To: $to
Subject: $subject
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="$boundary"

--$boundary
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
$(encode "$tmp/content")

--$boundary
Content-Type: text/html; charset="utf-8"
Content-Disposition: inline
$(encode "$tmp/html")

--$boundary--
EOF
