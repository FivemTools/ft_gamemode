# ft_gamemode

### Prerequisites

What things you need to install this script them

[mysql-async](https://github.com/brouznouf/fivem-mysql-async)

### Installing

Put the folder where you want it and add it to the server.cfg file :

Example:

```
start ft_gamemode
```

Change gametype to map ressource :

```lua
resource_type 'map' { gameTypes = { ft_gamemode = true } }
```

Import database.sql file to database


### Documentation

[Wiki](https://fivemtools.readme.io/)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Flatracer (Scorpion trainer)
* MsQuerade (Additional Server Synchronization and ACL)
