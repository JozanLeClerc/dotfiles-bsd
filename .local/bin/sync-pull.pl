#!/usr/local/bin/perl

use strict;
use warnings;

sub main
{
	my $i;

	print "Check...\n";
	$i = 0;
	while (system('/bin/pgrep', 'newsboat') == 0) {
		print "newsboat running, exiting...";
		exit 1;
	}
	system(
		'/usr/local/bin/rsync',
		'-a',
		'-e',
		'ssh',
		'root@207.246.81.115:/root/sync/newsboat/cache.db',
		'/home/jozan/.local/share/newsboat/cache.db'
	);
	system(
		'/usr/local/bin/rsync',
		'-a',
		'-e',
		'ssh',
		'root@207.246.81.115:/root/sync/abook/addressbook',
		'/home/jozan/.abook/addressbook'
	);
	exit 0;
}

main();

__END__
