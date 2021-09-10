#!/bin/expect -f
#
# This Expect script was generated by autoexpect on Fri Sep 10 12:24:24 2021
# Expect and autoexpect were both written by Don Libes, NIST.
#
# Note that autoexpect does not guarantee a working script.  It
# necessarily has to guess about certain things.  Two reasons a script
# might fail are:
#
# 1) timing - A surprising number of programs (rn, ksh, zsh, telnet,
# etc.) and devices discard or ignore keystrokes that arrive "too
# quickly" after prompts.  If you find your new script hanging up at
# one spot, try adding a short sleep just before the previous send.
# Setting "force_conservative" to 1 (see below) makes Expect do this
# automatically - pausing briefly before sending each character.  This
# pacifies every program I know of.  The -c flag makes the script do
# this in the first place.  The -C flag allows you to define a
# character to toggle this mode off and on.

set force_conservative 0  ;# set to 1 to force conservative mode even if
			  ;# script wasn't run conservatively originally
if {$force_conservative} {
	set send_slow {1 .1}
	proc send {ignore arg} {
		sleep .1
		exp_send -s -- $arg
	}
}

#
# 2) differing output - Some programs produce different output each time
# they run.  The "date" command is an obvious example.  Another is
# ftp, if it produces throughput statistics at the end of a file
# transfer.  If this causes a problem, delete these patterns or replace
# them with wildcards.  An alternative is to use the -p flag (for
# "prompt") which makes Expect only look for the last line of output
# (i.e., the prompt).  The -P flag allows you to define a character to
# toggle this mode off and on.
#
# Read the man page for more info.
#
# -Don


set timeout -1
spawn docker run -it -v /root/.streamrDocker:/root/.streamr streamr/broker-node:testnet bin/config-wizard
match_max 100000
expect -exact "\[?25l\[32m?\[39m \[1mDo you want to generate a new Ethereum private key or import an existing one?\[22m\[0m \[0m\[2m(Use arrow keys)\[22m\r
\[36m❯ Generate\[39m \r
  Import \[9D\[9C"
send -- "\r"
expect -exact "\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mDo you want to generate a new Ethereum private key or import an existing one?\[22m\[0m \[0m\[36mGenerate\[39m\[88D\[88C\r
\[?25h\[?25l\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m(Press \[36m\[1m<space>\[22m\[39m to select, \[36m\[1m<a>\[22m\[39m to toggle all, \[36m\[1m<i>\[22m\[39m to invert selection)\r
\[36m❯◯ websocket\[39m\r
 ◯ mqtt\r
 ◯ publishHttp\[14D\[14C"
send -- " "
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\r
\[36m❯\[32m◉\[39m\[36m websocket\[39m\r
 ◯ mqtt\r
 ◯ publishHttp\[14D\[14C"
send -- "\[B"
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\r
 \[32m◉\[39m websocket\r
\[36m❯◯ mqtt\[39m\r
 ◯ publishHttp\[14D\[14C"
send -- " "
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\r
 \[32m◉\[39m websocket\r
\[36m❯\[32m◉\[39m\[36m mqtt\[39m\r
 ◯ publishHttp\[14D\[14C"
send -- "\[B"
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\r
 \[32m◉\[39m websocket\r
 \[32m◉\[39m mqtt\r
\[36m❯◯ publishHttp\[39m\[14D\[14C"
send -- " "
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\r
 \[32m◉\[39m websocket\r
 \[32m◉\[39m mqtt\r
\[36m❯\[32m◉\[39m\[36m publishHttp\[39m\[14D\[14C"
send -- "\r"
expect -exact "\[2K\[1A\[2K\[1A\[2K\[1A\[2K\[G\[32m?\[39m \[1mSelect the plugins to enable\[22m\[0m \[0m\[36mwebsocket, mqtt, publishHttp\[39m\[59D\[59C\r
\[?25h\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[2m(7170) \[22m\[74D\[74C"
send -- "7"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[2m(7170) \[22m7\[75D\[75C"
send -- "1"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[2m(7170) \[22m71\[76D\[76C"
send -- "7"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[2m(7170) \[22m717\[77D\[77C"
send -- "0"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[2m(7170) \[22m7170\[78D\[78C"
send -- "\r"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the websocket Plugin \[Enter for default: 7170\]\[22m\[0m \[0m\[36m7170\[39m\[71D\[71C\r
\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[2m(1883) \[22m\[69D\[69C"
send -- "1"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[2m(1883) \[22m1\[70D\[70C"
send -- "8"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[2m(1883) \[22m18\[71D\[71C"
send -- "8"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[2m(1883) \[22m188\[72D\[72C"
send -- "3"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[2m(1883) \[22m1883\[73D\[73C"
send -- "\r"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the mqtt Plugin \[Enter for default: 1883\]\[22m\[0m \[0m\[36m1883\[39m\[66D\[66C\r
\[32m?\[39m \[1mSelect a port for the publishHttp Plugin \[Enter for default: 7171\]\[22m\[0m \[0m\[2m(7171) \[22m\[76D\[76C"
send -- "7"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the publishHttp Plugin \[Enter for default: 7171\]\[22m\[0m \[0m\[2m(7171) \[22m7\[77D\[77C"
send -- "1"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the publishHttp Plugin \[Enter for default: 7171\]\[22m\[0m \[0m\[2m(7171) \[22m71\[78D\[78C"
send -- "7"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the publishHttp Plugin \[Enter for default: 7171\]\[22m\[0m \[0m\[2m(7171) \[22m717\[79D\[79C"
send -- "1"
expect -exact "\[2K\[G\[32m?\[39m \[1mSelect a port for the publishHttp Plugin \[Enter for default: 7171\]\[22m\[0m \[0m\[2m(7171) \[22m7171\[80D\[80C"
send -- "\r"
expect -exact "\[32m?\[39m \[1mSelect a path to store the generated config in \[22m\[0m \[0m\[2m(/root/.streamr/broker-config.json) \[22m\[86D\[86C"
send -- "\r"
expect eof
