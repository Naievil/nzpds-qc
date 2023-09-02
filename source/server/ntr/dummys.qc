float() spawn_a_zombieA = 
{
	return 0;
}

string convert_old_asset_path(string asset) = 
{
	return "";
}

void() LoadWaypointData = 
{
	return;
}

void() Waypoint_Logic = { }

void() set_z_health = { }

void() spawnAllZombEnts = { }

void makeCrawler(entity who) = { }

void() Z_ElectroShock = { }

void() Do_Zombie_AI = {}

void Set_W_Frame (float startframe, float endframe, float duration, float funccalledin, float animtype, void(optional float t) endanimfunc, string set_model, float dontstartnew, float side) = {};



void() Weapon_Logic = { }

void() GetUp = {}

void() W_SprintStop = {}

void() main = {}

void()  StartFrame = {}

void() EndFrame = {}

void() Soft_Restart = {}

void SV_ParseClientCommand(string com) = {}

void() mystery_box = {};

string(string s) precache_model         = #20;

void() precaches =
{
	precache_model ("models/player.mdl");

	//
	// Models
	//

	// sprites
	precache_model ("models/sprites/sprkle.spr");
	precache_model ("models/sprites/explosion.spr");
	precache_model ("models/sprites/null.spr");

	if (waypoint_mode) {
		precache_model ("models/way/current_way.spr");
		precache_model ("models/way/current_way_door.spr");
		precache_model ("models/way/last_way.spr");
		precache_model ("models/way/last_way_door.spr");
		precache_model ("models/way/normal_way.spr");
		precache_model ("models/way/normal_way_door.spr");
		precache_model ("models/way/way_jump.spr");
		precache_model ("models/way/way_land.spr");
	}

	// zombie
	precache_model ("models/ai/zfull.mdl");
	precache_model ("models/ai/zal(.mdl");
	precache_model ("models/ai/zar(.mdl");
	precache_model ("models/ai/zb%.mdl");
	precache_model ("models/ai/zh^.mdl");

	// zombie crawler
	precache_model ("models/ai/zcfull.mdl");
	precache_model ("models/ai/zbc%.mdl");
	precache_model ("models/ai/zalc(.mdl");
	precache_model ("models/ai/zarc(.mdl");
	precache_model ("models/ai/zhc^.mdl");

	// start weapons
	precache_model ("models/weapons/m1911/v_colt.mdl");
	precache_model ("models/weapons/knife/v_knife.mdl");
	precache_model ("models/weapons/grenade/v_grenade.mdl");
	precache_model ("models/weapons/grenade/g_grenade.mdl");

#ifdef FTE

	// FTE only has co-op, so don't precache morphine elsewhere.
	precache_model ("models/weapons/morphine/v_morphine.mdl");

#endif // FTE

	//
	// Sounds
	//

	// player-made

#ifdef FTE

	precache_sound("sounds/player/footstep1.wav");
	precache_sound("sounds/player/footstep2.wav");
	precache_sound("sounds/player/footstep3.wav");
	precache_sound("sounds/player/footstep4.wav");
	precache_sound("sounds/player/footstep5.wav");

#endif // FTE

	precache_sound("sounds/player/jump.wav");
	precache_sound("sounds/player/land.wav");
	precache_sound("sounds/player/pain4.wav");

	// weapons
	precache_sound("sounds/weapons/colt/magin.wav");
	precache_sound("sounds/weapons/colt/magout.wav");
	precache_sound("sounds/weapons/colt/shoot.wav");
	precache_sound("sounds/weapons/colt/slide.wav");

	// grenade
	precache_sound("sounds/weapons/grenade/prime.wav");
	precache_sound("sounds/weapons/grenade/throw.wav");
	precache_sound("sounds/weapons/grenade/explode.wav");

	// melee
	precache_sound("sounds/weapons/knife/knife_hitbod.wav");
	precache_sound("sounds/weapons/knife/knife.wav");
	precache_sound("sounds/weapons/knife/knife_hit.wav");

	// tunes
	precache_sound("sounds/rounds/eround.wav");
	precache_sound("sounds/rounds/nround.wav");
	precache_sound("sounds/rounds/splash.wav");
	precache_sound("sounds/music/end.wav");

	// purchasing
	precache_sound("sounds/misc/buy.wav");
	precache_sound("sounds/misc/denybuy.wav");

	// power-ups
	precache_sound ("sounds/pu/pickup.wav");
	precache_sound ("sounds/pu/powerup.wav");
	precache_sound ("sounds/pu/drop.wav");

	// zombie walk
	precache_sound ("sounds/zombie/w0.wav");
	precache_sound ("sounds/zombie/w1.wav");
	precache_sound ("sounds/zombie/w2.wav");
	precache_sound ("sounds/zombie/w3.wav");
	precache_sound ("sounds/zombie/w4.wav");
	precache_sound ("sounds/zombie/w5.wav");
	precache_sound ("sounds/zombie/w6.wav");
	precache_sound ("sounds/zombie/w7.wav");
	precache_sound ("sounds/zombie/w8.wav");
	precache_sound ("sounds/zombie/w9.wav");

	// zombie run
	precache_sound ("sounds/zombie/r0.wav");
	precache_sound ("sounds/zombie/r1.wav");
	precache_sound ("sounds/zombie/r2.wav");
	precache_sound ("sounds/zombie/r3.wav");
	precache_sound ("sounds/zombie/r4.wav");
	precache_sound ("sounds/zombie/r5.wav");
	precache_sound ("sounds/zombie/r6.wav");
	precache_sound ("sounds/zombie/r7.wav");
	precache_sound ("sounds/zombie/r8.wav");
	precache_sound ("sounds/zombie/r9.wav");

	// zombie swipe
	precache_sound ("sounds/zombie/a0.wav");
	precache_sound ("sounds/zombie/a1.wav");
	precache_sound ("sounds/zombie/a2.wav");
	precache_sound ("sounds/zombie/a3.wav");
	precache_sound ("sounds/zombie/a4.wav");
	precache_sound ("sounds/zombie/a5.wav");
	precache_sound ("sounds/zombie/a6.wav");
	precache_sound ("sounds/zombie/a7.wav");

	// zombie death
	precache_sound ("sounds/zombie/d0.wav");
	precache_sound ("sounds/zombie/d1.wav");
	precache_sound ("sounds/zombie/d2.wav");
	precache_sound ("sounds/zombie/d3.wav");
	precache_sound ("sounds/zombie/d4.wav");
	precache_sound ("sounds/zombie/d5.wav");
	precache_sound ("sounds/zombie/d6.wav");
	precache_sound ("sounds/zombie/d7.wav");

	// zombie taunt
	precache_sound ("sounds/zombie/t0.wav");
	precache_sound ("sounds/zombie/t1.wav");
	precache_sound ("sounds/zombie/t2.wav");
	precache_sound ("sounds/zombie/t3.wav");
	precache_sound ("sounds/zombie/t4.wav");

	// zombie footsteps
	precache_sound ("sounds/zombie/s0.wav");
	precache_sound ("sounds/zombie/s1.wav");
	precache_sound ("sounds/zombie/sc0.wav");
	precache_sound ("sounds/zombie/sc1.wav");

	// null
	precache_sound("sounds/null.wav");
}

