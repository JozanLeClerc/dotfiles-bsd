#!/usr/bin/env perl

use strict;
use warnings;
use Scalar::Util qw(looks_like_number);
use Term::ANSIColor;

sub get_size
{
	my $size;
	my $answer;

	$size = 0;
	$answer = 0;
	print
	"1) 0\n" .
	"2) 240\n" .
	"3) 360\n" .
	"4) 480\n" .
	"5) 720\n" .
	"6) 1080\n" .
	"\n" .
	"> ";
	$answer = <STDIN>;
	if (!looks_like_number($answer) || $answer == 0 || $answer == 1 || $answer > 6) {
		$size = 0;
	}
	elsif ($answer == 2) {
		$size = 240;
	}
	elsif ($answer == 3) {
		$size = 360;
	}
	elsif ($answer == 4) {
		$size = 480;
	}
	elsif ($answer == 5) {
		$size = 720;
	}
	elsif ($answer == 6) {
		$size = 1080;
	}
	return $size;
}

sub main
{
	my $size;

	if ($#ARGV + 1 == 0) {
		print STDERR "URL needed\n";
		exit 1;
	}
	$size = get_size();
	if ($size != 0) {
		print 'mpv --ytdl-format=[height<=' . $size . '] ' . $ARGV[0] . "\n";
		exec(
			'mpv',
			'--ytdl-format=[height<=' . $size . ']',
			$ARGV[0]
		);
	}
	else {
		print 'mpv ' . $ARGV[0] . "\n";
		exec(
			'mpv',
			$ARGV[0]
		);
	}
	print "$size\n";
	exit 0;
}

main();

__END__
