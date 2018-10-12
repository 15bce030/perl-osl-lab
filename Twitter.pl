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


print "Last Object For Demo--\n";
print Dumper($last);
	
print "Searching the tweets";
print "\n\n\n\n\n\n\n"	;


my $r = $nt->search('Nirma University');
foreach my $e (@{ $r->{statuses} }) {
    print "$e->{user}{screen_name}:  $e->{text}";
	print "\n";
	print "-------------------\n";
}

$nt->update('Today is 5th October');

#
#my $user        = 'Postit29269537';
#my $message_ack = "Hasta la vista, baby";

#$nt->new_direct_message({ user => $user, text => $message_ack });



print "Success";


