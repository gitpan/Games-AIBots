# Makefile.PL for Term::ANSIScreen module  -*- perl -*-

use ExtUtils::MakeMaker;
use 5.005;

WriteMakefile (
    NAME         => 'Games::AIBots',
    DISTNAME     => 'Games-AIBots',
    ABSTRACT     => 'An improved clone of A.I.Wars in Perl',
    AUTHOR       => 'Autrijus Tang (autrijus@autrijus.org)',
    VERSION_FROM => 'lib/Games/AIBots.pm',
    BINARY_LOCATION => 'x86/Games-AIBots.tar.gz',

    PREREQ_PM       => {
    	($^O eq 'MSWin32') ? (
        'Win32::Console'	=> '0.03',
        'Win32::Sound'		=> '0.40',
        'Win32::Process'	=> '0.01',
        ) : (
	'Term::ANSIScreen'	=> '1.2',
	),
	'Tk'			=> '800.021',
	'Term::ReadKey'		=> '2.14',
    },

    EXE_FILES    => [ <bin/*> ],
    dist         => { COMPRESS => 'gzip', SUFFIX => 'gz' }
);
