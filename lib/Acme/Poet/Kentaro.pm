package Acme::Poet::Kentaro;
use Mouse;

extends qw(Acme::Poet::Base);

has name => (
    is      => 'ro',
    isa     => 'Str',
    default => 'kentaro',
);

our $VERSION = '0.01';

__PACKAGE__->meta->make_immutable;
no Mouse;

use Data::Section::Simple qw(get_data_section);

sub poems {
    my $class = shift;
       $class->to_poems(get_data_section);
}

!!1;

__DATA__
@@ 便所の光景

額から胸へと、大きな弧を成し、身を反り出し、
いちはやく唇が嘴へ、やや遅れて突き出た胸には、白い綿毛。
エジプトの女王は、いまにも空へ舞い上がろうとしている。
勇壮さでもって、きたるべき敗退の予感を押し隠す
戦士の瞳は、かすかに潤んでいる。
地中海に散りばめられた宝石。
蠅をとらえる。
黒色の夜が空を千に裂いて、女たちに埋め込んでいく。
一角獣にまたがって、ひとりの少女が駈け出す。
蠅が地に落ちる。
