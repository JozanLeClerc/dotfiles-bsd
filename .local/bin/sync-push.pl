#!/usr/local/bin/perl

use strict;
use warnings;

sub main
{
	my $i;

	print "Check...\n";
	$i = 0;
	while (system('/bin/pgrep', 'newsboat') == 0) {
		sleep 5;
		$i += 1;
		print "Waiting...\n";
		if ($i == 12) {
			print "Too long, exiting...\n";
			exit 1;
		}
	}
	system(
		'/usr/local/bin/rsync',
		'-a',
		'-e',
		'ssh',
		'/home/jozan/.local/share/newsboat/cache.db',
		'root@207.246.81.115:/root/sync/newsboat/cache.db'
	);
	system(
		'/usr/local/bin/rsync',
		'-a',
		'-e',
		'ssh',
		'/home/jozan/.abook/addressbook',
		'root@207.246.81.115:/root/sync/abook/addressbook'
	);
	exit 0;
}

main();

__END__
