state("bio2")
{
	uint time : "bio2.exe", 0x280538;
        short hp  : "bio2.exe", 0x589FE6;
        byte room_ID : "bio2.exe", 0x58EAB6;
        byte old_room : "bio2.exe", 0x58EABA;
        byte stage_ID : "bio2.exe", 0x58EAB4;
        byte PLD_ID : "bio2.exe", 0x58EAC4;
        byte cam_ID : "bio2.exe", 0x58EAB8;       
	ushort pos_x : "bio2.exe", 0x589EC8;
}

state("bio2 v1.1", "v1.1")
{
    	uint time : "bio2 v1.1.exe", 0x280588;
        short hp  : "bio2 v1.1.exe", 0x58A046;
        uint end : "bio2 v1.1.exe", 0x589E6C;
    	byte frame : "bio2 v1.1.exe", 0x28058C;
        byte room_ID : "bio2 v1.1.exe", 0x58EB16;
        byte old_room : "bio2 v1.1.exe", 0x58EB1A;
        byte stage_ID : "bio2 v1.1.exe", 0x58EB14;
        byte PLD_ID : "bio2 v1.1.exe", 0x58EB24;
        byte cam_ID : "bio2 v1.1.exe", 0x58EB18;  
}

state("bio2 1.10 - Supreme Skip", "v1.1")
{
    	uint time : "bio2 1.10 - Supreme Skip.exe", 0x280588;
        short hp  : "bio2 1.10 - Supreme Skip.exe", 0x58A046;
        uint end : "bio2 1.10 - Supreme Skip.exe", 0x589E6C;
    	byte frame : "bio2 1.10 - Supreme Skip.exe", 0x28058C;
        byte room_ID : "bio2 1.10 - Supreme Skip.exe", 0x58EB16;
        byte old_room : "bio2 1.10 - Supreme Skip.exe", 0x58EB1A;
        byte stage_ID : "bio2 1.10 - Supreme Skip.exe", 0x58EB14;
        byte PLD_ID : "bio2 1.10 - Supreme Skip.exe", 0x58EB24;
        byte cam_ID : "bio2 1.10 - Supreme Skip.exe", 0x58EB18;  
}



init
{
 
if(modules.First().ModuleName == "bio2.exe")
version = "v1.0";
else if(modules.First().ModuleName == "bio2 v1.1.exe")
version = "v1.1";
else if(modules.First().ModuleName == "bio2 1.10 - Supreme Skip.exe")
version = "v1.1";
}


isLoading
{
    return true;
}


start
{
  return current.hp == 200;
}

reset
{
 return current.old_room == 0xFF && current.hp == 0x00;
}

split
{

const byte Valve = 0x32;
const byte Red_Jewl00 = 0x33;
const byte Red_Jewl01 = 0x34;
const byte Blue_Card = 0x35;
const byte Serpent_Stone = 0x36;
const byte Jaguar_StoneL = 0x38;
const byte Jaguar_StoneR = 0x39;
const byte Eagle_Stone = 0x3A;
const byte Bishop_Plug = 0x3B;
const byte Rook_Plug = 0x3C;
const byte Knight_Plug = 0x3D;
const byte King_Plug = 0x3E;
const byte Unicorn_Medal = 0x47;
const byte Eagle_Medal = 0x48;
const byte Wolf_Medal = 0x49;
const byte Cog_Wheel = 0x4A;
const byte Manhole_Opener = 0x4B;
const byte Main_Fuse = 0x4C;
const byte MO_DISK = 0x60;
const byte Spade_Key = 0x59;
const byte Diamond_Key = 0x5A;
const byte Heart_Key = 0x5B;
const byte Club_Key = 0x5C;
const byte Panel_Key = 0x5D;


   var cur_segname = timer.CurrentSplit.Name;

if(cur_segname == "Valve")
{
    return current.room_ID == 22 && current.stage_ID == 0 && current.old_room == 11;
}
else if(cur_segname == "Stars Office")
{     
  return current.room_ID == 20 && current.stage_ID == 00 && current.old_room == 21;
}
else if(cur_segname == "Ada Shot")
{
  return current.room_ID == 22 && current.stage_ID == 1 && current.old_room == 17 && current.cam_ID == 2;
}
else if(cur_segname == "Red Hallway")
{
   return current.room_ID == 10 && current.stage_ID == 1 && current.old_room == 12;
}
else if(cur_segname == "Crank")
{
  return current.room_ID == 13 && current.stage_ID == 0 && current.old_room == 14;
}
else if(cur_segname == "G1")
{
  return current.room_ID == 4 && current.stage_ID == 2 && current.old_room == 3; 
}
else if(cur_segname == "Sewers")
{
  return current.room_ID == 13 && current.stage_ID == 3 && current.old_room == 7;
}
else if(cur_segname == "Train Birkin")
{
   return current.room_ID == 5 && current.stage_ID == 4 && current.old_room == 9;
}
else if(cur_segname == "Control Key")
{

  return current.room_ID == 20 && current.stage_ID == 5 && current.old_room == 21;  
}
else if(cur_segname == "Tyrant")
{
       
  return current.room_ID == 1 && current.stage_ID == 6 && current.old_room == 2;  
}
else if(cur_segname == "End")
{
 return (current.end & 0x200000) == 0x200000;
}

     
}


gameTime
{
    return (TimeSpan.FromSeconds( (double)(current.time) + (current.frame / 60.0)));
}


