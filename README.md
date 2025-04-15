Linux Commands Cheatsheet

This is a list of basic Linux commands I've learned. Useful for beginners and for interviem prep.

##Basic File and Directory Commands

| Command | Description                 |
					
|---------|-------------		|

| ls      | List directory contents	|

| cd      | Change directory		|

| pwd     | Print current directory path|

| mkdir   | Make new directory		|

| rmdir   | Remove empty directory	|

| touch   | Create a new empty file	|

| cp      | Copy file/folders		|

| mv      | Move or rename file/folders	|

| rm      | Remove files/folders	|

| type	  | displays type of command shell will execute |

---

##File Permissions and Ownership

| Command    | Description		|

|------------|--------------------------|

| chmod      | Change file permissions	|

| chown	     | Change file owner	|

| ls -l      | List with permissions	|

| unmask     | Show default permissions	|

---

##User and Group Management

| Command    | Description		|

|------------|--------------------------|

| whoami     | Show current user        |

| adduser    | Add a new user		|

| userdel    | Delete a user            |

| usermod    | Modify user info		|

| groupadd   | Create a new group	|

| groups     | Show user's group        |

| id         | Show user and group Ids	|

---

##System Info and Monitoring

| Command    | Description		|

|------------|--------------------------|

| ps	     | Show running processes	|

| top	     | Real time system monitor |

| htop       | Better system monitor	|

| df -h      | Show disk space          |

| du -sh     | Show folder size		|

| free -h    | Show memory usage	|

| uptime     | How long system has been running |

| uname -a   | System info		|

| which      | determine exact location of given executable|

---

##Package Management (APT)

| Command        | Description		|

|----------------|----------------------|

| sudo apt update| Update package list	|

| sudo apt upgrade| Upgrade all packages|

|sudo apt install pkg| Install a package|

|sudo apt remove pkg| Remove a packgae  |

| apt search pkg | Search for a package |

---

##Linking, Redirection, Piping 

| Symbol / Command | Description	     |

|------------------|-------------------------|

| >		   | Redirect output(rewrite)|

| >>		   | Redirect output(append) |

| <                | Redirect input from file|

| '|'              | Pipe output to another command|

| ln -s		   | Create symbolic link    |

---

##File Viewing and Editing

| Command	| Description		     |

|---------------|----------------------------|

| cat		| Show file content	     |

| less		| Scroll through file	     |

| head		| Show first lines of a file |

| tail		| Show last lines of a file  |

| nano		| Basic terminal text editor |

| vim		| Advanced terminal editor   |

---

##Navigation and Search

| Command	| Description		     |

|---------------|----------------------------|

| find		| Find files/folders	     |

| grep		| Search text in files	     |

| history	| Show command history	     |

| clear		| Clear terminal Screen	     |

| apropos	| Display Appropriate Commands|

|whatis		| Display One-line Manual Page Descriptions|

| info		| Display a Program's Info Entry|

---

##Miscellaneous

| Command	| Description		     |

|---------------|----------------------------|

| man <cmd>	| Show manual for command    |

| alias		| Set short names for command|

| echo		| Print a line of text	     |

| date		| Display current date/time  |

| reboot	| Restart the machine	     |

| shutdown now  | Shut down immediately      |

---

##Still Learning

-Shell scripting

- Crontabs and automation

- Systemd services

-Network tools

---
##Want to contribute?

Pull requests are welcome. Feel free to suggest new commands or improvements!

---

> Made on Ubuntu inside VirtualBox!
