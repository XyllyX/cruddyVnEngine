class GameState{
  
  Character ann;
  
  //hardcoding test scene for now, will otherwise use script based system
  //may use gamestates as chapters
  public GameState(){
    ann = new Character("Ann", 2);
  }
  
  public void drawGame(){
    background(255);
    ann.moveIn(false, 4);
    ann.drawCharacter();
    if(key == ' '){
      ann.setTalking(true);
    }
    if(key == 'n'){
      ann.setTalking(false);
    }
  }
  
}