#!/usr/local/bin/perl

use strict;
use warnings;
use Capture::Tiny qw(capture);

use constant {
	NEWSBOAT_PATH		=> '/usr/local/bin/newsboat',
	NOTIFY_SEND_PATH	=> '/usr/local/bin/notify-send'
};

sub main
{
	my $stdout;
	if (system(
		NEWSBOAT_PATH,
		'-x',
		'reload'
	) != 0) {
		exit 1;
	}
	($stdout, undef, undef) = capture {
		system(
			NEWSBOAT_PATH,
			'-x',
			'print-unread'
		);
	};
	$stdout =~ s/\s.+//;
	chomp $stdout;
	if ($stdout != 0) {
		system(
			NOTIFY_SEND_PATH,
			'-u',
			'low',
			' newsboat',
			$stdout . ' new articles'
		);
	}
	exit 0;
}

main();

__END__
