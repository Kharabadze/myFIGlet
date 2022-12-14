#!/usr/bin/env perl

use strict;

my $FontHeight = 6;#?????? ???????
#my $Mode = 1;#1=Wide mode
my $Mode = 2;#2=Slim mode
my $SpaceSize = 4;#Size of space

#---------------------------
my @Font=(
#--- --- --- --- --- --- --- English(ASCII)
#--- --- 0x20..0x27
#Space
'  ',
'  ',
'  ',
'  ',
'  ',
'  ',
#!
' _  ',
'| | ',
'| | ',
'|_| ',
'(_) ',
'    ',
#"
' _ _  ',
'( | ) ',
'|/|/  ',
'      ',
'      ',
'      ',
# #
'   _  _    ',
' _| || |_  ',
'|_  ..  _| ',
'|_      _| ',
'  |_||_|   ',
'           ',
#$
'  _   ',
' | |  ',
'/ __) ',
'\__ \ ',
'(   / ',
' |_|  ',
#%
' _  __ ',
'(_)/ / ',
'  / /  ',
' / /_  ',
'/_/(_) ',
'       ',
#&
'  ___    ',
' ( _ )   ',
' / _ \/\ ',
'| (_>  < ',
' \___/\/ ',
'         ',
#'
' _  ',
'( ) ',
'|/  ',
'    ',
'    ',
'    ',
#--- --- 0x28..0x2F
#(
'  __ ',
' / / ',
'| |  ',
'| |  ',
'| |  ',
' \_\ ',
#)
'__   ',
'\ \  ',
' | | ',
' | | ',
' | | ',
'/_/  ',
#*
'       ',
'__/\__ ',
'\    / ',
'/_  _\ ',
'  \/   ',
'       ',
#+
'        ',
'   _    ',
' _| |_  ',
'|_   _| ',
'  |_|   ',
'        ',
#,
'    ',
'    ',
'    ',
' _  ',
'( ) ',
'|/  ',
#-
'        ',
'        ',
' _____  ',
'|_____| ',
'        ',
'        ',
#.
'    ',
'    ',
'    ',
' _  ',
'(_) ',
'    ',
#/
'    __ ',
'   / / ',
'  / /  ',
' / /   ',
'/_/    ',
'       ',
#--- --- 0x30..0x37
#0
'  ___   ',
' / _ \  ',
'| | | | ',
'| |_| | ',
' \___/  ',
'        ',
#1
' _  ',
'/ | ',
'| | ',
'| | ',
'|_| ',
'    ',
#2
' ____   ',
'|___ \  ',
'  __) | ',
' / __/  ',
'|_____| ',
'        ',
#3
' _____  ',
'|___ /  ',
'  |_ \  ',
' ___) | ',
'|____/  ',
'        ',
#4
' _  _    ',
'| || |   ',
'| || |_  ',
'|__   _| ',
'   |_|   ',
'         ',
#5
' ____   ',
'| ___|  ',
'|___ \  ',
' ___) | ',
'|____/  ',
'        ',
#6
'  __    ',
' / /_   ',
'| \'_ \  ',
'| (_) | ',
' \___/  ',
'        ',
#7
' _____  ',
'|___  | ',
'   / /  ',
'  / /   ',
' /_/    ',
'        ',
#--- --- 0x38..0x3f
#8
'  ___   ',
' ( _ )  ',
' / _ \  ',
'| (_) | ',
' \___/  ',
'        ',
#9
'  ___   ',
' / _ \  ',
'| (_) | ',
' \__, | ',
'   /_/  ',
'        ',
#:
'    ',
' _  ',
'(_) ',
' _  ',
'(_) ',
'    ',
#;
'    ',
' _  ',
'(_) ',
' _  ',
'( ) ',
'|/  ',
#<
'  __ ',
' / / ',
'/ /  ',
'\ \  ',
' \_\ ',
'     ',
#=
'        ',
' _____  ',
'|_____| ',
'|_____| ',
'        ',
'        ',
#>
'__   ',
'\ \  ',
' \ \ ',
' / / ',
'/_/  ',
'     ',
#? 
' ___  ',
'|__ \ ',
'  / / ',
' |_|  ',
' (_)  ',
'      ',
#--- --- 0x40..0x47
#@
'   ____   ',
'  / __ \  ',
' / / _` | ',
'| | (_| | ',
' \ \__,_| ',
'  \____/  ',
#A
'    _     ',
'   / \    ',
'  / _ \   ',
' / ___ \  ',
'/_/   \_\ ',
'          ',
#B
' ____   ',
'| __ )  ',
'|  _ \  ',
'| |_) | ',
'|____/  ',
'        ',
#C
'  ____  ',
' / ___| ',
'| |     ',
'| |___  ',
' \____| ',
'        ',
#D
' ____   ',
'|  _ \  ',
'| | | | ',
'| |_| | ',
'|____/  ',
'        ',
#E
' _____  ',
'| ____| ',
'|  _|   ',
'| |___  ',
'|_____| ',
'        ',
#F
' _____  ',
'|  ___| ',
'| |_    ',
'|  _|   ',
'|_|     ',
'        ',
#G
'  ____  ',
' / ___| ',
'| |  _  ',
'| |_| | ',
' \____| ',
'        ',
#--- --- 0x48..0x4f
#H
' _   _  ',
'| | | | ',
'| |_| | ',
'|  _  | ',
'|_| |_| ',
'        ',
#I
' ___  ',
'|_ _| ',
' | |  ',
' | |  ',
'|___| ',
'      ',
#J
'     _  ',
'    | | ',
' _  | | ',
'| |_| | ',
' \___/  ',
'        ',
#K
' _  __ ',
'| |/ / ',
'| \' /  ',
'| . \  ',
'|_|\_\ ',
'       ',
#L
' _      ',
'| |     ',
'| |     ',
'| |___  ',
'|_____| ',
'        ',
#M
' __  __  ',
'|  \/  | ',
'| |\/| | ',
'| |  | | ',
'|_|  |_| ',
'         ',
#N
' _   _  ',
'| \ | | ',
'|  \| | ',
'| |\  | ',
'|_| \_| ',
'        ',
#O
'  ___   ',
' / _ \  ',
'| | | | ',
'| |_| | ',
' \___/  ',
'        ',
#--- --- 0x50..0x57
#P
' ____   ',
'|  _ \  ',
'| |_) | ',
'|  __/  ',
'|_|     ',
'        ',
#Q
'  ___   ',
' / _ \  ',
'| | | | ',
'| |_| | ',
' \__\_\ ',
'        ',
#R
' ____   ',
'|  _ \  ',
'| |_) | ',
'|  _ <  ',
'|_| \_\ ',
'        ',
#S
' ____   ',
'/ ___|  ',
'\___ \  ',
' ___) | ',
'|____/  ',
'        ',
#T
' _____  ',
'|_   _| ',
'  | |   ',
'  | |   ',
'  |_|   ',
'        ',
#U
' _   _  ',
'| | | | ',
'| | | | ',
'| |_| | ',
' \___/  ',
'        ',
#V
'__     __ ',
'\ \   / / ',
' \ \ / /  ',
'  \ V /   ',
'   \_/    ',
'          ',
#W
'__        __ ',
'\ \      / / ',
' \ \ /\ / /  ',
'  \ V  V /   ',
'   \_/\_/    ',
'             ',
#--- --- 0x58..0x5f
#X
'__  __ ',
'\ \/ / ',
' \  /  ',
' /  \  ',
'/_/\_\ ',
'       ',
#Y
'__   __ ',
'\ \ / / ',
' \ V /  ',
'  | |   ',
'  |_|   ',
'        ',
#Z
' _____ ',
'|__  / ',
'  / /  ',
' / /_  ',
'/____| ',
'       ',
#[
' __  ',
'| _| ',
'| |  ',
'| |  ',
'| |  ',
'|__| ',
#backslash 
'__     ',
'\ \    ',
' \ \   ',
'  \ \  ',
'   \_\ ',
'       ',
#]
' __  ',
'|_ | ',
' | | ',
' | | ',
' | | ',
'|__| ',
#^
' /\  ',
'|/\| ',
'     ',
'     ',
'     ',
'     ',
#_
'        ',
'        ',
'        ',
'        ',
' _____  ',
'|_____| ',

#--- --- 0x60..0x67
#`
' _  ',
'( ) ',
' \| ',
'    ',
'    ',
'    ',
#a
'        ',
'  __ _  ',
' / _` | ',
'| (_| | ',
' \__,_| ',
'        ',
#b
' _      ',
'| |__   ',
'| \'_ \  ',
'| |_) | ',
'|_.__/  ',
'        ',
#c
'       ',
'  ___  ',
' / __| ',
'| (__  ',
' \___| ',
'       ',
#d
'     _  ',
'  __| | ',
' / _` | ',
'| (_| | ',
' \__,_| ',
'        ',
#e
'       ',
'  ___  ',
' / _ \ ',
'|  __/ ',
' \___| ',
'       ',
#f
'  __  ',
' / _| ',
'| |_  ',
'|  _| ',
'|_|   ',
'      ',
#g
'        ',
'  __ _  ',
' / _` | ',
'| (_| | ',
' \__, | ',
' |___/  ',
#--- --- 0x68..0x6f
#h
' _      ',
'| |__   ',
'| \'_ \  ',
'| | | | ',
'|_| |_| ',
'        ',
#i
' _  ',
'(_) ',
'| | ',
'| | ',
'|_| ',
'    ',
#j
'   _  ',
'  (_) ',
'  | | ',
'  | | ',
' _/ | ',
'|__/  ',
#k
' _     ',
'| | __ ',
'| |/ / ',
'|   <  ',
'|_|\_\ ',
'       ',
#l
' _  ',
'| | ',
'| | ',
'| | ',
'|_| ',
'    ',
#m
'            ',
' _ __ ___   ',
'| \'_ ` _ \  ',
'| | | | | | ',
'|_| |_| |_| ',
'            ',
#n
'        ',
' _ __   ',
'| \'_ \  ',
'| | | | ',
'|_| |_| ',
'        ',
#o
'        ',
'  ___   ',
' / _ \  ',
'| (_) | ',
' \___/  ',
'        ',
#--- --- 0x70..0x77
#p
'        ',
' _ __   ',
'| \'_ \  ',
'| |_) | ',
'| .__/  ',
'|_|     ',
#q
'        ',
'  __ _  ',
' / _` | ',
'| (_| | ',
' \__, | ',
'    |_| ',
#r
'       ',
' _ __  ',
'| \'__| ',
'| |    ',
'|_|    ',
'       ',
#s
'      ',
' ___  ',
'/ __| ',
'\__ \ ',
'|___/ ',
'      ',
#t
' _    ',
'| |_  ',
'| __| ',
'| |_  ',
' \__| ',
'      ',
#u
'        ',
' _   _  ',
'| | | | ',
'| |_| | ',
' \__,_| ',
'        ',
#v
'        ',
'__   __ ',
'\ \ / / ',
' \ V /  ',
'  \_/   ',
'        ',
#w
'           ',
'__      __ ',
'\ \ /\ / / ',
' \ V  V /  ',
'  \_/\_/   ',
'           ',
#--- --- 0x78..0x7f
#x
'       ',
'__  __ ',
'\ \/ / ',
' >  <  ',
'/_/\_\ ',
'       ',
#y
'        ',
' _   _  ',
'| | | | ',
'| |_| | ',
' \__, | ',
' |___/  ',
#z
'      ',
' ____ ',
'|_  / ',
' / /  ',
'/___| ',
'      ',
#{
'   __ ',
'  / / ',
' | |  ',
'< <   ',
' | |  ',
'  \_\ ',
#|     
' _  ',
'| | ',
'| | ',
'| | ',
'| | ',
'|_| ',
#}
'__    ',
'\ \   ',
' | |  ',
'  > > ',
' | |  ',
'/_/   ',
#~
' /\/| ',
'|/\/  ',
'      ',
'      ',
'      ',
'      ',
#DEL
' ____  _____ _      ',
'|  _ \| ____| |     ',
'| | | |  _| | |     ',
'| |_| | |___| |___  ',
'|____/|_____|_____| ',
'                    ',
#--- --- --- --- --- --- --- Russian(CP1251)
#--- --- 0x80..0x87
#?
' ______    ',
'|__  __|_  ',
'   |  _  \ ',
'   | |_) | ',
'   |____/  ',
'           ',
#?
' _/"/_  ',
'|  ___| ',
'| |     ',
'| |     ',
'|_|     ',
'        ',
#?
'    ',
'    ',
'    ',
' _  ',
'( ) ',
'|/  ',
#?
'        ',
' _/"/_  ',
'|  ___| ',
'| |     ',
'|_|     ',
'        ',
#?
'      ',
'      ',
'      ',
' _ _  ',
'( | ) ',
'|/|/  ',
#?
'        ',
'        ',
'        ',
' _ _ _  ',
'(_|_|_) ',
'        ',
#?
'   _    ',
' _| |_  ',
'|_   _| ',
'  | |   ',
'  | |   ',
'  |_|   ',
#?
'   _    ',
' _| |_  ',
'|_   _| ',
' _| |_  ',
'|_   _| ',
'  |_|   ',
#--- --- 0x88..0x8f
#?
'   _____  ',
' _/ ____\ ',
'(_  __)   ',
'(_  __)__ ',
'  \_____/ ',
'          ',
#?
' _  __    ',
'(_)/ /    ',
'  / /     ',
' / /_  _  ',
'/_/(_)(_) ',
'          ',
#?
'   ___      ',
'  /   |__   ',
'  | |  _ \  ',
' _| | |_) | ',
'(__/|____/  ',
'            ',
#<
'    ',
' __ ',
'/ / ',
'\_\ ',
'    ',
'    ',
#?
' _   _      ',
'| |_| |__   ',
'|  _   _ \  ',
'| | | |_) | ',
'|_| |____/  ',
'            ',
#?
' _(")_ ',
'| |/ / ',
'| \' /  ',
'| . \  ',
'|_|\_\ ',
'       ',
#?
' _____    ',
'|_   _|   ',
'  | \'_ \  ',
'  | | | | ',
'  |_| |_| ',
'          ',
#?
' _    _  ',
'| |  | | ',
'| |  | | ',
'| |__| | ',
'|__  __| ',
'   \/    ',
#--- --- 0x90..0x97
#?
' _____    ',
'|_   _|   ',
'  | \'_ \  ',
'  | | | | ',
'  |_| | | ',
'     /_/  ',
#?
' /| ',
'(_) ',
'    ',
'    ',
'    ',
'    ',
#?
' _  ',
'( ) ',
'|/  ',
'    ',
'    ',
'    ',
#?
' /|/| ',
'(_|_) ',
'      ',
'      ',
'      ',
'      ',
#?
' _ _  ',
'( | ) ',
'|/|/  ',
'      ',
'      ',
'      ',
#?
'     ',
' __  ',
'/  \ ',
'\__/ ',
'     ',
'     ',
#?
'         ',
'         ',
' ______  ',
'|______| ',
'         ',
'         ',
#?
'          ',
'          ',
' _______  ',
'|_______| ',
'          ',
'          ',
#--- --- 0x98..0x9f
#No symbol
'  ',
'  ',
'  ',
'  ',
'  ',
'  ',
#?
' _____ _    _  ',
'|_   _|  \/  | ',
'  | | | |\/| | ',
'  |_| |_|  |_| ',
'               ',
'               ',
#?
'           ',
'   ___     ',
'  /   |__  ',
' _| |  _ \ ',
'(__/|____/ ',
'           ',
#?
'    ',
'__  ',
'\ \ ',
'/_/ ',
'    ',
'    ',
#?
'           ',
' _   _     ',
'| |_| |__  ',
'|  _   _ \ ',
'|_| |____/ ',
'           ',
#?
'   _   ',
' _( )_ ',
'| |/ / ',
'|   <  ',
'|_|\_\ ',
'       ',
#?
'   _      ',
' _| |_    ',
'|_  __|_  ',
'  | \'_  \ ',
'  |_| |_| ',
'          ',
#?
'         ',
' _    _  ',
'| |  | | ',
'| |__| | ',
'|__  __| ',
'   \/    ',
#--- --- 0xA0..0xA7
#No symbol(NBSP)
'  ',
'  ',
'  ',
'  ',
'  ',
'  ',
#?
'__(")__ ',
'\ \ / / ',
' \ V /  ',
' _) /   ',
'|__/    ',
'        ',
#?
'        ',
' __()__ ',
' \ \/ / ',
' _\  /  ',
'|___/   ',
'        ',
#?
'  ____  ',
' |__  | ',
' _  | | ',
'| |_| | ',
' \___/  ',
'        ',
#?
'__   __ ',
'\ \_/ / ',
'/ ___ \ ',
'\  _  / ',
'/_/ \_\ ',
'        ',
#?
' ____|\  ',
'|  ____) ',
'| |      ',
'| |      ',
'|_|      ',
'         ',
#?
' _  ',
'| | ',
'|_| ',
' _  ',
'| | ',
'|_| ',
#?
' ____  ',
'(  __) ',
'/ __ \ ',
'\__  / ',
'(____) ',
'       ',
#--- --- 0xA8..0xAF
#E
'(")_(") ',
'| ____| ',
'|  _|   ',
'| |___  ',
'|_____| ',
'        ',
#?
'  _____   ',
' / ___ \  ',
'| / __) | ',
'| \___) | ',
' \_____/  ',
'          ',
#?
'  _____  ',
' / ____\ ',
'|  __|   ',
'| |_____ ',
' \_____/ ',
'         ',
#?
'      ',
' ____ ',
'/ / / ',
'\_\_\ ',
'      ',
'      ',
#?
'         ',
' ______  ',
'|____  | ',
'     |_| ',
'         ',
'         ',
#No symbol (SHY)
'  ',
'  ',
'  ',
'  ',
'  ',
'  ',
#?
'   ________    ',
'  / ______ \   ',
' / /| _  \\\\ \  ',
'( ( |    / ) ) ',
' \ \|_|\_\/ /  ',
'  \________/   ',
#?
' ("|")  ',
' |_ _|  ',
'  | |   ',
'  | |   ',
' |___|  ',
'        ',
#--- --- 0xB0..0xB7
#?
'  ____  ',
' / __ \ ',
' \____/ ',
'        ',
'        ',
'        ',
#?
'    _     ',
' __| |__  ',
'|__   __| ',
' __|_|__  ',
'|_______| ',
'          ',
#?
' ___  ',
'|_ _| ',
' | |  ',
' | |  ',
'|___| ',
'      ',
#?
' _  ',
'(_) ',
'| | ',
'| | ',
'|_| ',
'    ',
#?
'       ',
' __|\  ',
'|  __) ',
'| |    ',
'|_|    ',
'       ',
#?
'          ',
' __   __  ',
'|  | |  | ',
'|   V   | ',
'| |\_/|_| ',
'|_|       ',
#?
' _________  ',
'/    _   _) ',
'\_  | | |   ',
'  | | | |   ',
'  |_| |_|   ',
'            ',
#?
'    ',
' _  ',
'(_) ',
'    ',
'    ',
'    ',
#--- --- 0xB8..0xBF
#?
'  _ _  ',
' (_|_) ',
' / _ \ ',
'|  __/ ',
' \___| ',
'       ',
#?
'  _    ___   ',
' | \  / __)  ',
' |  \| / _ \ ',
' | |\  \___/ ',
'(_/  \_|___| ',
'             ',
#?
'       ',
'  ___  ',
' / __\ ',
'|  __) ',
' \___/ ',
'       ',
#?
'      ',
'____  ',
'\ \ \ ',
'/_/_/ ',
'      ',
'      ',
#?
'   _  ',
'  (_) ',
'  | | ',
'  | | ',
' _/ | ',
'|__/  ',
#?
' ____   ',
'/ ___|  ',
'\___ \  ',
' ___) | ',
'|____/  ',
'        ',
#?
'      ',
' ___  ',
'/ __| ',
'\__ \ ',
'|___/ ',
'      ',
#i
' _ _  ',
'(_|_) ',
' | |  ',
' | |  ',
' |_|  ',
'      ',
#--- --- 0xC0..0xC7 (RUS)
#?
'    _     ',
'   / \    ',
'  / _ \   ',
' / ___ \  ',
'/_/   \_\ ',
'          ',
#?
' _____  ',
'| ____| ',
'|  _ \  ',
'| |_) | ',
'|____/  ',
'        ',
#?
' ____   ',
'| __ \  ',
'|  _ <  ',
'| |_) | ',
'|____/  ',
'        ',
#?
' _____  ',
'|  ___| ',
'| |     ',
'| |     ',
'|_|     ',
'        ',
#?
'     ___    ',
'    /   |   ',
'   / /| |   ',
' _/ /_| |_  ',
'|  _____  | ',
'|_|     |_| ',
#?
' _____  ',
'| ____| ',
'|  _|   ',
'| |___  ',
'|_____| ',
'        ',
#?
'__  _  __ ',
'\ \| |/ / ',
' \ ` ` /  ',
' / . . \  ',
'/_/|_|\_\ ',
'          ',
#?
' _____  ',
'|___  ) ',
'  |_ <  ',
' ___) | ',
'|____/  ',
'        ',
#--- --- 0xC8..0xCF (RUS)
#?
' _   _  ',
'| | / | ',
'| |/  | ',
'|  /| | ',
'|_/ |_| ',
'        ',
#?
' _(")_  ',
'| | / | ',
'| |/  | ',
'|  /| | ',
'|_/ |_| ',
'        ',
#?
' _  __ ',
'| |/ / ',
'| \' /  ',
'| . \  ',
'|_|\_\ ',
'       ',
#?
'    ___  ',
'   /   | ',
'  / /| | ',
' / / | | ',
'/_/  |_| ',
'         ',
#?
' __  __  ',
'|  \/  | ',
'| |\/| | ',
'| |  | | ',
'|_|  |_| ',
'         ',
#H
' _   _  ',
'| | | | ',
'| |_| | ',
'|  _  | ',
'|_| |_| ',
'        ',
#?
'  ___   ',
' / _ \  ',
'| | | | ',
'| |_| | ',
' \___/  ',
'        ',
#?
' ______  ',
'|  __  | ',
'| |  | | ',
'| |  | | ',
'|_|  |_| ',
'         ',
#--- --- 0xD0..0xD7
#?
' ____   ',
'|  _ \  ',
'| |_) | ',
'|  __/  ',
'|_|     ',
'        ',
#?
'  ____  ',
' / ___| ',
'| |     ',
'| |___  ',
' \____| ',
'        ',
#?
' _____  ',
'|_   _| ',
'  | |   ',
'  | |   ',
'  |_|   ',
'        ',
#?
'__    __ ',
'\ \  / / ',
' \ \/ /  ',
' _)  /   ',
'|___/    ',
'         ',
#?
'  _______   ',
' / _   _ \  ',
'| (_| |_) | ',
' \__   __/  ',
'    |_|     ',
'            ',
#?
'__  __ ',
'\ \/ / ',
' \  /  ',
' /  \  ',
'/_/\_\ ',
'       ',
#?
' _    _    ',
'| |  | |   ',
'| |  | |   ',
'| |__| |_  ',
'|______  | ',
'       |_| ',
#?
' _    _  ',
'| |  | | ',
'| |__| | ',
'\____  | ',
'     |_| ',
'         ',
#--- --- 0xD8..0xDF
#?
' _    _    _  ',
'| |  | |  | | ',
'| |  | |  | | ',
'| |__| |__| | ',
'|___________| ',
'              ',
#?
' _    _    _    ',
'| |  | |  | |   ',
'| |  | |  | |   ',
'| |__| |__| |_  ',
'|___________  | ',
'            |_| ',
#?
' ___      ',
'|_  |__   ',
'  |  _ \  ',
'  | |_) | ',
'  |____/  ',
'          ',
#?
' _     _  ',
'| |__ | | ',
'|  _ \| | ',
'| |_) | | ',
'|____/|_| ',
'          ',
#?
' _      ',
'| |__   ',
'|  _ \  ',
'| |_) | ',
'|____/  ',
'        ',
#?
' _____   ',
'/____ \  ',
'  |__  | ',
'_____| | ',
'\_____/  ',
'         ',
#?
' _    ___   ',
'| |  / _ \  ',
'| |_| | | | ',
'|  __ |_| | ',
'|_|  \___/  ',
'            ',
#?
'  _____  ',
' / __  | ',
'| (__| | ',
' \  _  | ',
' /_/ |_| ',
'         ',
#--- --- 0xE0..0xE7
#?
'        ',
'  __ _  ',
' / _` | ',
'| (_| | ',
' \__,_| ',
'        ',
#?
'  ____  ',
' / ___) ',
'|  _ \  ',
'| |_) | ',
' \___/  ',
'        ',
#?
'        ',
' _____  ',
'|  _  \ ',
'|  _  < ',
'|_____/ ',
'        ',
#?
'       ',
' ____  ',
'|  __| ',
'| |    ',
'|_|    ',
'       ',
#?
'           ',
'    ___    ',
'   /   |   ',
' _/ /| |_  ',
'|  ____  | ',
'|_|    |_| ',
#?
'       ',
'  ___  ',
' / _ \ ',
'|  __/ ',
' \___| ',
'       ',
#?
'          ',
'__  _  __ ',
'\ \| |/ / ',
' >     <  ',
'/_/|_|\_\ ',
'          ',
#?
'        ',
' _____  ',
'|____ \ ',
' _|__ < ',
'|_____/ ',
'        ',
#--- --- 0xE8..0xEF
#?
'       ',
' _  _  ',
'| |/ | ',
'|    | ',
'|_/|_| ',
'       ',
#?
'  __   ',
' _\/_  ',
'| |/ | ',
'|    | ',
'|_/|_| ',
'       ',
#?
'       ',
' _  __ ',
'| |/ / ',
'|   <  ',
'|_|\_\ ',
'       ',
#?
'        ',
'   ___  ',
'  /   | ',
' / /| | ',
'/_/ |_| ',
'        ',
#?
'           ',
' ___  ___  ',
'|   \/   | ',
'| |\  /| | ',
'|_| \/ |_| ',
'           ',
#?
'        ',
' _   _  ',
'| |_| | ',
'|  _  | ',
'|_| |_| ',
'        ',
#?
'        ',
'  ___   ',
' / _ \  ',
'| (_) | ',
' \___/  ',
'        ',
#?
'        ',
' _____  ',
'|  _  | ',
'| | | | ',
'|_| |_| ',
'        ',
#--- --- 0xF0..0xF7
#?
'        ',
' _ __   ',
'| \'_ \  ',
'| |_) | ',
'| .__/  ',
'|_|     ',
#?
'       ',
'  ___  ',
' / __| ',
'| (__  ',
' \___| ',
'       ',
#?
'        ',
' _____  ',
'|_   _| ',
'  | |   ',
'  |_|   ',
'        ',
#?
'        ',
' __  __ ',
' \ \/ / ',
'  \  /  ',
'  /_/   ',
'        ',
#?
'            ',
'  __ _ __   ',
' / _\' \'_ \  ',
'| (_| |_) | ',
' \__. .__/  ',
'    |_|     ',
#?
'       ',
'__  __ ',
'\ \/ / ',
' >  <  ',
'/_/\_\ ',
'       ',
#?
'          ',
' _   _    ',
'| | | |   ',
'| |_| |_  ',
'|_____  | ',
'      |_| ',
#?
'        ',
' _   _  ',
'| |_| | ',
'\___  | ',
'    |_| ',
'        ',
#--- --- 0xF8..0xFF
#?
'            ',
' _   _   _  ',
'| | | | | | ',
'| |_| |_| | ',
'|_________| ',
'            ',
#?
'              ',
' _   _   _    ',
'| | | | | |   ',
'| |_| |_| |_  ',
'|_________  | ',
'          |_| ',
#?
'         ',
' ___     ',
'|_  |__  ',
'  |  _ \ ',
'  |____/ ',
'         ',
#?
'         ',
' _    _  ',
'| |__| | ',
'|  _ \ | ',
'|____/_| ',
'         ',
#?
'       ',
' _     ',
'| |__  ',
'|  _ \ ',
'|____/ ',
'       ',
#?
'        ',
'  ___   ',
' /__ \  ',
' (__  | ',
' \___/  ',
'        ',
#?
'          ',
' _  ___   ',
'| |/ _ \  ',
'|   (_) | ',
'|_|\___/  ',
'          ',
#?
'       ',
' ____  ',
'/ _  | ',
'\    | ',
'/_/|_| ',
'       ',

# --- CP1251 table
#80 	?	? 	? 	? 	? 	? 	? 	?
#88	? 	? 	? 	? 	? 	? 	? 	?
#90 	? 	? 	? 	? 	? 	? 	? 	?
#98 		? 	? 	? 	? 	? 	? 	?
#a0 	NBSP 	? 	? 	? 	? 	? 	? 	?
#a8 	? 	? 	? 	? 	? 	SHY 	? 	?
#b0 	? 	? 	? 	? 	? 	? 	? 	? 
#b8	? 	? 	? 	? 	? 	? 	? 	?
#c0 	? 	? 	? 	? 	? 	? 	? 	?
#c8 	? 	? 	? 	? 	? 	? 	? 	?
#d0 	? 	? 	? 	? 	? 	? 	? 	?
#d8 	? 	? 	? 	? 	? 	? 	? 	?
#e0 	? 	? 	? 	? 	? 	? 	? 	?
#e8 	? 	? 	? 	? 	? 	? 	? 	?
#f0 	? 	? 	? 	? 	? 	? 	? 	?
#f8 	? 	? 	? 	? 	? 	? 	? 	?

#---------------------
'END OF TABLE'
);

