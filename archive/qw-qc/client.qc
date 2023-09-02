/*
	client.qc

	client functions

	Copyright (C) 1996-1997  Id Software, Inc.

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

	See the GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to:

		Free Software Foundation, Inc.
		59 Temple Place - Suite 330
		Boston, MA  02111-1307, USA

*/


/*
=============================================================================

				LEVEL CHANGING / INTERMISSION

=============================================================================
*/


void() SetChangeParms =
{

};

void() SetNewParms =
{

};


/*
=============================================================================

				PLAYER GAME EDGE FUNCTIONS

=============================================================================
*/


/*
============
ClientKill

Player entered the suicide command
============
*/
void() ClientKill =
{

};

void() PlayerSpawn =
{	
	entity spawnpoint = world;

	self.classname = "player";
	self.solid = SOLID_BBOX;

	setmodel(self, "models/player.mdl");
	self.movetype = MOVETYPE_WALK;
	self.max_health = self.health = 100;

	// Mapper doesn't have our specific co-op spawn set up..
	if (spawnpoint == world)
		spawnpoint = find(world, classname, "info_player_start");

	
	self.origin = spawnpoint.origin + [0,0,1];
	self.angles = spawnpoint.angles;
	self.fixangle = TRUE;
	setsize(self, [-16, -16, -32], [16, 16, 40]);
	self.view_ofs = '0 0 32'; // naievil -- set view_ofs to 32 to maintain half life (64) sizes


};



/*
===========
PutClientInServer

called each time a player enters a new level
============
*/
void() PutClientInServer =
{
	
	PlayerSpawn();
};



/*
=============================================================================

				QUAKED FUNCTIONS

=============================================================================
*/


/*QUAKED info_player_start (1 0 0) (-16 -16 -24) (16 16 24)
The normal starting point for a level.
*/
void() info_player_start =
{
};


/*QUAKED info_player_start2 (1 0 0) (-16 -16 -24) (16 16 24)
Only used on start map for the return point from an episode.
*/
void() info_player_start2 =
{
};

/*QUAKED info_player_deathmatch (1 0 1) (-16 -16 -24) (16 16 24)
potential spawning position for deathmatch games
*/
void() info_player_deathmatch =
{
};

/*QUAKED info_player_coop (1 0 1) (-16 -16 -24) (16 16 24)
potential spawning position for coop games
*/
void() info_player_coop =
{
};

/*
===============================================================================

RULES

===============================================================================
*/



/*
================
PlayerPreThink

Called every frame before physics are run
================
*/
void() PlayerPreThink =
{

};
	


/*
================
PlayerPostThink

Called every frame after physics are run
================
*/
void() PlayerPostThink =
{


};


/*
===========
ClientConnect

called when a player connects to a server
============
*/
void() ClientConnect =
{
	bprint (PRINT_HIGH, self.netname);
	bprint (PRINT_HIGH, " entered the game\n");
};


/*
===========
ClientDisconnect

called when a player disconnects from a server
============
*/
void() ClientDisconnect =
{

};


