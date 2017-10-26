int value=100;
String Message = "";
Human human1 = new Human();


void setup()
{
  size(600,600);
}

void draw()
{
  background(255);
  fill(0);
  text(Message,20,20);
  human1.Render();
}

void keyPressed()
{
  if(key == '\n')
  {
  // human1.name=Message;
  
  if(Message.contains("name"))
  {
    human1.Speak(0);
  }

  if(Message.contains("boy or girl"))
  {
    human1.Speak(1);
  }
  
  if(Message.contains("how old"))
  {
   human1.Speak(2); 
  }
  
  if(Message.contains("lol"))
  {
   human1.Speak(3); 
  }
  
  if(Message.contains("you suck"))
  {
   human1.Speak(4); 
  }
  
  if(Message.contains("monado buster"))
  {
   human1.Speak(5); 
  }
  
  if(Message.contains("truth bullet"))
  {
   human1.Speak(6); 
  }
  
    Message = "";
  }
  else
  {
   Message+=key;
  }
}