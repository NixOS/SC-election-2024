#!/usr/bin/env perl

# From https://github.com/andrewcmyers/civs/blob/cbef7e7a0c5dccc0072096db958d2900174bfe16/cgi-bin/mail.pm#L46-L52
sub CheckAddr {
    (my $addr) = @_;

    return ($addr =~ m/^[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2,8})$/i);
}

while(my $line = <>) {
    if (!CheckAddr($line)) {
        print($line)
    }
}
