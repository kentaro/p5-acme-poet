package Acme::Poem;
use Mouse;

has title => (
    is  => 'rw',
    isa => 'Str',
);

has lines => (
    is  => 'rw',
    isa => 'ArrayRef',
);

__PACKAGE__->meta->make_immutable;
no Mouse;

sub to_string {
    my $self = shift;
    join "\n", @{$self->lines || []};
}

!!1;
