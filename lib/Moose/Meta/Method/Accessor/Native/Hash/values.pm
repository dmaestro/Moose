package Moose::Meta::Method::Accessor::Native::Hash::values;
our $VERSION = '2.1404';

use strict;
use warnings;

use Scalar::Util qw( looks_like_number );

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader';

sub _maximum_arguments { 0 }

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return 'values %{ (' . $slot_access . ') }';
}

no Moose::Role;

1;
