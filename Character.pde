class Character{
  
  private String name;
  private String mood;
  private boolean active;
  private boolean faceLeft;
  private boolean introduced;
  private boolean talking;
  private float xPos;
  private float yPos;
  private int imgVariants;
  
  private ArrayList<PImage> neutrals;
  private ArrayList<PImage> happies;
  private ArrayList<PImage> saddies;
  private ArrayList<PImage> angries;
  
  public Character(String _name, int _imgVariants){
    name = _name;
    mood = "neutral";
    active = false;
    faceLeft = false;
    introduced = false;
    xPos = -400;
    yPos = height/2;
    imgVariants = _imgVariants;
    
    neutrals = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      neutrals.add( loadImage("assets/characters/" + name + "/neutral/"+nf(i, 1)+".png") );
      neutrals.get(i).resize(0, int(height * 0.75) );
    }
    happies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      happies.add( loadImage("assets/characters/" + name + "/happy/"+nf(i, 1)+".png") );
      happies.get(i).resize(0, int(height * 0.75) );
    }
    saddies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      saddies.add( loadImage("assets/characters/" + name + "/sad/"+nf(i, 1)+".png") );
      saddies.get(i).resize(0, int(height * 0.75) );
    }
    angries = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      angries.add( loadImage("assets/characters/" + name + "/angry/"+nf(i, 1)+".png") );
      angries.get(i).resize(0, int(height * 0.75) );
    }
  }
  
  public String getCharacterName(){
    return name;
  }
  
  public void setMood(String _mood){
    mood = _mood;
  }
  
  public void setActive(boolean _active){
    active = _active;
  }
  
  public void setCharPos(int _xPos, int _yPos){
    xPos = _xPos;
    yPos = _yPos;
  }
  
  public void setFacing(boolean _faceLeft){
    faceLeft = _faceLeft;
  }
  
  public void moveIn(boolean fromRight){
    if(fromRight){
      faceLeft = true;
      if( xPos > width*0.75 ){
        
      }
    } else {
      faceLeft = false;
      if( xPos < width*0.25 ){
        xPos+=2;
      }
    }
  }
  
  public boolean getIntroduced(){
    return introduced;
  }
  
  public void setIntroduced(boolean isIntroduced){
    introduced = isIntroduced;
  }
  
  public void setTalking(boolean _talking){
    talking = _talking;
  }
  
  public void drawCharacter(){
    pushMatrix();
    imageMode(CENTER);
    if(mood == "happy"){
      if(talking){
        image(happies.get(1), xPos, yPos, 0, height);
      } else {
      image(happies.get(0), xPos, yPos, 0, height);
      }
    } 
    
    else if (mood == "sad"){
      if(talking){
        image(saddies.get(1), xPos, yPos, 0, height);
      } else {
      image(saddies.get(0), xPos, yPos, 0, height);
      }
    } 
    
    else if (mood == "angry"){
      if(talking){
        image(angries.get(1), xPos, yPos, 0, height);
      } else {
      image(angries.get(0), xPos, yPos, 0, height);
      }
    } 
    
    else {
      if(talking){
        image(neutrals.get(1), xPos, yPos, 0, height);
      } else {
      image(neutrals.get(0), xPos, yPos, 0, height);
      }
    }
    popMatrix();
  }
  
}