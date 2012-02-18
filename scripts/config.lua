Setup.Package
{
	vendor = "liflg.org",
	id = "rune",
	description = "Rune",
	version = "1.07-english",
	splash = "splash.png",
	superuser = false, 
	write_manifest = true,

	support_uninstall = true, 
	recommended_destinations =
	{
        	"/usr/local/games",
		"/opt/",
		MojoSetup.info.homedir,
	}, 

	Setup.Readme
	{
		description = "README",
		source = "README.liflg"
    	},

	Setup.Media
	{
        	id = "rune-disc",
        	description = "Rune-Loki CDROM",
        	uniquefile = "System/RuneI.so"
	},

	Setup.Media
    	{
        	id = "rune-addon-disc",
        	description = "Halls Of Valhalla-Loki CDROM",
        	uniquefile = "data-HOV.tar.gz"
    	},

  	Setup.DesktopMenuItem
    	{
        	disabled = false,
		name = "Rune",
		genericname = "Adventure",
		tooltip = "Play Rune",
		builtin_icon = false,
		icon = "icon.xpm",
		commandline = "%0/rune.sh",
		category = "Game", 
	},

	Setup.Option
	{    
		value = true,
		required = true,
		disabled = false,
		bytes = 682039212,
		description = "Required game data",
		tooltip = "Needs the LOKI-CDROM",
   
		Setup.File
		{
			wildcards = "README.liflg",
		},

		Setup.File
		{
			wildcards = "rune.sh",
			permissions = "0755"
		},  

		Setup.File
		{
			source = "media://rune-disc/data.tar.gz"
		},

		Setup.File
		{
			source = "media://rune-disc/bin/x86/",
			permissions = "0755",
		},

		Setup.File
		{
			source = "media://rune-disc/",
			wildcards = { "icon.bmp", "icon.xpm", "License.txt", "Legal.txt", "CREDITS", "README" },
		},

		Setup.File
		{
			source = "media://rune-disc/",
			wildcards = { "System/*" },
			permissions = "0755",
		},

		Setup.Option
		{
			value = true,
			required = false,
			disabled = false,
			bytes = 152300849,
			description = "Co-op Mod",
			tooltip = "Allows to play this game with a friend via LAN",
			   
			Setup.File
			{
				wildcards = "README-COOP",
			},

			Setup.File
			{
				source = "base:///data-co-op.tar.xz/"
			},
		},

		Setup.Option
		{
			value = false,
			required = false,
			disabled = false,
			bytes = 81024993,
			description = "Halls Of Valhalla addon",
			tooltip = "Install the Halls Of Valhalla",
			   
			Setup.File
			{
				source = "media://rune-addon-disc/",
				wildcards = "README-HOV"
			},

			Setup.File
			{
				source = "media://rune-addon-disc/data-HOV.tar.gz"
			},
		},
	},
}

