requires 'Redis';

on 'test' => sub {
    requires 'Test::More';
    requires 'Test::RedisServer';
};
