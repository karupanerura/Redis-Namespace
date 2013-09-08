use inc::Module::Install;
use Module::Install::CPANfile;

name 'Redis-Namespace';
all_from 'lib/Redis/Namespace.pm';

tests 't/*.t';
author_tests 'xt';

auto_include;
cpanfile;
WriteAll;
