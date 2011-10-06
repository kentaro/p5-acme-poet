package Acme::Poet::Base;
use Mouse;

__PACKAGE__->meta->make_immutable;
no Mouse;

use Acme::Poem;

sub to_poems {
    my ($class, $sections) = @_;

    +[
        map {
            Acme::Poem->new({
                title => $_,
                lines => [split /[\r\n]/, $sections->{$_}],
            });
        } keys %{$sections || {}}
    ]
}

!!1;
