class Human
{
  int age;
  int iq;
  color hairColor;
  color SkinTone;
  color eyeColor;
  color shirtColor;
  String name;
  String gender;
  boolean isSick;
  float weight;
  String nationality;
  float charHeight;
  boolean isAlive;
  float x;
  float y;
  float nameSpeech;
  float genderSpeech;
  float ageSpeech;
  float lolSpeech;
  float sadResponse;
  float xenoResponse;
  float drResponse;

  Human()
  {
    age = 17;
    iq = 70;
    hairColor = color(0, 0, 20);
    SkinTone = color(190, 114, 60);
    shirtColor = color(200, 0, 0);
    name = "Xavier";
    gender = "Male";
    eyeColor = color(0, 200, 100);
    weight = 50.5;
    nationality = "American";
    charHeight = 180;
    isAlive = true;
    isSick = false;
    x = 300;
    y = 300;
    nameSpeech = -4000;
    genderSpeech = -4000;
    ageSpeech= -4000;
    lolSpeech= -4000;
    sadResponse= -4000;
    xenoResponse= -4000;
    drResponse= -4000;
  }
  void Render()
  {
    fill(SkinTone);
    rect(x, y, weight, charHeight);

    fill(hairColor);
    rect(x, y, weight, 35);

    fill(shirtColor);
    rect(x, y+70, weight, 100);

    if (millis()-nameSpeech<3000)
    {
      fill(0);
      text("Hello, my name is "+name, x, y-20);
    }
    if (millis()-genderSpeech<3000)
    {
      fill(0);
      text("I am "+gender, x, y-20);
    }
    if (millis()-ageSpeech<3000)
    {
      fill(0);
      text("My age is "+age, x, y-20);
    }
    if (millis()-lolSpeech<3000)
    {
      fill(0);
      text("Laugh out Loud", x, y-20);
    }
    if (millis()-sadResponse<3000)
    {
      fill(0);
      text(":(", x, y-20);
    }
    if (millis()-xenoResponse<3000)
    {
      fill(0);
      text("I'm really feeling it!", x, y-20);
    }
    if (millis()-drResponse<3000)
    {
      fill(0);
      text("[COUNTER] NO, THAT'S WRONG!", x, y-20);
    }
  }
  void ChangeX(float val)
  {
    x += val;
  }
  void Speak(int command)
  {
    if (command ==0)
    {
      nameSpeech = millis();
    }
    if (command ==1)
    {
      genderSpeech = millis();
    }
    if (command ==2)
    {
      ageSpeech = millis(); 
    }
    if (command ==3)
    {
      lolSpeech = millis(); 
    }
    if (command ==4)
    {
      sadResponse = millis(); 
    }
    if (command ==5)
    {
      xenoResponse = millis(); 
    }
    if (command ==6)
    {
      drResponse = millis(); 
    }
  }
}