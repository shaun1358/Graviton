// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getBlockHP(stage) {
   if (room == room_gameClassic) {
      if      (stage <= 10)  return real(stage);
      else if (stage <= 30)  return real(stage * 2 - 10);
      else if (stage <= 60)  return (stage * 3 - 40);
      else if (stage <= 100) return stage * 5 - 160;
      else if (stage <= 150) return stage * 8 - 460;
      else                   return stage * 12 - 1060;
   }
   else return 1;
}