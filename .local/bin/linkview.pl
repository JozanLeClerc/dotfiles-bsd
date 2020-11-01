#!/usr/local/bin/perl

use strict;
use warnings;
use Term::ANSIColor;

use constant {
	MPV_PATH	=> '/home/jozan/.local/bin/mpview',
	FETCH_PATH	=> '/usr/bin/fetch'
};

# ext="${1##*.}"
# mpvFiles="mkv mp4 gif"
# sxivFiles="png jpg jpeg jpe xpm"
# wgetFiles="flac mp3 mp3?source=feed opus pdf doc docx"
# 
# cd ~/dl || exit
# 
# if echo "$sxivFiles" | grep -w "$ext" > /dev/null; then
# 	nohup sxiv "$1" > /dev/null &
# elif echo "$mpvFiles" | grep -w "$ext" > /dev/null; then
# 	nohup mpv --loop --quiet "$1" > /dev/null &
# elif echo "$wgetFiles" | grep -w "$ext" > /dev/null; then
# 	clear
# 	fetch "$1"
# else
# 	clear
# 	mpv-view.pl "$1"
# fi

sub main
{
	my $answer;

	if (@ARGV == 0) {
		print STDERR "URL needed\n";
		exit 1;
	}
	print colored($ARGV[0], 'bold_green') . "\n";
	$answer = <STDIN>;
	return;
}

main();

__END__
