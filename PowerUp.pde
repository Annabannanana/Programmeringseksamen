class PowerUp extends Ball{
 PowerUp(){
savedtime=frameCount;
starttime= 700;
}
  void Boxs(){
   rectMode(CENTER);
   fill(150,10,10);
   rect(pux,puy,50,50); 
//passedtime er hvor lang tid der er gået siden sidste savedtime
   passedtime=frameCount-savedtime;
//I denne if statement for rect nyede kordinater efter der er gået en hvis mængde tid
   if(passedtime>starttime){
   savedtime=frameCount;
   pux = int(random(50,650));
   puy = int(random(150,350));
   }

   }
    void powerhit(){
//Her får rect nyede koordinater så den ikke bliver vist på skærmen og så bliver boilden hurtigere
pux=-50;
puy=-50;
changespeed=changespeed*1.3;
    }

}
