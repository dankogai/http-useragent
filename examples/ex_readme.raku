#!/usr/bin/env perl6
use v6;
use HTTP::UserAgent;

my $ua = HTTP::UserAgent.new;
$ua.timeout = 1;

my $response = $ua.get('https://github.com');

if $response.is-success {
    say $response.content;
} else {
    die $response.status-line;
}

$response = $ua.get('https://github.com/404here');
