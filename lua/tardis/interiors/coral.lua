-- 2005 TARDIS improved
-- Made and coded by JEREDEK, tested by Creth

local T={}
T.Base="base"
T.Name="2005 Improved"
T.ID="coralImproved"
T.Interior={

	Model="models/doctorwho1200/coral/interior.mdl",

	Portal={
		pos=Vector(317.36,0,49.02),
		ang=Angle(0,180,0),
		width=80,
		height=100
	},

	Fallback={
		pos=Vector(296,0,10),
		ang=Angle(0,180,0),
	},

	ExitDistance=400,


	Light={
		color=Color(10,150,70),
		pos=Vector(0,0,150),
		brightness=4
	},

	Sounds={
		Teleport={
			demat="doctorwho1200/coral/demat_int.wav",
			mat="doctorwho1200/coral/mat_int.wav"
		},
		Lock="doctorwho1200/coral/lock.wav",
		Door={
			enabled=true,
			open="doctorwho1200/coral/door_open.wav",
			close="doctorwho1200/coral/door_close.wav"
		},
		FlightLoop="doctorwho1200/coral/flight_loop.wav"
        },

	Lights={
		seclight={
			color=Color(200,150,0),
			pos=Vector(130,0,160),
			brightness=4
		},
		seclight2={
			color=Color(200,150,0),
			pos=Vector(-130,0,160),
			brightness=4
		},
	},

	IdleSound={
		{
			path="doctorwho1200/coral/interior.wav",
			volume=1	
		}
	},

	Screens={
		{
		pos=Vector(-23,23,96),
		ang=Angle(180,60,-102),
		width=269,
		height=220
		}
	},

	Seats={
		{
			pos=Vector(-110,0,60),
			ang=Angle(0,-90,0)
		},
		{
			pos=Vector(-110,20,60),
			ang=Angle(0,-90,0)
		},
		{
			pos=Vector(-110,-20,60),
			ang=Angle(0,-90,0)
		},
	},

	Parts={
		console={
			model="models/doctorwho1200/coral/console.mdl"
		},
		coralaudio=true,
		coralball=true,
		coralball2=true,
		coralbell=true,
		coralbswitch=true,
		coralbswitch2=true,
		coralbutton=true,
		coralchair=true,
		coralcpipes=true,
		coralcrank=true,
		coralcrank2=true,
		coraldoorframe=true,
		coralflight=true,
		coralgswitch=true,
		coralgswitch2=true,
		coralhandbrake=true,
		coralhandle=true,
		coralhandle2=true,
		coralinterior2=true,
		coralkeyboard=true,
		coralkeyboard2=true,
		corallever={
			pos=Vector(0,0,0),
			ang=Angle(0,180,0),
		},
		corallever2=true,
		corallever3=true,
		corallights=true,
		coralmonitor=true,
		coralphone=true,
		coralpipes=true,
		coralpump=true,
		coralpump2=true,
		coralpump3=true,
		coralpump4=true,
		coralreg=true,
		coralreg2=true,
		coralrheostat=true,
		coralrs=true,
		coralsextant=true,
		coralstuff=true,
		coralstuff2=true,
		coralstuff3=true,
		coralstuff4=true,
		coralstuff5=true,
		coralstuff6=true,
		coralsw=true,
		coralsw2={
			pos=Vector(0,0,0),
			ang=Angle(0,180,0),
		},
		coralswitch=true,
		coralswitch2=true,
		coralthrottle=true,
		coraltoggles=true,
		coraltoggles2=true,
		coralvalve=true,
		coralvalve2=true,
		coralvalve3=true,
		coralvalve4=true,
		coralvalve5=true,
		coralvt=true,
		coralwalls=true,
		coralwheel=true,
		coralwheel2={
			pos=Vector(0,0,0),
			ang=Angle(0,180,0),
		},
		door={
			model="models/doctorwho1200/coral/doors.mdl",posoffset=Vector(0,0,-43.28),angoffset=Angle(0,180,0)
		},
	}
}
T.Exterior={
	Model="models/doctorwho1200/coral/exterior.mdl",

	Mass=2000,

	Portal={
		pos=Vector(25.63,0,48),
		ang=Angle(0,0,0),
		width=50,
		height=92
	},

	Fallback={
		pos=Vector(35,0,5),
		ang=Angle(0,0,0)
	},

	Light={
		enabled=true,
		pos=Vector(0,0,120),
		color=Color(255,240,160)
	},

	Sounds={
		Teleport={
			demat="doctorwho1200/coral/demat.wav",
			dematfail="doctorwho1200/coral/demat_fail.wav",
			mat="doctorwho1200/coral/mat.wav"
		},
		Lock="doctorwho1200/coral/lock.wav",
		Door={
			enabled=true,
			open="doctorwho1200/coral/door_open.wav",
			close="doctorwho1200/coral/door_close.wav"
		},
		FlightLoop="doctorwho1200/coral/flight_loop.wav"
	},

	Parts={
		door={
			model="models/doctorwho1200/coral/doorsext.mdl",posoffset=Vector(0,0,-43.28),angoffset=Angle(0,0,0)
		},
		vortex={
			model="models/doctorwho1200/coral/2005timevortex.mdl",
			pos=Vector(0,0,50),
			ang=Angle(0,0,0),
			scale=10
		}
	},
}

TARDIS:AddInterior(T)