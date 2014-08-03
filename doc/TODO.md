TODO
====

This is the new TODO list. See the bottom of this document for the
old TODO.


Breakout and dependencies
-------------------------

* move mud_parser into its own repo/project
  * add as a dependency
* add erlang color as a dep:
  * https://github.com/julianduque/erlang-color
  * replace custom color macros
* Look at using a plugin system
  * Heinz has written one here: https://github.com/Licenser/eplugin
    * this uses different mechanisms than the one that lfetool defines
  * port to LFE as lplug?
    * provide the option of either using ETS tables like eplugin, or
    * use behaviors and ``beam_lib`` calls
* Move lib/erlymud into top-level dir
* Remote shell generalization
  * Move telnet shell into own project
  * is there another telnet shell we could use a dependency?
  * add support for an SSH MUD server via ssh_sshd?
    * what would it take to modify ssh_sshd?



Game Data
---------

* Game data is currently written to files
* Migrate game data to ETS table(s), or better yet, Mnesia


Permissions
-----------

For a massive MUD, there will likely need to be a greater number of
permissions. Possible permission levels:

* complete world control:
  * creating rooms/tunnels/open spaces/etc,
  * creating creatures
  * name: Deva? Valar? Aesir?
  * command prefix: d@- ?
* world-modification and defying laws of physics:
  * creating things, teleporting people/things, changing rooms/etc.
  * name: wizard
  * command prefix: w@- ?
* control over worlds' commodities, goods, money, markets:
  * name: Asura?
  * command prefix: a@- ?
* NPC
* Player


Command Separation
------------------

* split up wizard commands and regular commands
* add commands for setting up finance, markets, trade, auctions, etc.

Support TinyMUD Commands
------------------------
*

Migration to LFE
----------------

* include LFE as a dep
* all new functionality, write in LFE
  * port newly-added em_util to lmud-util
* rename to lmud or λMUD
* continue to use em_* Erlang modules (as legacy)
  * slowly port these to LFE, as time and interest allows
* use this ASCII:
   ```
          ___       ___           ___           ___
         /\__\     /\__\         /\__\         /\  \
        /:/  /    /::|  |       /:/  /        /::\  \
       /:/  /    /:|:|  |      /:/  /        /:/\:\  \
      /:/  /    /:/|:|__|__   /:/  /  ___   /:/  \:\__\
     /:/__/    /:/ |::::\__\ /:/__/  /\__\ /:/__/ \:|__|
     \:\  \    \/__/~~/:/  / \:\  \ /:/  / \:\  \ /:/  /
      \:\  \         /:/  /   \:\  /:/  /   \:\  /:/  /
       \:\  \       /:/  /     \:\/:/  /     \:\/:/  /
        \:\__\     /:/  /       \::/  /       \::/__/
         \/__/     \/__/         \/__/         ~~


        __     M"""""`'"""`YM M""MMMMM""M M""""""'YMM
        \ \    M  mm.  mm.  M M  MMMMM  M M  mmmm. `M
         \ \   M  MMM  MMM  M M  MMMMM  M M  MMMMM  M
          > \  M  MMM  MMM  M M  MMMMM  M M  MMMMM  M
         / ^ \ M  MMM  MMM  M M  `MMM'  M M  MMMM' .M
        /_/ \_\M  MMM  MMM  M Mb       dM M       .MM
               MMMMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM



        __     8""8""8 8   8 8""""8
        \ \    8  8  8 8   8 8    8
         \ \   8e 8  8 8e  8 8e   8
          > \  88 8  8 88  8 88   8
         / ^ \ 88 8  8 88  8 88   8
        /_/ \_\88 8  8 88ee8 88eee8

                              ....
                            .'   ,:
                          .'      \.___..
                        .'      .-'   _.'
                        '.\  \/...-''`\
                          :.'   /   \  :
                           :    () () /
                           (_ .  '--' ':
                             / |_'-- .'
                             \   \  .'_\
                            .|__  \/_/:
                           /          :\.
                          .' -./      .'{\|))
        __       .        :    ...    ::::::::::-.
        \ \      ;;,.    ;;;   ;;     ;;; ;;,   `';,
         \ \     [[[[, ,[[[[, [['     [[[ `[[     [[
          > \    $$$$$$$$"$$$ $$      $$$  $$,    $$
         / ^ \ o_888 Y88" 888o88    .d888  888_,o8P'
        /_/ \_\"MMMM  M'  "MMM "YmmMMMM""  MMMMP"`

                              ....
                            .'   ,:
                          .'      \.___..
                        .'      .-'   _.'
                        '.\  \/...-''`\
                          :.'   /   \  :
                           :    () () /
                           (_ .  '--' ':
                             / |_'-- .'
                             \   \  .'_\
                            .|__  \/_/:
                           /          :\.
                          .' -./      .'{\|))
        __     M"""""`'"""`YM M""MMMMM""M M""""""'YMM
        \ \    M  mm.  mm.  M M  MMMMM  M M  mmmm. `M
         \ \   M  MMM  MMM  M M  MMMMM  M M  MMMMM  M
          > \  M  MMM  MMM  M M  MMMMM  M M  MMMMM  M
         / ^ \ M  MMM  MMM  M M  `MMM'  M M  MMMM' .M
        /_/ \_\M  MMM  MMM  M Mb       dM M       .MM
               MMMMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM


   ```

Mapping Areas
-------------

TBD


Creating Buildings
------------------

TBD


World Items
-----------

TBD


In-Game Trade
-------------

TBD




Old TODO
========


0.3.4
-----
* Add typespecs, documentation for (at least) API functions
  -status: continue with em_room
* Write some tests?


0.3.5
-----
* Add item building commands
  - oedit: Edit / Create Objects
* Fix so that failure to load start room puts you in safe room
* Add 'goto' command for admins, to move to other rooms
* Add 'transfer' command for admins, to move another player
* Extend support for navigation and communication
  - n/e/s/w for movement
  - '/" for say, : for emote
  - nod/smile/grin/shrug/..
* Idle timer in 'who' list


Future
------
* Improve password hashing security
  - at least use password + secret
  - or look at implementing HMAC?
* Test fix for leaking processes when load_living() fails, etc
  - see em_rh_login:do_login()
* Work on cmd_* implementations to improve error handling etc
  - 'redit' / 'addexit' should check validity of direction
* Send IAC GA sequence after printing prompts?
* Put new parser in place
* Use 'areas' for organizing rooms and objects
* Add 'destroy' command for destroying objects in own inventory?
* Add 'clone' command for instantiating object templates
* Shutdown / reboot command
* Improve connection lifecycle;
  - If an em_living dies;
    * Then em_user can inform about it, then run a do_login() again to get
      a new living
    * Also the em_room must clean out the original living id
    * Not to mention em_game, same there?
  - If an em_user dies;
    * Then em_conn can create a new one and put it into login phase, just
      like when someone connects
    * The em_game should clean up also
    * The em_living should get a timer, say 60 seconds, and if not reconnected
      after that time it should stop
    * When user logs in again, reconnect it to the em_living and the game
* Put the {In, Out} "client" Pid pair into a record definition for clarity?