#!/usr/local/bin/perl

use strict;
use warnings;

use constant {
	UNISON_PATH			=> '/usr/local/bin/unison',
	NOTIFY_SEND_PATH	=> '/usr/local/bin/notify-send'
};

sub main
{
	system(
		UNISON_PATH,
		'-ui',
		'text',
		'/usr/home/jozan/.local/share/newsboat/cache.db',
		'ssh://root@jozanleclerc.xyz//root/unison/.local/share/newsboat/cache.db'
	);
	system(
		UNISON_PATH,
		'-ui',
		'text',
		'/usr/home/jozan/.abook/addressbook',
		'ssh://root@jozanleclerc.xyz//root/unison/.abook/addressbook'
	);
	exit 0;
}

main();

__END__
