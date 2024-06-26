#!/usr/bin/env bash

function __bli_help {    
__bliman_echo_no_colour '  '
__bliman_echo_white 'NAME'
__bliman_echo_no_colour '   bli - The cli for BeSLab                                                                            '
__bliman_echo_no_colour '  '
__bliman_echo_white 'SYNOPSIS  '
__bliman_echo_no_colour '   bli [command] [options]                                                                             '
__bliman_echo_no_colour '  '
__bliman_echo_white 'DESCRIPTION'
__bliman_echo_no_colour '   BLIman (pronounced as ‘B-L-I-man’) is a command-line utility designed for creating and provisioning ' 
__bliman_echo_no_colour '   the BeSLab in Host/Bare/lite mode.  It helps security professionals to reduce the turn around time  '
__bliman_echo_no_colour '   for assessment of Open Source projects, AI Models, Model Datasets leaving them focus on the assess- '
__bliman_echo_no_colour '   ment task rather than setting up environment for it. BLIman also provides seamless support for the  '
__bliman_echo_no_colour '   installation of tools and utilities needed for the security professional for assessing different OSS' 
__bliman_echo_no_colour '   projects, AI models, Training datasets, documents and attest and publish the assement reports.      '
__bliman_echo_no_colour '  '
__bliman_echo_white ' COMMANDS '
__bliman_echo_no_colour '   help: Display the help command                                                                      '
__bliman_echo_no_colour '   list: List available modes for the Lab installation.                                                '
__bliman_echo_no_colour '   initmode <modename>: Initializes the lab installation mode.                                                    '
__bliman_echo_cyan      '     Available modes are:                                                                              '
    __bliman_echo_cyan  '       host - This mode installs lab on a virtual machine.                                             '
    __bliman_echo_cyan  '       bare - In this mode lab is installed on local or remote machine using ansible roles.            '
    __bliman_echo_cyan  '       lite - Lite mode is the lightweight mode and installs the lab using only shell scripts.         '
__bliman_echo_no_colour '   load: Read and load th Genesis file.                                                                '
__bliman_echo_no_colour '   launchlab: install the lab components.                                                              '
__bliman_echo_no_colour '   status: Display the list of installed Lab, its mode and tools with the versions installed           '
__bliman_echo_no_colour '  '
__bliman_echo_white ' OPTIONS '
__bliman_echo_no_colour '   --force: To update forcefully                                                                       '
__bliman_echo_no_colour '   --version: BLIman version to be installed.                                                          '
__bliman_echo_no_colour '  '
__bliman_echo_white 'EXAMPLE'
__bliman_echo_no_colour '  $ bli help                                                                                           '
__bliman_echo_no_colour '  '
__bliman_echo_white 'For details about specific command execute                                                                 '
__bliman_echo_yellow    '   $ bli help <command name>                                                                           '
__bliman_echo_no_colour '   Choose command name from list of COMMANDS above'
__bliman_echo_no_colour '  '
}

function __bli_help_load {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   load - To load the environment variables defined in Genesis file for BeSLab.                    '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '   $ bli load                                                                                         '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   The bli load command fascilitate the BeSLab admin to prepare environment for the BeSlab to be   '
    __bliman_echo_no_colour '   installed in a mode specified. Every lab mode does need certain tools and configuration to be   '
    __bliman_echo_no_colour '   set to get the BeSLab components installed. initmode command helps to get the required          '
    __bliman_echo_no_colour '   dependencies for BeSLab in a particular mode gets installed on the machine.                     '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'EXAMPLE'
    __bliman_echo_no_colour '  $ bli load                                                                                       '
    __bliman_echo_no_colour '  '
}

function __bli_help_initmode {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   initmode - To initialize the lab installation mode (host | bare | lite)                         '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '   $ bli initmode <modename>                                                                          '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   The bli initmode command fascilitate the BeSLab admin to prepare environment for the BeSlab to be'
    __bliman_echo_no_colour '   installed in a mode specified. Every lab mode does need certain tools and configuration to be set'
    __bliman_echo_no_colour '   to get the BeSLab components installed. initmode command helps to get the command helps to get   '
    __bliman_echo_no_colour '   required dependencies for BeSLab in a particular mode gets installed on the machine.             '
    __bliman_echo_cyan      '   Available modes are:                                                                             '
    __bliman_echo_cyan      '      host - This mode installs lab on a virtual machine.                                           '
    __bliman_echo_cyan      '      bare - In this mode lab is installed on local or remote machine using ansible roles.          '
    __bliman_echo_cyan      '      lite - Lite mode is the lightweight mode and installs the lab using only shell scripts.       '
    __bliman_echo_white 'EXAMPLE'
    __bliman_echo_no_colour '  $ bli initmode lite                                                                               '
    __bliman_echo_no_colour '  $ bli initmode bare                                                                               '
    __bliman_echo_no_colour '  $ bli initmode host                                                                               '
    __bliman_echo_no_colour '  '
}

function __bli_help_launchlab {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   launchlab - To install the lab in the mode specified by initmode command.                        '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '  $ bes launchlab                                                                                      '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   Install all the lab components and configure them as specified in Genesis file.                  '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'EXAMPLE'
    __bliman_echo_no_colour '  $ bli launchlab                                                                                   '
    __bliman_echo_no_colour '  '
}

function __bli_help_list {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   list - To list the available modes for beslab to get installed.                                  '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  ' 
    __bliman_echo_yellow '      $ bli list                                                                                       '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   It provides users with a comprehensive overview of all the available beslab modes, playbooks and '
    __bliman_echo_no_colour '   roles for the installation.                                                                      '    
    __bliman_echo_no_colour '  '
}

function __bli_help_status {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   status - List of installed lab components and tools.                                             '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '    $ bli status                                                                                       '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   Displays the list of installed lab components and tools                                          '   
    __bliman_echo_no_colour '  '
}


function __bli_help_help {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   help - Displays the BLIman help command.                                                         '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '      $ bli help '
    __bliman_echo_no_colour 'Display help for specific command -                                                                 '
    __bliman_echo_yellow '      $ bli help <command name>                                                                        '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'DESCRIPTION'
    __bliman_echo_no_colour '   It displays the description of BLIman, details and list of BLIman commands.                      '  
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'EXAMPLE'
    __bliman_echo_no_colour '  $ bli help install                                                                                ' 
    __bliman_echo_no_colour '  $ bli help list                                                                                   '
    __bliman_echo_no_colour '  '
}

function __bli_help_version {
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'NAME'
    __bliman_echo_no_colour '   version - Displays the version of BLIman utility.                                               '
    __bliman_echo_no_colour '  '
    __bliman_echo_white 'SYNOPSIS  '
    __bliman_echo_yellow '    $ bes --version                                                                                   '  
    __bliman_echo_no_colour '  '
}

