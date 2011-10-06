package Acme::Poet;
use 5.008001;
use strict;
use warnings;
use Module::Find;

our $VERSION = '0.01';

sub poets {
    my $class = shift;
    [grep { $_ ne 'Acme::Poet::Base' } useall Acme::Poet];
}

!!1;
