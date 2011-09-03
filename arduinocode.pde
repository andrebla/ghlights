//Guitar Hero Lights - Arduino sketch

int ledPin[] = {
  6, 7, 8, 9, 10 };
int pinCount = 5;

int incomingByte;

void setup() {
  Serial.begin(9600);
  for (int pin = 0; pin < pinCount; pin++) {
    pinMode(ledPin[pin], OUTPUT);
  }
}

void loop() {
  if (Serial.available() > 0) {
    incomingByte = Serial.read();
    switch(incomingByte){
      case ‘G’:
      digitalWrite(ledPin[0], HIGH);
      break;
      case ’0':
      digitalWrite(ledPin[0], LOW);
      break;
      case ‘R’:
      digitalWrite(ledPin[1], HIGH);
      break;
      case ’1':
      digitalWrite(ledPin[1], LOW);
      break;
      case ‘Y’:
      digitalWrite(ledPin[2], HIGH);
      break;
      case ’3':
      digitalWrite(ledPin[2], LOW);
      break;
      case ‘B’:
      digitalWrite(ledPin[3], HIGH);
      break;
      case ’2':
      digitalWrite(ledPin[3], LOW);
      break;
      case ‘O’:
      digitalWrite(ledPin[4], HIGH);
      break;
      case ’4':
      digitalWrite(ledPin[4], LOW);
      break;
    }
  }
}
