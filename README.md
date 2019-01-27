# PoliceTraining_V2
This one involves more than just dropping in a ymap.  It is also configured as an ESX resource because of the gun range resources used.

# DISCLAIMER
I attempted to get permission to post an edited version of [esx_gunrange](https://github.com/ESX-Brasil/esx_gunrange) and have yet to get an answer back.  So, until I hear otherwise, I'm going to abide by the GPL license which allows for the freedom to redistribute my version of the software.  That being said, I have two versions included.  One is the original code with only the config file changed to my needs and the second version is the original code with the config file changed to my needs and event names changed so it doesn't conflict with the other version.

Again, if you are the original creator of esx_gunrange and do not want me to redistribute the software with this training facility, please contact me ASAP and I will remove it.

The teleport script provided is NOT created by me.  I don't remember where I found it and have not been able to find the original code again.  If you are or know who the original creator is, please let me know.  

Finally, the shoot house is the same one I made for version one.  It was just picked up and moved to it's new location.  Codewalker doesn't allow for turning multiple props at once or at least, I don't know how to do it in there.  So it is facing the wrong way in it's new location.

# THE GOOD STUFF
The ymap is created by me and with the use of a couple of different resources, is a much better experience.  Let's get into the features.
 * The entire facility has been moved to Fort Zancudo to free up LSIA for people that use the airport as it's intended to be used.
 * Cones and barrels are movable.  This means no more wrecking your car on a small traffic cone.
 * Training areas are now lit up so they can easily be used at night.
 * The big center area of the shoot house now has two working gun ranges with popup targets and scoring with the use of [esx_gunrange](https://github.com/ESX-Brasil/esx_gunrange).  One side is just a standard range with targets all at one level, the other side has targets at different elevations.
 * This ymap includes working gates at both entrances of Fort Zancudo.  However, this does require some work when installing.
 * The teleport script is already included in the package. It can be used either on foot or in a vehicle.
 * The start area of the EVOC coarse includes a gas pump for those that use any version of LegacyFuel.  You know, because cars need gas.
 
 # THE BAD STUFF
  * The outer section of the shoot house is unchanged and still only has static targets that don't pop up or fall when shot.  Like the original version.
  * The EVOC coarse is smaller, but it still constains MOST of the original features.
  * The EVOC coarse still needs a little work, I just haven't had the time to revisit it.

# THE INSTALL STUFF
Ok, here comes the long boring tedius part.  First things first, for the full experience you will need a couple of other resources installed.  I won't help you install these resources.  I will only give you the small edits needed to make them work with this training facility.  These resources are not required to use the facility, they just add to the experience.
  * [Holograms](https://github.com/Vortex-z/Holograms-Floating-Text)
  * [esx_doorlock](https://github.com/ESX-PUBLIC/esx_doorlock)
  * [fivem-ipl](https://github.com/ESX-PUBLIC/fivem-ipl) I don't know if my IPL edit will work with other IPL loaders.  This is needed to remove the locked in-game Fort Zancudo gates.
  
Now, let's get things installed.  Again, I will only give install instructions for the provided resources, not any of the extra stuff you will need to get the full experience.
## The easy stuff
 * Drop the [PoliceTraining] folder into your resources folder.
 * In your server.cfg, add the following lines
  * start esx_gunrange
  * start esx_gunrange2
  * start LEO_Training_Facility
## The harder stuff
(These are assuming undedited resources)
### Holograms - holograms.lua
Find:
```
				-- Hologram No. 1
		if GetDistanceBetweenCoords( -408.50, 1163.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -408.50, 1163.00, 326.00  -1.400, "Your text", 4, 0.1, 0.1)
			Draw3DText( -408.50, 1163.00, 326.00  -1.600, "goes", 4, 0.1, 0.1)
			Draw3DText( -408.50, 1163.00, 326.00  -1.800, "here", 4, 0.1, 0.1)		
		end
```
Replace with:
```
--[[

===================================================================================================================
==========================================POLICE TRAINING CENTER===================================================
===================================================================================================================

]]--

				-- LEO Training Facility - Gate 1
		if GetDistanceBetweenCoords( -2319.18, 3399.4, 38.0, GetEntityCoords(GetPlayerPed(-1))) < 200.0 then
			Draw3DText( -2319.18, 3399.4, 38.0  -0.800, "State of San Andreas", 1, 0.7, 0.7)
			Draw3DText( -2319.18, 3399.4, 38.0  -2.000, "Emergency Services Training Facility", 1, 0.7, 0.7)
			Draw3DText( -2319.18, 3399.4, 38.0  -3.200, "Main Gate", 1, 0.7, 0.7)
		end

				-- LEO Training Facility - Gate 2
		if GetDistanceBetweenCoords( -1576.73, 2780.74, 24.89, GetEntityCoords(GetPlayerPed(-1))) < 200.0 then
			Draw3DText( -1576.73, 2780.74, 24.89  -0.800, "State of San Andreas", 1, 0.7, 0.7)
			Draw3DText( -1576.73, 2780.74, 24.89  -2.000, "Emergency Services Training Facility", 1, 0.7, 0.7)
			Draw3DText( -1576.73, 2780.74, 24.89  -3.200, "Back Gate", 1, 0.7, 0.7)
		end

				-- LEO Training Facility - Weapons Training Room
		if GetDistanceBetweenCoords( -2145.72, 3244.33, 65.0, GetEntityCoords(GetPlayerPed(-1))) < 200.0 then
			Draw3DText( -2145.72, 3244.33, 65.0  -0.800, "San Andreas", 1, 0.7, 0.7)
			Draw3DText( -2145.72, 3244.33, 65.0  -2.000, "Weapons Training Facility", 1, 0.7, 0.7)		
		end

				-- LEO Weapons Facility - Range 2
		if GetDistanceBetweenCoords( -2119.82, 3268.78, 33.0, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then
			Draw3DText( -2119.82, 3268.78, 33.0  -0.800, "Range 2", 1, 0.1, 0.1)		
		end

				-- LEO Weapons Facility - Range 1
		if GetDistanceBetweenCoords( -2130.32, 3275.01, 33.0, GetEntityCoords(GetPlayerPed(-1))) < 20.0 then
			Draw3DText( -2130.32, 3275.01, 33.0  -0.800, "Range 1", 1, 0.1, 0.1)		
		end

				-- LEO Weapons Facility - Exit
		if GetDistanceBetweenCoords( -2133.5, 3304.14, 34.50, GetEntityCoords(GetPlayerPed(-1))) < 60.0 then
			Draw3DText( -2133.5, 3304.14, 34.50  -0.800, "EXIT HERE", 1, 0.3, 0.3)		
		end

				-- LEO Weapons Facility - Enter
		if GetDistanceBetweenCoords( -2150.13, 3235.76, 34.50, GetEntityCoords(GetPlayerPed(-1))) < 60.0 then
			Draw3DText( -2150.13, 3235.76, 34.50  -0.800, "ENTER HERE", 1, 0.3, 0.3)		
		end

				-- LEO Weapons Facility - Enter
		if GetDistanceBetweenCoords( -2340.2, 3264.95, 34.50, GetEntityCoords(GetPlayerPed(-1))) < 60.0 then
			Draw3DText( -2340.2, 3264.95, 34.50  -0.600, "SWAT/SRT TRAINING", 1, 0.3, 0.3)	
			Draw3DText( -2340.2, 3264.95, 34.50  -1.200, "FACILITY", 1, 0.3, 0.3)	
		end

--[[

===================================================================================================================
==========================================POLICE TRAINING CENTER===================================================
===================================================================================================================

]]--
```
### esx_doorlock - config.lua
Find:
```
	--
	-- Addons
	--
```
Above that, add
```
	-- Fort Zancudo Great Ocean Hwy Entrance
	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = -2323.39, y = 3393.71, z = 30.0},
		textCoords = {x = -2319.81, y = 3399.76, z = 32.72},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = -2315.04, y = 3404.96, z = 30.0},
		textCoords = {x = -2319.81, y = 3399.76, z = 32.72},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	-- Fort Zancudo Route 68 Entrance
	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = -1571.79, y = 2785.86, z = 17.0},
		textCoords = {x = -1576.25, y = 2780.15, z = 18.5},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	{
		objName = 'prop_gate_airport_01',
		objCoords  = {x = -1581.76, y = 2775.67, z = 17.0},
		textCoords = {x = -1576.25, y = 2780.15, z = 18.5},
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},
```
### Fivem-IPL - client.lua
Find
```
	-- Zancudo Gates (GTAO like): -1600.301, 2806.731, 18.797
	RequestIpl("CS3_07_MPGates")
```
Change to:
```
	--== FOR POLICE TRAINING FACILITY ==--
	--Zancudo Gates (GTAO like): -1600.30100000, 2806.73100000, 18.79683000
	--RequestIpl(“CS3_07_MPGates”)
	if IsIplActive('CS3_07_MPGates') then
		RemoveIpl("CS3_07_MPGates")
	end
```
DONE!

The only thing I can take credit for is the just the ymap itself.
You may not redistribute the ymap without my permission.
All other resources used, the credit goes to their authors as I only made edits to make them work as needed for the Police Training Facility

See this post on the FiveM forums for screen shots.
