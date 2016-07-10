The Kabal Invasion - Readme

The Kabal Invasion is a web-based 4X space game. It is coded using PHP, SQL, and  Javascript.

Version 0.8 / https://github.com/thekabal/tki

Copyright © 2016 The Kabal Invasion development team, Ron Harwood, and the BNT development team

This program is free software; you can redistribute it and/or modify it under 
the terms of the GNU Affero Public License v3 (see license or http://www.gnu.org/licenses/agpl-3.0.html)

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero Public License for more details.

Requirements: 
- MySQL version 5.5.3 minimum is required (needed for utf8mb4 schemas).
- PHP's mbstring extension must be installed (used in common.php)
- PHP's pdo extension must be installed (used in create_universe, and soon the rest of the game)
- Web browser - Firefox and Chrome (v30+ for both) are best, while Safari (v6+) is also good. Internet Explorer needs to be at least (v9+).
- Apache version 2.2.22+ is supported, we have not determined a required minimum. TKI will likely run on lighttpd and nginix, but has not been tested on either.
- Development "Snapshots" are intended only for developers that are actively involved in the development process, and require additional effort to work (composer, etc)
- PHP version 7+ is required (random_int used throughout).
- IIS is NOT supported, please do not ask!

Download:
    You can get the newest version at https://github.com/thekabal/tki

Credits:
    The Kabal Invasion forked from Blacknova Traders, please visit their sourceforge page for more information about their project.

    This game concept is based on the old BBS games that went by many names
    (Tradewars, Galactic Warzone, Yankee Trader, Ultimate Universe, and
    many other names like this) but shares no code with them.  It is
    written 100% in PHP/HTML/SQL.  

Installation:
    Please see the docs/install file.

Upgrades:
    As is typical with releases, we highly recommend a fresh install. Upgrades are not supported at this time.

ChangeLog:
    Please see the docs/changes file.    

Documentation:
    See the docs/ directory.

Updates:
    Join the forums (http://kabal.tk/forums/) to stay informed about updates, patches 
    and new releases.

Enjoy,

The Kabal <thekabal@gmail.com>
