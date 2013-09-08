use inc::Module::Install;
name 'Redis-Namespace';
all_from 'lib/Redis/Namespace.pm';

requires 'Redis';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Test::RedisServer';
auto_set_repository;
auto_include;
WriteAll;