my @SymLen;

sub font_init{
  for(my $ii=0x20;$ii<=0xff;$ii++){
    my $i = $ii-0x20;
    for(my $j=0;$j<$FontHeight;$j++){
      my $fstr = $Font[$i*$FontHeight+$j];
      my $tt=length($fstr)-1;
      if($j==0){
        $SymLen[$i]=$tt;
        #print "{$tt}";
      }elsif($SymLen[$i]!=$tt){
        print "ERROR in font <$ii>!!!\n";
      }
    }
  }
}


sub addsymbol{
  my $old = $_[0];
  my $new = $_[1];
  my $rez = $old;
  my $tabsize=8;
  my @table=(
    '0' ,'|' ,'\\','/' ,'(' ,')' ,'>' ,'<' ,'_' ,
    '|' ,'|' ,'\\','/' ,'(' ,')' ,'>' ,'<' ,'|' ,
    '\\','\\','\\','|' ,'(' ,')' ,'>' ,'<' ,'\\',
    '/' ,'/' ,'|' ,'/' ,'(' ,')' ,'>' ,'<' ,'/' ,
    '(' ,'(' ,'(' ,'(' ,'(' ,'|' ,'|' ,'(' ,'(' ,
    ')' ,')' ,')' ,')' ,'|' ,')' ,')' ,'|' ,')' ,
    '>' ,'>' ,'>' ,'>' ,'|' ,')' ,'>' ,'X' ,'>' ,
    '<' ,'<' ,'<' ,'<' ,'(' ,'|' ,'X' ,'<' ,'<' ,
    '_' ,'|' ,'\\','/' ,'(' ,')' ,'>' ,'<' ,'_' ,
    '0'
  );
  if(ord($old)==ord($new)){
    $rez=$old;
  }else{
    my $x=0;
    for(my $i=1;$i<=$tabsize;$i++){
      $x=$i if(ord($old)==ord($table[$i]));
    }
    my $y=0;
    for(my $i=1;$i<=$tabsize;$i++){
      $y=$i if(ord($new)==ord($table[$i*($tabsize+1)]));
    }
    #print "<$x|$y>";
    $rez=(($x==0)||($y==0))?$old:$table[$y*($tabsize+1)+$x];
  }
  return $rez;
}

