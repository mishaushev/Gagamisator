import themidibus.*; //Import the library
import ddf.minim.*;
AudioPlayer file;
AudioPlayer file2;

boolean a = true ;

AudioPlayer poem1;
AudioPlayer poem2;
AudioPlayer poem3;
AudioPlayer bass;
AudioPlayer kick;
AudioPlayer hihat;


MidiBus myBus;
Minim minim;

PFont f;

String[] sounds = new String[25];
String[] texts = {"You can", "Make A", "Bomba", "If", "You", "Sit too long", "On", "The Internet", "So What?", "Should", "You", "Stay", "At Home", "And", "Cry", "Alone", "No!", "Be", "Strong", "Do", "Good", "Whatever", "You", "Want", "GAGA!"};
String[]imgUrls = {"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpg", "17.jpg", "18.jpg", "19.jpg", "20.jpg", "21.jpg", "22.jpg", "23.jpg", "24.jpg", "25.jpg", "26.jpg"};
String[] note = {"1C2.wav", "2C#2.wav", "3D2.wav", "4D#2.wav", "5E2.wav", "6F2.wav", "7F#2.wav", "8G2.wav", "9G#2.wav", "10A2.wav", "11A#2.wav", "12B2.wav", "13C3.wav", "14C#3.wav", "15D3.wav", "16D#3.wav", "17E3.wav", "18F3.wav", "19F#3.wav", "20G3.wav", "21G#.wav", "22A3.wav", "23A#3.wav", "24B3.wav", "25C4.wav"};



Text textList;






void setup() {
  fullScreen();
  
  // background(0);

  f = createFont("Futura Heavy font.ttf", 235);
  textFont(f);




  MidiBus.list(); 
  myBus = new MidiBus(this, 0, 3); 

  minim = new Minim(this);

  poem1 = minim.loadFile("poem1.wav");
  poem2 = minim.loadFile("poem2.wav");
  poem3 = minim.loadFile("poem3.wav");
  bass = minim.loadFile("bass.wav");
  kick = minim.loadFile("kick.wav");
  hihat = minim.loadFile("hihat.wav");



  note[0] = "1C2.wav";
  note[1] = "2C#2.wav";
  note[2] = "3D2.wav";   
  note[3] = "4D#2.wav";
  note[4] = "5E2.wav";
  note[5] = "6F2.wav";
  note[6] = "7F#2.wav";
  note[7] = "8G2.wav";
  note[8] = "9G#2.wav";
  note[9] = "10A2.wav"; 
  note[10] = "11A#2.wav"; 
  note[11] = "12B2.wav"; 
  note[12] = "13C3.wav"; 
  note[13] = "14C#3.wav";
  note[14] = "15D3.wav";
  note[15] = "16D#3.wav"; 
  note[16] = "17E3.wav";
  note[17] = "18F3.wav"; 
  note[18] = "19F#3.wav"; 
  note[19] = "20G3.wav"; 
  note[20] = "21G#3.wav"; 
  note[21] = "22A3.wav";
  note[22] = "23A#3.wav"; 
  note[23] = "24B3.wav";
  note[24] = "25C4.wav";



  imgUrls[0] = "1.jpg";
  imgUrls[1] = "2.jpg";
  imgUrls[2] = "3.jpg";
  imgUrls[3] = "4.jpg";
  imgUrls[4] = "5.jpg";
  imgUrls[5] = "6.jpg";
  imgUrls[6] = "7.jpg";
  imgUrls[7] = "8.jpg";
  imgUrls[8] = "9.jpg";
  imgUrls[9] = "10.jpg";
  imgUrls[10] = "11.jpg";
  imgUrls[11] = "12.jpg";
  imgUrls[12] = "13.jpg";
  imgUrls[13] = "14.jpg";
  imgUrls[14] = "15.jpg";
  imgUrls[15] = "16.jpg";
  imgUrls[16] = "17.jpg";
  imgUrls[18] = "18.jpg";
  imgUrls[19] = "19.jpg";
  imgUrls[20] = "20.jpg";
  imgUrls[21] = "21.jpg";
  imgUrls[22] = "22.jpg";
  imgUrls[23] = "23.jpg";
  imgUrls[24] = "24.jpg";






  texts[0] = "You can";
  texts[1] = "Make A";
  texts[2] = "Bomba";
  texts[3] = "If";
  texts[4] = "You";
  texts[5] = "Sit too long";
  texts[6] = "On";
  texts[7] = "The Internet";
  texts[8] = "So What?";
  texts[9] = "Should";
  texts[10] = "You Stay";
  texts[11] = "At";
  texts[12] = "Home";
  texts[13] = "And";
  texts[14] = "Cry";
  texts[15] = "Alone";
  texts[16] = "No!";
  texts[17] = "Be";
  texts[18] = "Strong";
  texts[19] = "Do";
  texts[20] = "Good";
  texts[21] = "Whatever";
  texts[22] = "You";
  texts[23] = "Want";
  texts[24] = "GAGA!";

  sounds[0] = "1 You can.wav";
  sounds[1] = "2 Make A.wav";
  sounds[2]= "3 Bomba.wav";
  sounds[3] = "4 If.wav";
  sounds[4] = "5 You.wav";
  sounds[5] = "6 Sit too Long.wav";
  sounds[6] = "7 On.wav";
  sounds[7] = "8 The Internet.wav";
  sounds[8] = "9 So What.wav";
  sounds[9] = "10 Should.wav";
  sounds[10] = "11 You Stay.wav";
  sounds[11] = "12 At.wav";
  sounds[12] = "13 Home.wav";
  sounds[13] = "14 And.wav";
  sounds[14] = "15 Cry.wav";
  sounds[15] = "16 Alone.wav";
  sounds[16] = "17 No.wav";
  sounds[17] = "18 Be.wav";
  sounds[18] = "19 Strong.wav";
  sounds[19] = "20 Do.wav";
  sounds[20] = "21 Good 2.wav";
  sounds[21] = "22 Whatever.wav";
  sounds[22] = "23 You 2.wav";
  sounds[23] = "24 Want.wav";
  sounds[24] = "25 GAGA.wav";

  file = minim.loadFile(sounds[0]);
  file2 = minim.loadFile(note[0]);

  poem1.rewind(); 
  poem1.play();
  poem1.loop();
  poem1.setGain(-60);

  poem2.rewind(); 
  poem2.play();
  poem2.loop();
  poem2.setGain(-60);

  poem3.rewind(); 
  poem3.play();
  poem3.loop();
  poem3.setGain(-60);

  bass.rewind(); 
  bass.play();
  bass.loop();
  bass.setGain(-60); 

  kick.rewind(); 
  kick.play();
  kick.loop();
  kick.setGain(-60);

  hihat.rewind(); 
  hihat.play();
  hihat.loop();
  hihat.setGain(-60);
}

