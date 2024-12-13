color crust, cheese,pepperoni;
int i;
float Cxpos= random(500),Cypos=random(500);
String[] data;
float[] newTimings = new float[200];
  
void setup() {
  size(600,600);
  background(#D4E5AB);
  crust = color(#DADE14);
  cheese = color(#F2B531);
  pepperoni = color(#F22F07);
  data = loadStrings("weeks.txt");
 // to try and make use of the data i tried to get help from this website 
//https://forum.processing.org/one/topic/using-strings-from-text-file-as-input-for-float-variable.html
  for (int i=0; i<200;i++) {
  //  data = split(data[int(i)],".0"); 
  //  newTimings = append(float(data),i);
  //  float[] timings = append(newTimings,i);  
  //  printArray(timings);
  //  print(timings.length);
  // }
  newTimings[i] = random(0,100);
  
  }
}

void draw() {
  //inspired by the repeating trees code
  //
   for (Cxpos++; Cxpos<width; Cxpos=Cxpos+100) {
     //generatePizza(Cxpos,Cypos);
     mouseClicked();
   }
}

void generatePizza() {
  for(int i=0; i<150;i++) {
    if (newTimings[i] > 60) {
      fill(crust);
      circle(mouseX,mouseY,100);
      fill(cheese);
      circle(mouseX,mouseY,90);
      fill(pepperoni);
      circle(mouseX,mouseY,10);
      print(newTimings[i]);
    } else {
      fill(crust);
      circle(mouseX,mouseY,100);
      fill(cheese);
      circle(mouseX,mouseY,90);
    }
  }
 
}
//the mouseclicked was inspireed by the interaction core work
//https://moodle4.city.ac.uk/mod/page/view.php?id=781753
void mouseClicked() {
  generatePizza();
}
