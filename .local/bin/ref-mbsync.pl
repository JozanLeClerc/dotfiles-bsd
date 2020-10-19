#!/usr/local/bin/perl

use strict;
use warnings;

use constant {
	MBSYNC_PATH			=> '/usr/local/bin/mbsync',
	NOTIFY_SEND_PATH	=> '/usr/local/bin/notify-send'
};

sub main
{
	system(
		MBSYNC_PATH,
		'-c',
		'/usr/home/jozan/.mbsyncrc',
		'-a'
	);
	exit 0;
}

main();

__END__