my $outlen=0;
my @outbuffer;
sub test_shift{
  my $start = $_[0];
  my $num = $_[1];
  my $rez = 1;
    for(my $i=0;$i<$SymLen[$num];$i++){
      for(my $j=0;$j<$FontHeight;$j++){
        my $astr = $Font[$num*$FontHeight+$j];
        my $asym = ord(substr($astr,$i,1));
        my $oldsym = ord($outbuffer[($start+$i)*$FontHeight+$j]);
        #print "<$oldsym^$asym>";
        if(($oldsym!=0x20)&&($asym!=0x20)){
          #print "^^";
          if($rez==1){$rez=2;}
        }
      }
    }
  return $rez;
}

my $total_space_skip=0;
sub one_symbol{
  my $num = $_[0];
  my $space = (($num==0x20)||($num==0x98)||($num==0xA0)||($num==0xAD))?1:0;
  if($num>=0x20){
    $num-=0x20;
    #make space
    if($space){
      $total_space_skip+=$SpaceSize;
    }else{
      #make space
      my $slen = $SymLen[$num];
      for(my $i=0;$i<($slen+$total_space_skip)*$FontHeight;$i++){
        $outbuffer[$outlen*$FontHeight+$i]=' ';
      }

      #find real shift
      #my $maxsh = ($slen<$outlen)?$slen:$outlen;
      my $real_shift=0;
      for(my $sh=0;$sh<$outlen;$sh++){
        my $rv=test_shift($outlen-$sh,$num);
        if($rv<=$Mode){
          $real_shift=$sh;
          last if($rv==2);
        }else{
          last;
        }
      }
      #print "RS=$num-$real_shift!";
      $outlen+=$total_space_skip;#Add spaces
      $total_space_skip=0;#Reset spaces
      $outlen-=$real_shift;#Correct start
      for(my $i=0;$i<$slen;$i++){
        for(my $j=0;$j<$FontHeight;$j++){
          my $astr = $Font[$num*$FontHeight+$j];
          my $asym = substr($astr,$i,1);
          #print"<$asym>";
          if(ord($asym)!=0x20){
            my $old_sym=$outbuffer[$outlen*$FontHeight+$j];
            if(ord($old_sym)!=0x20){
              $asym=addsymbol($old_sym,$asym);
            }
            $outbuffer[$outlen*$FontHeight+$j]=$asym;
          }
        }
        $outlen++;
      }
    }
    #print '<'.$num.'>';
  }
}

sub FGL_print{
  my $str = $_[0];
  my $len = length($str);#print $len."\n";
  for(my $i=0;$i<$len;$i++){
    my $sym = substr($str,$i,1);
    my $num  = ord($sym);
    one_symbol($num)
  }
  #print"REZ:\n";
  for(my $j=0;$j<$FontHeight;$j++){
    for(my $i=0;$i<$outlen;$i++){
      my $asym = $outbuffer[$i*$FontHeight+$j];
      print $asym;#.'.';
    }
    print"\n";
  }
}

#--- --- --- --- --- ---
#print "My FIGlet\n";
font_init();
my $arg=0;
my $argn=0;
my $string='';
while ($arg = shift @ARGV){
  $string.=' ' if($argn!=0);
  $argn++;
  $string.=$arg;
  #print "<$arg>";
}
if($argn==0){
  FGL_print("myFIGlet");
  print "Usage:\n";
  print "myfiglet text to print\n";
}else{
  #print "$string\n";
  FGL_print($string);
}

#<<<End Of File>>>
