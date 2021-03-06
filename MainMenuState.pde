class MainMenuState{
  
  //consider putting buttons into an array
  //although variable names allow readability
  private UIButton playButton;
  private UIButton loadSaveButton;
  private UIButton deleteSaveButton;
  private UIButton optionsButton;
  private UIButton quitButton;
  
  public MainMenuState(){
    //what a horrible mess
    //will be replaced with a drawn menu afterwards, just a placeholder for the moment
    playButton = new UIButton( 900, (height * 0.2) - (height/5)/2, 200, (height * 0.2)*0.8 );
    loadSaveButton = new UIButton( 900, (height * 0.4) - (height/5)/2, 200, (height * 0.2)*0.8 );
    deleteSaveButton = new UIButton( 900, (height * 0.6) - (height/5)/2, 200, (height * 0.2)*0.8 );
    optionsButton = new UIButton( 900, (height * 0.8) - (height/5)/2, 200, (height * 0.2)*0.8 );
    quitButton = new UIButton( 900, (height) - (height/5)/2, 200, (height * 0.2)*0.8 );
  }
  
  public void drawMainMenu(){
    pushStyle();
    playButton.drawUIObject();
    loadSaveButton.drawUIObject();
    deleteSaveButton.drawUIObject();
    optionsButton.drawUIObject();
    quitButton.drawUIObject();
    popStyle();
  }
  
  public int menuButtonManager(){
    if( playButton.buttonClicked() ){
      return 1;
    }
    return 0;
  }
  
}