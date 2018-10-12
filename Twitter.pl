use lib 'C:\Strawberry\cpan\build\Net-Twitter-4.01043-1\lib';
use lib 'C:\Strawberry\cpan\build\Net-OAuth-0.28-1\lib';

use strict;
use Net::Twitter;
use Data::Dumper;


my $nt = Net::Twitter->new(
    ssl      => 1,
    traits   => [qw/API::RESTv1_1/],
    consumer_key        => "AyeqDSe40JP73F0GMyeZ5a47L",
    consumer_secret     => "F7CDcsWV2V54RQ22WBpDYI1Oj9Bt3hkWQZVo2VdmO4NT1aXamL",
    access_token        => "957537071417114624-tieIxkqnYH1FFRqiqTLpS1USbqI24eG",
    access_token_secret => "w0kVuddxypWUgDCYkwCBG8LFXIMmsKHLrbQj529jyfequ",
);


my $r = $nt->home_timeline;
my $last;
foreach my $e (@$r) {
    print "$e->{user}{screen_name}:  $e->{text}";
	$last = $e;
	print "\n";
	print "-------------------";
}
