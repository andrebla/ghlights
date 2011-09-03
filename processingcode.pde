//Guitar Hero Lights - Processing sketch
import processing.opengl.*;
import procontroll.*;
import net.java.games.input.*;
import processing.serial.*;

Serial port;

ControllIO controllIO;
ControllDevice joypad;

void setup(){
 
  port = new Serial(this, “COM4?, 9600);
  controllIO = ControllIO.getInstance(this);
  joypad = controllIO.getDevice(“Controller (Guitar Hero X-plorer  )”);
  joypad.plug(this, “handleButton0Press”, ControllIO.ON_PRESS, 0);
  joypad.plug(this, “handleButton0Release”, ControllIO.ON_RELEASE, 0);
  joypad.plug(this, “handleButton1Press”, ControllIO.ON_PRESS, 1);
  joypad.plug(this, “handleButton1Release”, ControllIO.ON_RELEASE, 1);
  joypad.plug(this, “handleButton2Press”, ControllIO.ON_PRESS, 2);
  joypad.plug(this, “handleButton2Release”, ControllIO.ON_RELEASE, 2);
  joypad.plug(this, “handleButton3Press”, ControllIO.ON_PRESS, 3);
  joypad.plug(this, “handleButton3Release”, ControllIO.ON_RELEASE, 3);
  joypad.plug(this, “handleButton4Press”, ControllIO.ON_PRESS, 4);
  joypad.plug(this, “handleButton4Release”, ControllIO.ON_RELEASE, 4);
}

void handleButton0Press(){
  port.write(‘G’);
}

void handleButton0Release(){
  port.write(’0');
}

void handleButton1Press(){
  port.write(‘R’);
}

void handleButton1Release(){
  port.write(’1');
}

void handleButton2Press(){
  port.write(‘B’);
}

void handleButton2Release(){
  port.write(’2');
}

void handleButton3Press(){
  port.write(‘Y’);
}

void handleButton3Release(){
  port.write(’3');
}

void handleButton4Press(){
  port.write(‘O’);
}

void handleButton4Release(){
  port.write(’4');
}

void draw(){
}