//called when map loaded
void() worldspawn =
{
	precaches();

	// Define all of our Light Styles
	//LS_Setup();

	// Init Power-Ups
	//PU_Init();

#ifdef FTE

	clientstat(STAT_CURRENTMAG, EV_FLOAT, currentmag);
	clientstat(STAT_CURRENTMAG2, EV_FLOAT, currentmag2);
	clientstat(STAT_POINTS, EV_FLOAT, points);
	clientstat(STAT_WEAPON2FRAME, EV_FLOAT, weapon2frame);
	clientstat(STAT_WEAPON2MODEL, EV_STRING, weapon2model);
	clientstat(STAT_GRENADES, EV_FLOAT, primary_grenades);
	clientstat(STAT_SECGRENADES, EV_FLOAT, secondary_grenades);
	clientstat(STAT_PROGRESSBAR, EV_FLOAT, progress_bar_percent);
	clientstat(STAT_WEAPONDURATION, EV_FLOAT, weapon_animduration);
	clientstat(STAT_WEAPON2DURATION, EV_FLOAT, weapon2_animduration);
	clientstat(STAT_WEAPONZOOM, EV_FLOAT, zoom);
	clientstat(STAT_INSTA, EV_FLOAT, insta_icon);
	clientstat(STAT_X2, EV_FLOAT, x2_icon);
	clientstat(STAT_SPECTATING, EV_FLOAT, isspec);
	clientstat(STAT_PLAYERNUM, EV_FLOAT, playernum);		// literally useless but will be kept in case
	clientstat(STAT_PLAYERSTANCE, EV_FLOAT, stance);
	clientstat(STAT_FACINGENEMY, EV_FLOAT, facingenemy);
	clientstat(STAT_VIEWZOOM, EV_FLOAT, viewzoom);
	clientstat(STAT_MAXHEALTH, EV_FLOAT, max_health);

#endif // FTE

	mappath = strcat("maps/", mapname);
	mappath = strzone(mappath);

	LoadWaypointData();

	//set game elements
	G_STARTPOINTS = 500;
	G_STARTROUND = 1;
	G_PRONEPOINTS = 0;
	G_STARTWEAPON[0] = W_COLT;
	G_STARTWEAPON[1] = 8;
	G_STARTWEAPON[2] = 32;
	G_WORLDTEXT = 1;
	G_PERKS = 0;
	G_PERKPOWER = 0;
}

