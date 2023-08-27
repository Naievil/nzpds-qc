/*
	world.qc

	main/world setup functions

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


void() main =
{
	precache_model("models/player.mdl");
};


entity  lastspawn;


void() worldspawn =
{

	precache_model("progs/player.mdl");
	precache_model("models/player.mdl");

};

void() StartFrame =
{

};

/*
==============================================================================

BODY QUE

==============================================================================
*/

entity  bodyque_head;

void() bodyque =
{       // just here so spawn functions don't complain after the world
	// creates bodyques
};

void() InitBodyQue =
{

};


// make a body que entry for the given ent so the ent can be
// respawned elsewhere
void(entity ent) CopyToBodyQue =
{

};


