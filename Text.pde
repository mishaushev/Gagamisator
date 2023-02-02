class Text {

  PVector pos;
  String text;
  PImage img;
  
  Text(String txt, String imgUrls) {
    text = txt;
    pos = new PVector(width/2, height/2);
    img = loadImage(imgUrls);
  }

  void render() {
    image(img, 0, 0, width, height);
    textAlign(CENTER,CENTER);
    textSize(random(30,400));
    fill(255,0,0);
    text(text, pos.x, pos.y);
  }
}
