/*
class button{  // declare the class
  // these variables belong to the button class:>
  float xpos,ypos,w,h;
  String myText;
  boolean showText;
  // this is the "constructor" section, where the new button receives
  // variables passed from setup() (in this case) and assigns them appropriately:
  button(float passX, float passY, String passText){
    xpos=passX;
    ypos=passY;
    myText=passText;
    w=76; // for now, all buttons have the same dimensions.
    h=30;
  }
  // and everything that follows are the functions of the button class:
  void update(){
    if (mouseWithin()){ // the mouse is within the area of the button, so:
      if (mousePressed) fill(220,220,255); // color the button bright blue if the mouse is pressed...
      else fill(150,150,255); // or just blue if the mouse is hovering.
    }
    else fill(175); // otherwise color the rectangle grey.
    rect(xpos,ypos,w,h); // draw the button
    if ((showText) || (mouseWithin())){ // if showText is true, or the mouse is hovering,
      // display the text:
      fill(0);
      text(myText,xpos,ypos);
    }
  }
  */
  /*void click(){ // this function is run when the button is clicked.
    showText=!showText; // in this case, all we want is for it to toggle the "showText" boolean.
  }
  boolean mouseWithin(){
    return ((mouseX>xpos-w/2) && (mouseX<xpos+w/2) && (mouseY>ypos-h/2) && (mouseY<ypos+w/2));
    // this boolean function returns True if the mouse is within the button area,
    // and False if not.
  }
}
*/

/*void mousePressed(){
  for (int i=0;i<buttons.length;i++){
    if (buttons[i].mouseWithin()){
      buttons[i].click(); // trigger that button's "click" function
      break; // break the loop in order to stop checking buttons, so that when you
      // click an area of two overlapping buttons, only the top button gets triggered.
    }
  }
}
*/
