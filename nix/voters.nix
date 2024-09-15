{ pkgs }:
let
  inherit (pkgs) lib;
  inherit (import ./config.nix) exclusions;
  voters = lib.mapAttrsToList (email: id: { inherit email id; }) (lib.importJSON ../voters.json);
  duplicated = lib.pipe voters [
    (lib.filter (entry: entry.id != null))
    (lib.groupBy (entry: toString entry.id))
    (lib.filterAttrs (id: entries: lib.length entries > 1))
    (lib.mapAttrs (id: map (entry: entry.email)))
  ];

  includedExcludedVoters = lib.filter ({email, id}: lib.elem id exclusions) voters;

  emails = lib.partition ({ email, id }: !lib.hasPrefix "@" email) voters;
  withoutEmails = map ({ email, id}: lib.elemAt (lib.splitString ":" email) 0) emails.wrong;
  githubIds = lib.partition ({ email, id }: ! lib.isString id) voters;

  githubToEmails = lib.listToAttrs (map ({ email, id }: lib.nameValuePair (toString id) email) (lib.filter ({email, id}: !lib.hasPrefix "@" email && ! lib.isString id) voters));

  emailsToGithub = lib.listToAttrs (map ({ email, id }: lib.nameValuePair email (if lib.isString id then lib.elemAt (lib.splitString ":" id) 0 else id)) (lib.filter ({email, id}: !lib.hasPrefix "@" email) voters));

in
assert lib.assertMsg (duplicated == { })
  "A GitHub ID belongs to multiple emails in voters.json: ${lib.generators.toPretty { } duplicated}";
assert lib.assertMsg (includedExcludedVoters == [ ])
  "An excluded GitHub ID is in voters.json: ${lib.generators.toPretty { } includedExcludedVoters}";
lib.warnIf (withoutEmails != [ ])
  "Some voters don't have email addresses: ${lib.concatStringsSep " " withoutEmails}"
lib.warnIf (githubIds.wrong != [ ])
  "Some voters don't have GitHub accounts: ${lib.generators.toPretty { } githubIds.wrong}"
  pkgs.runCommand
  "voters"
  {
    passAsFile = [
      "githubIds"
      "emails"
      "withoutEmails"
      "githubToEmails"
      "emailsToGithub"
    ];
    githubIds = lib.concatStrings (lib.map ({ email, id }: "${toString id}\n") githubIds.right);
    emails = lib.concatStrings (map ({email, id}: "${email}\n") emails.right);
    withoutEmails = lib.concatStrings (
      map ({ email, id}: lib.elemAt (lib.splitString ":" email) 0 + "\n") emails.wrong
    );
    githubToEmails = builtins.toJSON githubToEmails;
    emailsToGithub = builtins.toJSON emailsToGithub;
  }
  ''
    mkdir -p $out
    mv "$githubIdsPath" $out/github-ids
    mv "$emailsPath" $out/emails.txt
    mv "$withoutEmailsPath" $out/users-without-emails
    mv "$githubToEmailsPath" $out/github-to-emails
    mv "$emailsToGithubPath" $out/emails-to-github
  ''
