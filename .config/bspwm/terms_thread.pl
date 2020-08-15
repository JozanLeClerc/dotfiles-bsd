#!/usr/local/bin/perl

use strict;
use warnings;
use Time::HiRes;

use constant {
	BSPC_PATH		=> '/usr/local/bin/bspc',
	ESPEAK_PATH		=> '/usr/local/bin/espeak',
	ALACRITTY_PATH	=> '/usr/local/bin/alacritty',
	SH_PATH			=> '/bin/sh',
	ZSH_PATH		=> '/usr/local/bin/zsh',
	COWSAY_PATH		=> '/usr/local/bin/cowsay',
	HTOP_PATH		=> '/usr/local/bin/htop',
	GOTOP_PATH		=> '/usr/local/bin/gotop',
	VIFM_PATH		=> '/usr/local/bin/vifm'
};
use constant COWSAY_WELCOME	=> 'Welcome back, partner! And remember to try glest!';

sub run_espeak
{
	my $espeak_pid;

	$espeak_pid = fork();
	if (not $espeak_pid) {
		exec(ESPEAK_PATH, COWSAY_WELCOME);
	}
	return;
}

sub fg_on_three_screens
{
	my @term_pid;

	$term_pid[0] = fork();
	if (not $term_pid[0]) {
		exec(
			ALACRITTY_PATH, '-e', SH_PATH, '-c',
			COWSAY_PATH . ' "' . COWSAY_WELCOME . '"; ' . ZSH_PATH
			);
		exit;
	}
	Time::HiRes::sleep(3.6);
	$term_pid[1] = fork();
	if (not $term_pid[1]) {
		exec(ALACRITTY_PATH, '-e', HTOP_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	$term_pid[2] = fork();
	if (not $term_pid[2]) {
		exec(ALACRITTY_PATH, '-e', GOTOP_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-f', 'west');
	$term_pid[3] = fork();
	if (not $term_pid[3]) {
		exec(ALACRITTY_PATH, '-e', VIFM_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-z', 'right', '180', '0');
	system(BSPC_PATH, 'node', '-z', 'top', '0', '70');
	system(BSPC_PATH, 'node', '-f', 'east');
	system(BSPC_PATH, 'node', '-f', 'north');
	system(BSPC_PATH, 'node', '-z', 'bottom', '0', '-280');
	system(BSPC_PATH, 'node', '-f', 'north');
	system(BSPC_PATH, 'node', '-f', 'west');
	return;
}

sub fg_on_two_screens
{
	my @term_pid;

	$term_pid[0] = fork();
	if (not $term_pid[0]) {
		exec(
			ALACRITTY_PATH, '-e', SH_PATH, '-c',
			COWSAY_PATH . ' "' . COWSAY_WELCOME . '"; ' . ZSH_PATH
			);
		exit;
	}
	Time::HiRes::sleep(3.6);
	$term_pid[1] = fork();
	if (not $term_pid[1]) {
		exec(ALACRITTY_PATH, '-e', HTOP_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	$term_pid[2] = fork();
	if (not $term_pid[2]) {
		exec(ALACRITTY_PATH, '-e', GOTOP_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-f', 'west');
	$term_pid[3] = fork();
	if (not $term_pid[3]) {
		exec(ALACRITTY_PATH, '-e', VIFM_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-z', 'right', '180', '0');
	system(BSPC_PATH, 'node', '-z', 'top', '0', '70');
	system(BSPC_PATH, 'node', '-f', 'east');
	system(BSPC_PATH, 'node', '-f', 'north');
	system(BSPC_PATH, 'node', '-z', 'bottom', '0', '-280');
	system(BSPC_PATH, 'node', '-f', 'north');
	system(BSPC_PATH, 'node', '-f', 'west');
	return;
}

sub fg_on_one_screen
{
	my @term_pid;

	$term_pid[0] = fork();
	if (not $term_pid[0]) {
		exec(
			ALACRITTY_PATH, '-e', SH_PATH, '-c',
			COWSAY_PATH . ' "' . COWSAY_WELCOME . '"; ' . ZSH_PATH
			);
		exit;
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-p', 'west');
	$term_pid[1] = fork();
	if (not $term_pid[1]) {
		exec(ALACRITTY_PATH, '-e', HTOP_PATH);
		exit;
	}
	Time::HiRes::sleep(3.6);
	$term_pid[2] = fork();
	if (not $term_pid[2]) {
		exec(ALACRITTY_PATH, '-e', GOTOP_PATH);
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-f', 'east');
	$term_pid[3] = fork();
	if (not $term_pid[3]) {
		exec(ALACRITTY_PATH, '-e', VIFM_PATH);
	}
	Time::HiRes::sleep(3.6);
	system(BSPC_PATH, 'node', '-f', 'west');
	system(BSPC_PATH, 'node', '-f', 'north');
	system(BSPC_PATH, 'node', '-z', 'bottom', '0', '-200');
	system(BSPC_PATH, 'node', '-z', 'right', '-220', '0');
	system(BSPC_PATH, 'node', '-f', 'east');
	system(BSPC_PATH, 'node', '-z', 'bottom', '0', '70');
	system(BSPC_PATH, 'node', '-f', 'north');
	return;
}

sub run_terms
{
	my ($screens) = @_;

	system(BSPC_PATH, 'desktop', '-f', '09');
	if ($screens == 3) {
		fg_on_three_screens();
	}
	elsif ($screens == 2) {
		fg_on_two_screens();
	}
	else {
		fg_on_one_screen();
	}
	system(BSPC_PATH, 'desktop', '-f', '01');
	return;
}

sub main
{
	run_espeak();
	run_terms($ARGV[0]);
	return;
}

main();

__END__
