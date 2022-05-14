state("SoulbringeVCnoeax")
{
byte menuState : 0x000248FC, 0x0;
byte loadingState : 0x01C2F72C, 0x8;
byte firstCutscene : 0x000293A4, 0x2C0;
float exit : 0x00260994, 0x148;
byte isinmainmenu : 0x001B2CF0, 0x68;
byte quitgameingame : 0x00048624, 0x0;
int tpIntomb : 0x2CFFC74;

int mapMarker : 0x00196D78, 0x4;

byte playerHP : 0x0325AD2C, 0x2C;
byte stats : 0x0022F5D0, 0x0;

int slept : 0x30FC558;
byte firstPhase : 0x01D3ACF0, 0x50, 0x0, 0x8, 0x4, 0x234;
//130 is free the slaves
int hexCompass : 0x30E9EB4;
//129 is kill morton
int firstGargos : 0x0325AD58, 0x2C;
//128 is kill first gargos

byte tombExit : 0x00FB4824, 0x19C;
byte tombMarker : 0x00199DE0, 0x0;  
int captain : 0x0325AD34, 0x2C;

int lordcruxHP : 0x0325AD30, 0x2C;

//127 is pickup Messenger

int lightstealerHP : 0x0325AD84, 0x2C;

int gargosHP : 0x0325AD6C, 0x2C;

int incubaHP : 0x0325AD44, 0x2C;

int barthelegoHP : 0x0325AD2C, 0x2C;

int gargamon : 0x0325AD3C, 0x2C;

int elsaHP : 0x0325AD2C, 0x2C;

int centerLizzardHP : 0x0325AD60, 0x2C;
int leftLizzardHP : 0x0325AD58, 0x2C;
int backleftLizzardHP : 0x0325AD5C, 0x2C;
int backrightLizzardHP : 0x0325AD68, 0x2C;
int rightLizzardHP : 0x0325AD64, 0x2C;

int topleftGuardHP : 0x0325AD44, 0x2C;
int toprightGaurdHP : 0x0325AD38, 0x2C;
int backrightGuardHP : 0x0325AD3C, 0x2C;
int backleftGuardHP : 0x0325AD40, 0x2C;


int endGame : 0x00053000, 0x8;
}
startup
{

      vars.step = 0;
    refreshRate = 60;
}
init{
   //init logic values
timer.IsGameTimePaused = true;
      vars.maplogix3 = 0;
 
vars.logix = 200;

vars.reset = 1;
}
start
{
   //reset logic values

vars.maplogix3 = 0;
vars.logix = 200;

   
if(current.mapMarker == 29486 && current.playerHP == 100 && current.isinmainmenu == 0 && vars.reset == 1){
   vars.reset = 0;
   vars.step = 0;
   return true;
}  }


split{
   //slept at uncles
      if(vars.step == 0 && current.slept == 0 && current.mapMarker == 779383653){
      vars.step = 1;
      return true;
   }
   //free madrigal
   if(vars.step == 1 && current.firstPhase == 130 && current.mapMarker == 778333807){
      vars.step = 2;
      return true;
   }
   //pay uncle
         if(vars.step == 2 && current.mapMarker == 779383653 && current.hexCompass > 128){
      vars.step = 3;
      return true;
   }
   //enter temple of shadows
            if(vars.step == 3 && current.mapMarker == 778398832){
      vars.step = 4;
      return true;
   }
   //exit temple of shadows
      if(vars.step == 4 && current.firstPhase == 129 && current.mapMarker == 1886352496){
      vars.step = 5;
      return true;
   }
   //kill gargos
         if(vars.step == 5 && current.mapMarker == 1852405615 && current.firstGargos == 65536000){
      vars.step = 6;
      return true;
   }
   //land on church ruins
            if(vars.step == 6 && current.mapMarker == 779117940){
      vars.step = 7;
      return true;
   }
   //wake up in shadowgaurd
            if(vars.step == 7 && current.mapMarker == 29486){
      vars.step = 8;
      return true;
   }
      //land on rainbow rock
            if(vars.step == 8 && current.mapMarker == 779579234){
      vars.step = 9;
      return true;
   }
   //kill blood master
            if(vars.step == 9 && current.mapMarker == 775185005 && current.tpIntomb == 0 || vars.maplogix3 == 1){
               vars.maplogix3 = 1;
            
               if(current.mapMarker == 779579234){
                  vars.maplogix3 = 0;
                  vars.step = 10;
                  return true;
               }
            }

   //kill lord crux
               if(vars.step == 10 && current.lordcruxHP == 131072000 && current.mapMarker == 1953393010){
      vars.step = 11;
      return true;
   }
   //obtain messenger
               if(vars.step == 11 && current.firstPhase == 127){
      vars.step = 12;
      return true;
   }
         //WAR!!!
            if(vars.step == 12 && current.mapMarker == 1932424036){
      vars.step = 13;
      return true;
   }
   //kill lightstealer
                  if(vars.step == 13 && current.mapMarker == 7548516 && current.lightstealerHP == 114688000){
      vars.step = 14;
      return true;
   }
   //kill gargos v2
                     if(vars.step == 14 && current.mapMarker == 7548526 && current.gargosHP == 131072000){
      vars.step = 15;
      return true;
   }
   //kill incuba
                     if(vars.step == 15 && current.mapMarker == 778396513 && current.incubaHP == 26214800){
      vars.step = 16;
      return true;
   }
   //kill barthelago
                        if(vars.step == 16 && current.mapMarker == 7548520 && current.barthelegoHP == 245760000){           
      vars.step = 17;
      return true;
   }
   //Kill gargamon
                           if(vars.step == 17 && current.mapMarker == 7548530 && current.gargamon == 196608000){                        
      vars.step = 18;
      return true;
   }
   //kill elsa
                              if(vars.step == 18 && current.mapMarker == 1932421236 && current.elsaHP == 294912000){ 
      vars.step = 19;
      return true;
   }
//wizzard lizzards
                           if(vars.step == 19 && current.mapMarker == 7548465 && current.centerLizzardHP == 78643200 && current.leftLizzardHP == 78643200 && current.backleftLizzardHP == 78643200 && current.backrightLizzardHP == 78643200 && current.rightLizzardHP == 78643200){
      vars.step = 20;
      return true;
   }
//kill the guards
                              if(vars.step == 20 && current.mapMarker == 1932407148 && current.topleftGuardHP == 196608000 && current.toprightGaurdHP == 196608000 && current.backrightGuardHP == 196608000 && current.backleftGuardHP == 196608000){
      vars.step = 21;
      return true;
   }
//enter the well
                              if(vars.step == 21 &&  current.mapMarker == 7548524 && current.endGame == 1){
      return true;
   }


   
}



reset{
if(vars.logix  == 1 || current.quitgameingame == 1){
vars.logix = 1;
if(current.isinmainmenu == 1){
   //reset logic values
   vars.maplogix3 = 0;
   vars.step = 0;
   vars.reset = 1;
   return true;
   
   }
}else{
   vars.logix = 0;
}
}
isLoading
{
	
if(current.menuState == 1 || current.isinmainmenu == 1 || current.loadingState == 1 || vars.logix == 200){
return true;
} else{
	return false;
   }
}
exit {
   vars.logix = 200;
timer.IsGameTimePaused = true;
}