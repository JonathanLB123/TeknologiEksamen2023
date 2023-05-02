boolean leftmause = false;

int screenNum = 0;

String passName = "jonathan";
String passWord = "1111";
boolean valid = false;

Botten b1 = new Botten();
Botten t1 = new Botten();
Botten t2 = new Botten();

PImage testBG;

void setup(){
    size(1200, 800);

    testBG = loadImage("leg-tovtraekning.jpg");
}

void draw(){
    background(0);
    switch (screenNum) {
        case 0 :

            image(testBG, 0, 0, width, height);

            t1.display(450, 400, 310, 50);
            t2.display(450, 500, 310, 50);
            rect(450, 600, 150, 50);

            t1.textSpace();
            t2.textSpace();

            b1.display(610, 600, 150, 50);

            if(t1.tet == passName && t2.tet == passWord){
                valid = true;
                println("valid");
            }

            if(b1.pressed()){
                screenNum = 1;
            }

        break;

        case 1 :
            image(testBG,0,0,width,height);

            text("Logget ind",width/2,height/2);
        break;	
    }



}

void mousePressed(){
    if(mouseButton == LEFT){
        leftmause = true;
    }
}

void mouseReleased(){
    if(mouseButton == LEFT){
        leftmause = false;
    }
}
