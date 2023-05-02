class Botten{
    int gX;
    int gY;
    int gWid;
    int gHig;
    boolean locked = false;
    String tet = "";
    
    Botten(){

    }

    void display(int x, int y, int wid, int hig){
        gX = x;
        gY = y;
        gWid = wid;
        gHig = hig;

        fill(255);
        rect(x,y,wid,hig);
    }

    boolean pressed(){
        if (mouseX > gX && mouseX < gX+gWid && mouseY > gY && mouseY < gY+gHig && leftmause){
           return true; 
        }
        return false;
    }

    void textSpace(){

        if (mouseX > gX && mouseX < gX+gWid && mouseY > gY && mouseY < gY+gHig){
            if(keyPressed && key != BACKSPACE){
                tet += key;
            }
            if(keyPressed && key == BACKSPACE && tet.length() > 0){
                tet = tet.substring(0, tet.length() - 1);
            }
        }

        fill(0);

        textSize(gHig);
        text(tet, gX, gY+gHig);
    }

    String output(){
        return tet;
    }
}
