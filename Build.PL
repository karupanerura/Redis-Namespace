use strict;
use warnings;

use Config;

use Module::Build;

my $build = Module::Build->new(
    module_name    => 'Redis::Namespace',
    license        => 'MIT',
    requires => {
        'Redis' => 0,
    },
    build_requires => {
        'Test::More'        => 0,
        'Test::RedisServer' => 0,
        'Test::Deep'        => 0,
    },

    test_files           => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,

    no_index => { 'directory' => [ 'deps' ] },
);

$build->create_build_script;
