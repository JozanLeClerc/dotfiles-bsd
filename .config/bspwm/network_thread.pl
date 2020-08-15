#!/usr/local/bin/perl

use strict;
use warnings;
use Capture::Tiny qw(capture);
use WWW::Curl::Easy;

use constant {
	PGREP_PATH	=> '/bin/pgrep',
	GIT_PATH	=> '/usr/local/bin/git',
	QTOX_PATH	=> '/usr/local/bin/qtox'
};
use constant NETWORK_TEST_URL	=> 'https://www.freebsd.org/';

sub run_if_dead
{
	my @argv = @_;
	my $bin;
	my $pid;

	$bin = $argv[0];
	$bin =~ s/.+\///g;
	my (undef, undef, $retval) = capture {
		system(
			PGREP_PATH,
			$bin
			);
	};
	$retval = ($retval >> 8) & 0xff;
	if ($retval != 0) {
		$pid = fork();
		if (not $pid) {
			exec(@argv);
			exit;
		}
	}
	return;
}

sub run_network_programs
{
	my $curl;
	my $response_body;

	$curl = WWW::Curl::Easy->new;
	$curl->setopt(CURLOPT_URL, NETWORK_TEST_URL);
	$curl->setopt(CURLOPT_WRITEDATA, \$response_body);
	if ($curl->perform == 0) {
		system(GIT_PATH, '-C', '/usr/home/jozan/.elfeed', 'pull', 'origin', 'master');
		run_if_dead(QTOX_PATH);
	}
	return;
}

sub main
{
	run_network_programs();
	return;
}

main();

__END__
