state("ePSXe", "2.05")
{
    	
        byte hp : "ePSXe.exe", 0xB4A9C2;
        uint now : "ePSXe.exe", 0xB27C54;
        uint save : "ePSXe.exe", 0xB4F318;
        uint total : "ePSXe.exe", 0xB49294;
        uint game_state : "ePSXe.exe", 0xB4A898;
        uint end : "ePSXe.exe", 0xC819D8;
        byte room_ID : "ePSXe.exe", 0xB4F492;
        byte old_room : "ePSXe.exe", 0xB4F496;
        byte stage_ID : "ePSXe.exe", 0xB4F490;
        byte cam_ID : "ePSXe.exe", 0xB4A866;  
}


isLoading
{
    return true;
}


start
{
   if(current.room_ID == 4 && current.cam_ID == 0 && current.old_room == 255) {
	  return (current.game_state & 0x1000) == 0x1000;
   }
   return false;
}



gameTime
{
	return TimeSpan.FromSeconds((current.save - current.total+ current.now) / 60.0);
}


reset
{
 return current.old_room == 255 &&  current.game_state == 0;
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

if(cur_segname == "0")
{     
  return current.room_ID == 5 && current.stage_ID == 0;
}
else if(cur_segname == "1")
{     
  return current.room_ID == 6 && current.stage_ID == 0 && current.old_room == 5;
}
else if(cur_segname == "2")
{     
  return current.room_ID == 7 && current.stage_ID == 0 && current.old_room == 6;
}
else if(cur_segname == "3")
{     
  return current.room_ID == 8 && current.stage_ID == 0 && current.old_room == 7;
}
else if(cur_segname == "4")
{     
  return current.room_ID == 9 && current.stage_ID == 0 && current.old_room == 8;
}
else if(cur_segname == "5")
{     
  return current.room_ID == 22 && current.stage_ID == 0 && current.old_room == 9;
}
else if(cur_segname == "6")
{     
  return current.room_ID == 11 && current.stage_ID == 1 && current.old_room == 22;
}
else if(cur_segname == "7")
{     
  return current.room_ID == 22 && current.stage_ID == 0 && current.old_room == 11;
}
else if(cur_segname == "8")
{     
  return current.room_ID == 9 && current.stage_ID == 0 && current.old_room == 22;
}
else if(cur_segname == "9")
{     
  return current.room_ID == 8 && current.stage_ID == 0 && current.old_room == 9;
}
else if(cur_segname == "10")
{     
  return current.room_ID == 9 && current.stage_ID == 0 && current.old_room == 8;
}
else if(cur_segname == "Mr X")
{     
  return current.room_ID == 10 && current.stage_ID == 0 && current.old_room == 9;
}
else if(cur_segname == "12")
{     
  return current.room_ID == 11 && current.stage_ID == 0 && current.old_room == 10;
}
else if(cur_segname == "13")
{     
  return current.room_ID == 10 && current.stage_ID == 0 && current.old_room == 11;
}
else if(cur_segname == "14")
{     
  return current.room_ID == 15 && current.stage_ID == 0 && current.old_room == 10;
}
else if(cur_segname == "15")
{     
  return current.room_ID == 16 && current.stage_ID == 0 && current.old_room == 15;
}
else if(cur_segname == "16")
{     
  return current.room_ID == 0 && current.stage_ID == 1 && current.old_room == 16;
}
else if(cur_segname == "17")
{     
  return current.room_ID == 16 && current.stage_ID == 0 && current.old_room == 0;
}
else if(cur_segname == "18")
{     
  return current.room_ID == 18 && current.stage_ID == 0 && current.old_room == 16;
}
else if(cur_segname == "19")
{     
  return current.room_ID == 19 && current.stage_ID == 0 && current.old_room == 18;
}
else if(cur_segname == "20")
{     
  return current.room_ID == 20 && current.stage_ID == 0 && current.old_room == 19;
}
else if(cur_segname == "21")
{     
  return current.room_ID == 21 && current.stage_ID == 0 && current.old_room == 20;
}
else if(cur_segname == "Stars Office")
{     
  return current.room_ID == 20 && current.stage_ID == 0 && current.old_room == 21;
}
else if(cur_segname == "23")
{     
  return current.room_ID == 12 && current.stage_ID == 0 && current.old_room == 20;
}
else if(cur_segname == "24")
{     
  return current.room_ID == 7 && current.stage_ID == 1 && current.old_room == 12;
}
else if(cur_segname == "25")
{     
  return current.room_ID == 5 && current.stage_ID == 1 && current.old_room == 7;
}
else if(cur_segname == "26")
{     
  return current.room_ID == 6 && current.stage_ID == 1 && current.old_room == 5;
}
else if(cur_segname == "27")
{     
  return current.room_ID == 5 && current.stage_ID == 1 && current.old_room == 6;
}
else if(cur_segname == "28")
{     
  return current.room_ID == 7 && current.stage_ID == 1 && current.old_room == 5;
}
else if(cur_segname == "29")
{     
  return current.room_ID == 9 && current.stage_ID == 1 && current.old_room == 7;
}
else if(cur_segname == "30")
{     
  return current.room_ID == 2 && current.stage_ID == 1 && current.old_room == 9;
}
else if(cur_segname == "31")
{     
  return current.room_ID == 0 && current.stage_ID == 1 && current.old_room == 2;
}
else if(cur_segname == "32")
{     
  return current.room_ID == 10 && current.stage_ID == 1 && current.old_room == 0;
}
else if(cur_segname == "33")
{     
  return current.room_ID == 11 && current.stage_ID == 1 && current.old_room == 10;
}
else if(cur_segname == "34")
{     
  return current.room_ID == 15 && current.stage_ID == 1 && current.old_room == 11;
}
else if(cur_segname == "35")
{     
  return current.room_ID == 17 && current.stage_ID == 1 && current.old_room == 15;
}
else if(cur_segname == "36")
{     
  return current.room_ID == 22 && current.stage_ID == 1 && current.old_room == 17;
}
else if(cur_segname == "Ada Shot")
{
  return current.room_ID == 22 && current.stage_ID == 1 && current.old_room == 17 && current.cam_ID == 2;
}
else if(cur_segname == "38")
{     
  return current.room_ID == 25 && current.stage_ID == 1 && current.old_room == 22;
}
else if(cur_segname == "39")
{     
  return current.room_ID == 1 && current.stage_ID == 2 && current.old_room == 25;
}
else if(cur_segname == "40")
{     
  return current.room_ID == 25 && current.stage_ID == 1 && current.old_room == 1;
}
else if(cur_segname == "41")
{     
  return current.room_ID == 26 && current.stage_ID == 1 && current.old_room == 25;
}
else if(cur_segname == "42")
{     
  return current.room_ID == 2 && current.stage_ID == 2 && current.old_room == 26;
}
else if(cur_segname == "43")
{     
  return current.room_ID == 11 && current.stage_ID == 2 && current.old_room == 2;
}
else if(cur_segname == "44")
{     
  return current.room_ID == 3 && current.stage_ID == 2 && current.old_room == 11;
}
else if(cur_segname == "45")
{     
  return current.room_ID == 11 && current.stage_ID == 2 && current.old_room == 3;
}
else if(cur_segname == "46")
{     
  return current.room_ID == 5 && current.stage_ID == 2 && current.old_room == 11;
}
else if(cur_segname == "47")
{     
  return current.room_ID == 6 && current.stage_ID == 2 && current.old_room == 5;
}
else if(cur_segname == "Key of Clubs")
{     
  return current.room_ID == 5 && current.stage_ID == 2 && current.old_room == 6;
}
else if(cur_segname == "49")
{     
  return current.room_ID == 11 && current.stage_ID == 2 && current.old_room == 5;
}
else if(cur_segname == "50")
{     
  return current.room_ID == 2 && current.stage_ID == 2 && current.old_room == 11;
}
else if(cur_segname == "51")
{     
  return current.room_ID == 26 && current.stage_ID == 1 && current.old_room == 2;
}
else if(cur_segname == "52")
{     
  return current.room_ID == 25 && current.stage_ID == 1 && current.old_room == 26;
}
else if(cur_segname == "53")
{     
  return current.room_ID == 22 && current.stage_ID == 1 && current.old_room == 25;
}
else if(cur_segname == "54")
{     
  return current.room_ID == 17 && current.stage_ID == 1 && current.old_room == 22;
}
else if(cur_segname == "55")
{     
  return current.room_ID == 15 && current.stage_ID == 1 && current.old_room == 17;
}
else if(cur_segname == "56")
{     
  return current.room_ID == 11 && current.stage_ID == 1 && current.old_room == 15;
}
else if(cur_segname == "57")
{     
  return current.room_ID == 10 && current.stage_ID == 1 && current.old_room == 11;
}
else if(cur_segname == "58")
{     
  return current.room_ID == 12 && current.stage_ID == 1 && current.old_room == 10;
}
else if(cur_segname == "59")
{     
  return current.room_ID == 14 && current.stage_ID == 1 && current.old_room == 12;
}
else if(cur_segname == "60")
{     
  return current.room_ID == 12 && current.stage_ID == 1 && current.old_room == 14;
}
else if(cur_segname == "61")
{     
  return current.room_ID == 13 && current.stage_ID == 1 && current.old_room == 12;
}
else if(cur_segname == "62")
{     
  return current.room_ID == 12 && current.stage_ID == 1 && current.old_room == 13;
}
else if(cur_segname == "Red Hallway")
{     
  return current.room_ID == 10 && current.stage_ID == 1 && current.old_room == 12;
}
else if(cur_segname == "64")
{     
  return current.room_ID == 11 && current.stage_ID == 1 && current.old_room == 10;
}
else if(cur_segname == "65")
{     
  return current.room_ID == 22 && current.stage_ID == 0 && current.old_room == 11;
}
else if(cur_segname == "66")
{     
  return current.room_ID == 9 && current.stage_ID == 0 && current.old_room == 22;
}
else if(cur_segname == "67")
{     
  return current.room_ID == 10 && current.stage_ID == 0 && current.old_room == 9;
}
else if(cur_segname == "68")
{     
  return current.room_ID == 11 && current.stage_ID == 0 && current.old_room == 10;
}
else if(cur_segname == "69")
{     
  return current.room_ID == 10 && current.stage_ID == 0 && current.old_room == 11;
}
else if(cur_segname == "70")
{     
  return current.room_ID == 27 && current.stage_ID == 1 && current.old_room == 10;
}
else if(cur_segname == "71")
{
  return current.room_ID == 13 && current.stage_ID == 0 && current.old_room == 27;
}
else if(cur_segname == "72")
{
  return current.room_ID == 14 && current.stage_ID == 0 && current.old_room == 13;
}
else if(cur_segname == "Crank")
{
  return current.room_ID == 13 && current.stage_ID == 0 && current.old_room == 14;
}
else if(cur_segname == "74")
{
  return current.room_ID == 27 && current.stage_ID == 1 && current.old_room == 13;
}
else if(cur_segname == "75")
{
  return current.room_ID == 10 && current.stage_ID == 0 && current.old_room == 27;
}
else if(cur_segname == "76")
{     
  return current.room_ID == 15 && current.stage_ID == 0 && current.old_room == 10;
}
else if(cur_segname == "77")
{     
  return current.room_ID == 16 && current.stage_ID == 0 && current.old_room == 15;
}
else if(cur_segname == "78")
{     
  return current.room_ID == 18 && current.stage_ID == 0 && current.old_room == 16;
}
else if(cur_segname == "79")
{     
  return current.room_ID == 23 && current.stage_ID == 0 && current.old_room == 18;
}
else if(cur_segname == "80")
{     
  return current.room_ID == 17 && current.stage_ID == 0 && current.old_room == 23;
}
else if(cur_segname == "81")
{     
  return current.room_ID == 25 && current.stage_ID == 1 && current.old_room == 17;
}
else if(cur_segname == "82")
{     
  return current.room_ID == 1 && current.stage_ID == 2 && current.old_room == 25;
}
else if(cur_segname == "83")
{     
  return current.room_ID == 25 && current.stage_ID == 1 && current.old_room == 1;
}
else if(cur_segname == "84")
{     
  return current.room_ID == 26 && current.stage_ID == 1 && current.old_room == 25;
}
else if(cur_segname == "85")
{     
  return current.room_ID == 2 && current.stage_ID == 2 && current.old_room == 26;
}
else if(cur_segname == "86")
{     
  return current.room_ID == 11 && current.stage_ID == 2 && current.old_room == 2;
}
else if(cur_segname == "87")
{     
  return current.room_ID == 3 && current.stage_ID == 2 && current.old_room == 11;
}
else if(cur_segname == "Birkin (G1)")
{     
  return current.room_ID == 4 && current.stage_ID == 2 && current.old_room == 3;
}
else if(cur_segname == "89")
{     
  return current.room_ID == 2 && current.stage_ID == 3 && current.old_room == 4;
}
else if(cur_segname == "90")
{     
  return current.room_ID == 3 && current.stage_ID == 3 && current.old_room == 2;
}
else if(cur_segname == "91")
{     
  return current.room_ID == 4 && current.stage_ID == 3 && current.old_room == 3;
}
else if(cur_segname == "92")
{     
  return current.room_ID == 5 && current.stage_ID == 3 && current.old_room == 4;
}
else if(cur_segname == "93")
{     
  return current.room_ID == 11 && current.stage_ID == 3 && current.old_room == 5;
}
else if(cur_segname == "94")
{     
  return current.room_ID == 9 && current.stage_ID == 3 && current.old_room == 11;
}
else if(cur_segname == "95")
{     
  return current.room_ID == 16 && current.stage_ID == 3 && current.old_room == 9;
}
else if(cur_segname == "96")
{     
  return current.room_ID == 4 && current.stage_ID == 3 && current.old_room == 16;
}
else if(cur_segname == "97")
{     
  return current.room_ID == 5 && current.stage_ID == 3 && current.old_room == 4;
}
else if(cur_segname == "98")
{     
  return current.room_ID == 7 && current.stage_ID == 3 && current.old_room == 5;
}
else if(cur_segname == "99")
{     
  return current.room_ID == 8 && current.stage_ID == 3 && current.old_room == 7;
}
else if(cur_segname == "100")
{     
  return current.room_ID == 10 && current.stage_ID == 3 && current.old_room == 8;
}
else if(cur_segname == "101")
{     
  return current.room_ID == 16 && current.stage_ID == 3 && current.old_room == 10;
}
else if(cur_segname == "102")
{     
  return current.room_ID == 9 && current.stage_ID == 3 && current.old_room == 16;
}
else if(cur_segname == "103")
{     
  return current.room_ID == 11 && current.stage_ID == 3 && current.old_room == 9;
}
else if(cur_segname == "104")
{     
  return current.room_ID == 5 && current.stage_ID == 3 && current.old_room == 11;
}
else if(cur_segname == "105")
{     
  return current.room_ID == 7 && current.stage_ID == 3 && current.old_room == 5;
}
else if(cur_segname == "Sewers")
{     
  return current.room_ID == 13 && current.stage_ID == 3 && current.old_room == 7;
}
else if(cur_segname == "107")
{     
  return current.room_ID == 14 && current.stage_ID == 3 && current.old_room == 13;
}
else if(cur_segname == "108")
{     
  return current.room_ID == 0 && current.stage_ID == 4 && current.old_room == 14;
}
else if(cur_segname == "109")
{     
  return current.room_ID == 1 && current.stage_ID == 4 && current.old_room == 0;
}
else if(cur_segname == "110")
{     
  return current.room_ID == 2 && current.stage_ID == 4 && current.old_room == 1;
}
else if(cur_segname == "111")
{     
  return current.room_ID == 8 && current.stage_ID == 4 && current.old_room == 2;
}
else if(cur_segname == "112")
{     
  return current.room_ID == 3 && current.stage_ID == 4 && current.old_room == 8;
}
else if(cur_segname == "113")
{     
  return current.room_ID == 6 && current.stage_ID == 4 && current.old_room == 3;
}
else if(cur_segname == "114")
{     
  return current.room_ID == 7 && current.stage_ID == 4 && current.old_room == 6;
}
else if(cur_segname == "115")
{     
  return current.room_ID == 6 && current.stage_ID == 4 && current.old_room == 7;
}
else if(cur_segname == "116")
{     
  return current.room_ID == 3 && current.stage_ID == 4 && current.old_room == 6;
}
else if(cur_segname == "117")
{     
  return current.room_ID == 4 && current.stage_ID == 4 && current.old_room == 3;
}
else if(cur_segname == "118")
{     
  return current.room_ID == 5 && current.stage_ID == 4 && current.old_room == 4;
}
else if(cur_segname == "119")
{     
  return current.room_ID == 9 && current.stage_ID == 4 && current.old_room == 5;
}
else if(cur_segname == "Birkin (G3)")
{     
  return current.room_ID == 5 && current.stage_ID == 4 && current.old_room == 9;
}
else if(cur_segname == "121")
{     
  return current.room_ID == 0 && current.stage_ID == 5 && current.old_room == 5;
}
else if(cur_segname == "122")
{     
  return current.room_ID == 2 && current.stage_ID == 5 && current.old_room == 0;
}
else if(cur_segname == "123")
{     
  return current.room_ID == 3 && current.stage_ID == 5 && current.old_room == 2;
}
else if(cur_segname == "124")
{     
  return current.room_ID == 5 && current.stage_ID == 5 && current.old_room == 3;
}
else if(cur_segname == "125")
{     
  return current.room_ID == 3 && current.stage_ID == 5 && current.old_room == 5;
}
else if(cur_segname == "126")
{     
  return current.room_ID == 2 && current.stage_ID == 5 && current.old_room == 3;
}
else if(cur_segname == "127")
{     
  return current.room_ID == 1 && current.stage_ID == 5 && current.old_room == 2;
}
else if(cur_segname == "128")
{     
  return current.room_ID == 6 && current.stage_ID == 5 && current.old_room == 1;
}
else if(cur_segname == "129")
{     
  return current.room_ID == 8 && current.stage_ID == 5 && current.old_room == 6;
}
else if(cur_segname == "130")
{     
  return current.room_ID == 12 && current.stage_ID == 5 && current.old_room == 8;
}
else if(cur_segname == "131")
{     
  return current.room_ID == 13 && current.stage_ID == 5 && current.old_room == 12;
}
else if(cur_segname == "132")
{     
  return current.room_ID == 12 && current.stage_ID == 5 && current.old_room == 13;
}
else if(cur_segname == "133")
{     
  return current.room_ID == 8 && current.stage_ID == 5 && current.old_room == 12;
}
else if(cur_segname == "134")
{     
  return current.room_ID == 11 && current.stage_ID == 5 && current.old_room == 8;
}
else if(cur_segname == "135")
{     
  return current.room_ID == 14 && current.stage_ID == 5 && current.old_room == 11;
}
else if(cur_segname == "136")
{     
  return current.room_ID == 14 && current.stage_ID == 5 && current.old_room == 14;
}
else if(cur_segname == "137")
{     
  return current.room_ID == 22 && current.stage_ID == 5 && current.old_room == 14;
}
else if(cur_segname == "138")
{     
  return current.room_ID == 18 && current.stage_ID == 5 && current.old_room == 22;
}
else if(cur_segname == "139")
{     
  return current.room_ID == 20 && current.stage_ID == 5 && current.old_room == 18;
}
else if(cur_segname == "140")
{     
  return current.room_ID == 21 && current.stage_ID == 5 && current.old_room == 20;
}
else if(cur_segname == "Power Room Key")
{     
  return current.room_ID == 20 && current.stage_ID == 5 && current.old_room == 21;
}
else if(cur_segname == "142")
{     
  return current.room_ID == 18 && current.stage_ID == 5 && current.old_room == 20;
}
else if(cur_segname == "143")
{     
  return current.room_ID == 22 && current.stage_ID == 5 && current.old_room == 18;
}
else if(cur_segname == "144")
{     
  return current.room_ID == 14 && current.stage_ID == 5 && current.old_room == 22;
}
else if(cur_segname == "145")
{     
  return current.room_ID == 14 && current.stage_ID == 5 && current.old_room == 14;
}
else if(cur_segname == "146")
{     
  return current.room_ID == 11 && current.stage_ID == 5 && current.old_room == 14;
}
else if(cur_segname == "147")
{     
  return current.room_ID == 8 && current.stage_ID == 5 && current.old_room == 11;
}
else if(cur_segname == "148")
{     
  return current.room_ID == 6 && current.stage_ID == 5 && current.old_room == 8;
}
else if(cur_segname == "149")
{     
  return current.room_ID == 1 && current.stage_ID == 5 && current.old_room == 6;
}
else if(cur_segname == "150")
{     
  return current.room_ID == 2 && current.stage_ID == 5 && current.old_room == 1;
}
else if(cur_segname == "151")
{     
  return current.room_ID == 3 && current.stage_ID == 5 && current.old_room == 2;
}
else if(cur_segname == "152")
{     
  return current.room_ID == 4 && current.stage_ID == 5 && current.old_room == 3;
}
else if(cur_segname == "Master Key")
{     
  return current.room_ID == 3 && current.stage_ID == 5 && current.old_room == 4;
}
else if(cur_segname == "154")
{     
  return current.room_ID == 2 && current.stage_ID == 5 && current.old_room == 3;
}
else if(cur_segname == "155")
{     
  return current.room_ID == 1 && current.stage_ID == 5 && current.old_room == 2;
}
else if(cur_segname == "156")
{     
  return current.room_ID == 6 && current.stage_ID == 5 && current.old_room == 1;
}
else if(cur_segname == "157")
{     
  return current.room_ID == 7 && current.stage_ID == 5 && current.old_room == 6;
}
else if(cur_segname == "158")
{     
  return current.room_ID == 1 && current.stage_ID == 5 && current.old_room == 7;
}
else if(cur_segname == "159")
{     
  return current.room_ID == 0 && current.stage_ID == 6 && current.old_room == 1;
}
else if(cur_segname == "160")
{     
  return current.room_ID == 3 && current.stage_ID == 6 && current.old_room == 0;
}
else if(cur_segname == "161")
{     
  return current.room_ID == 4 && current.stage_ID == 6 && current.old_room == 3;
}
else if(cur_segname == "162")
{     
  return current.room_ID == 3 && current.stage_ID == 6 && current.old_room == 4;
}
else if(cur_segname == "163")
{     
  return current.room_ID == 0 && current.stage_ID == 6 && current.old_room == 3;
}
else if(cur_segname == "164")
{     
  return current.room_ID == 1 && current.stage_ID == 6 && current.old_room == 0;
}
else if(cur_segname == "165")
{     
  return current.room_ID == 2 && current.stage_ID == 6 && current.old_room == 1;
}
else if(cur_segname == "Tyrant")
{     
  return current.room_ID == 1 && current.stage_ID == 6 && current.old_room == 2;
}
else if(cur_segname == "167")
{     
  return current.room_ID == 0 && current.stage_ID == 6 && current.old_room == 1;
}
else if(cur_segname == "168")
{     
  return current.room_ID == 3 && current.stage_ID == 6 && current.old_room == 0;
}
else if(cur_segname == "169")
{     
  return current.room_ID == 4 && current.stage_ID == 6 && current.old_room == 3;
}
else if(cur_segname == "170")
{     
  return current.room_ID == 3 && current.stage_ID == 6 && current.old_room == 4;
}
else if(cur_segname == "End")
{
  return ((current.end & 0x0258) == 0x0258);
}


}





