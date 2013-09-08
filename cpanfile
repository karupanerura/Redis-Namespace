requires 'Redis';

on 'test' => sub {
    requires 'Test::More';
    requires 'Test::RedisServer';
};

on 'develop' => sub {
    requires 'Module::Install';
    requires 'Module::Install::CPANfile';
    requires 'Module::Install::AuthorTests';
    requires 'Module::Install::Repository';
};