void() PlayerSpawn =
{	
	entity spawnpoint = world;
	local_client = self;

	self.isspec = FALSE;
	self.classname = "player";
	self.solid = SOLID_BBOX;

	// We can only collide with zombies (and not their limbs)

#ifdef FTE

	self.dimension_hit = HITBOX_DIM_ZOMBIES;

#endif // FTE

	setmodel(self, "models/player.mdl");
	self.movetype = MOVETYPE_WALK;
	self.max_health = self.health = 100;

	entity who = find(world,classname,"player");
	while(who != self && !self.playernum)
	{
		if(who)
		{
			coop = 1;
			player_count++;
			break;
		}
	}

	if (!self.playernum) {
		self.playernum = player_count + 1;
		if (self.playernum == 1)
			pl1 = self;
	}

	float viable_spawnpoint = false;

	// if the mapper doesn't have the co-op ents set up, just plop everyone at the
	// normal start.
	if (find(world, classname, "info_player_tank") == world && 
	find(world, classname, "info_player_nikolai") == world &&
	find(world, classname, "info_player_takeo") == world && 
	find(world, classname, "info_player_doctor") == world) {
		spawnpoint = find(world, classname, "info_player_start");
		viable_spawnpoint = true;
	}

	//
	// pick a random spawn point regardless of solo or co-op
	//

	while(!viable_spawnpoint) {
		float number = random();

		// assign one of the spawnpoints
		if (number < 0.25)
			spawnpoint = find(world, classname, "info_player_tank");
		else if (number < 0.50)
			spawnpoint = find(world, classname, "info_player_nikolai");
		else if (number < 0.75)
			spawnpoint = find(world, classname, "info_player_takeo");
		else
			spawnpoint = find(world, classname, "info_player_doctor");

		float found_player_here = false;

		entity ents_in_spawn_range = findradius(spawnpoint.origin, 32);

		// check if there's a player in the way
		while(ents_in_spawn_range != world) {
			if (ents_in_spawn_range.classname == "player")
				found_player_here = true;

			ents_in_spawn_range = ents_in_spawn_range.chain;
		}

		// no player in the way, this spawn is good.
		if (found_player_here == false)
			viable_spawnpoint = true;
	}

	// Mapper doesn't have our specific co-op spawn set up..
	if (spawnpoint == world)
		spawnpoint = find(world, classname, "info_player_start");

	
	self.origin = spawnpoint.origin + [0,0,1];
	self.angles = spawnpoint.angles;
	self.fixangle = TRUE;
	setsize(self, [-16, -16, -32], [16, 16, 40]);
	self.view_ofs = VEC_VIEW_OFS; // naievil -- set view_ofs to 32 to maintain half life (64) sizes
	self.stance = 2;
	self.new_ofs_z = self.view_ofs_z;
	self.oldz = self.origin_z;

	self.currentammo = G_STARTWEAPON[2];
	self.currentmag = G_STARTWEAPON[1];
	self.weapon = G_STARTWEAPON[0];
	self.grenades = self.grenades | 1;  // add frag grenades to player inventory
	
	if (rounds)
		self.primary_grenades = 2;
	else
		self.primary_grenades = 0; 		// start off without grenades
		
	self.pri_grenade_state = 0; 		// defines that frag grenades are for player first, not betty
	self.secondary_grenades = -1;		// shows that we both don't have betties AND shouldn't draw the image onscreen

	if (!self.points)
		addmoney(self, G_STARTPOINTS, 0);

	self.weaponmodel = GetWeaponModel(self.weapon, 0);// Give weapon model
	self.weapon2model = GetWeapon2Model(self.weapon);

	SwitchWeapon(self.weapon);

	self.stamina = 3;
	self.reviving = 0;
	self.weaponnum = 0;
	self.perks = G_PERKS;
	SetPerk(self, self.perks);

	if (rounds < 1 && player_count == 0) {
		sound(self, CHAN_AUTO, "sounds/rounds/splash.wav", 1, ATTN_NONE);
		sound(self, CHAN_ITEM, "sounds/rounds/nround.wav", 0.75, ATTN_NONE);
	}

	PromptLevelChange(self.nextthink + 3, 1, self);	
	UpdatePlayerCount(player_count);
	
#ifdef FTE

	PollPlayerPoints();
	UpdateV2model("", 0);
	stuffcmd(self, "cl_gunx 8;cl_guny 16;cl_gunz 25\n");
	SetRound(self, G_STARTROUND);
	self.viewzoom = 1;
	self.weapon_animduration = getWeaponDelay(self.weapon, FIRE);

	if (G_WORLDTEXT)
		WorldText(world.chaptertitle, world.location, world.date, world.person, self);

#else 

	self.Weapon_Name = GetWeaponName(self.weapon);
	self.Flash_Offset = GetWeaponFlash_Offset(self.weapon);
	self.Flash_Size = GetWeaponFlash_Size(self.weapon);

#endif // FTE

	if (G_STARTROUND != 1) {
		rounds = G_STARTROUND - 1;
	}

};

void() SpectatorSpawn =
{
	local entity spawnpoint;
	spawnpoint = find(world, classname, "info_player_start");
	
	self.isspec = TRUE;
	self.health = 420;
	self.classname = "spectator";
	self.solid = SOLID_NOT;
	setmodel(self, "");
	self.movetype = MOVETYPE_FLY;
	self.origin = spawnpoint.origin + [0,0,1];
	self.fixangle = TRUE;
	setsize(self, [-16, -16, -24], [16, 16, 32]);
	self.view_ofs = '0 0 22';
	self.aiment = world;
};

//called when a client loads a map
void() PutClientInServer =
{
	if(cvar("developer") || player_count > 1) {
		bprint(PRINT_HIGH, self.netname);
		bprint(PRINT_HIGH, " has joined the game.\n");
	}
	
	if (spawn_time > time || !rounds)
		PlayerSpawn();

#ifdef FTE

	else 
		SpectatorSpawn();

#endif // FTE

};