void draw() {
  background(100);

  //float amplitude = map(kick, 0,4,5);

  if (textList != null) {
    textList.render();
  }
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  int noteNo = pitch;
  while (noteNo -48 < 0) {
    noteNo += texts.length;
  }
  
  println(noteNo);


  textList =new Text(texts[(noteNo-48)%texts.length], imgUrls[(noteNo-48)%imgUrls.length]);
  if (file.isPlaying()) {
    file.pause();
  }
  if (file2.isPlaying()) {
    file2.pause();
  }

  file = minim.loadFile(sounds[(noteNo-48)%sounds.length]);

  file2 = minim.loadFile(note[(noteNo-48)%note.length]) ;

  file.loop();
  file2.loop();
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  file.pause();
  file2.pause();

  /*if(textList.size() > 1){
   textList.remove(0);
   }*/
  textList = null;
}

void controllerChange(int channel, int pitch, int velocity) {
  // Receive a controllerChange
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  if (velocity > 0 && pitch == 54 && channel == 0) {
    float hihatVol = map(velocity, 0, 127, -30, 7);
    if (hihatVol <= -29) {
      hihat.setGain(-60);
    }
    if (hihatVol > -29) {
      hihat.setGain(hihatVol);
    }
  }



  if (velocity > 0 && pitch == 53 && channel == 0) {
    float kickVol = map(velocity, 0, 127, -30, 7);
    if (kickVol <= -29) {
      kick.setGain(-60);
    }
    if (kickVol > -29) {
      kick.setGain(kickVol);
    }
  }



  if (velocity > 0 && pitch == 52 && channel == 0) {
    float bassVol = map(velocity, 0, 127, -30, 7);
    if (bassVol <= -29) {
      bass.setGain(-60);
    }
    if (bassVol > -29) {
      bass.setGain(bassVol);
    }
  }

  /*if (velocity == 0 && pitch == 53 && channel == 0 ) {
   }*/

  if (velocity > 0 && pitch == 48 && channel == 0) {
    float poem1Vol = map(velocity, 0, 127, -30, 7);
    if (poem1Vol <= -29) {
      poem1.setGain(-60);
    }
    if (poem1Vol > -29) {
      poem1.setGain(poem1Vol);
    }
  }

  if (velocity > 0 && pitch == 49 && channel == 0) {
    float poem2Vol = map(velocity, 0, 127, -30, 7);
    if (poem2Vol <= -29) {
      poem2.setGain(-60);
    }
    if (poem2Vol > -29) {
      poem2.setGain(poem2Vol);
    }
  }

  if (velocity > 0 && pitch == 50 && channel == 0) {
    float poem3Vol = map(velocity, 0, 127, -30, 7);
    if (poem3Vol <= -29) {
      poem3.setGain(-60);
    }
    if (poem3Vol > -29) {
      poem3.setGain(poem3Vol);
    }
  }

  /*if (velocity == 0 && pitch == 53 && channel == 0 ) {
   }*/
}
