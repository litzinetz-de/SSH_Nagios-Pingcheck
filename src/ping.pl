use Net::Ping;

$p = Net::Ping->new();


my $ip = $ARGV[0];
my $p = Net::Ping->new( "icmp", 1, 64 );
if ( $p->ping($ip) ) {
    print "$ip answered\n";
    exit(0); # OK
} else {
    print "$ip did not answer\n";
    exit(2); # CRITICAL
}
