Flims[] flims;

void setup() {
  size(1200, 800);
  loadData();
}
  
 void draw() {
  background(0);
 }
 
 void loadData() {
  Table data = loadTable("Mydata3.csv");
  //now I know how many rows ->no.of objects
  flims = new Flims[data.getRowCount()];
  textSize(30);
  fill(0,102,153);
  for (int i=0; i<data.getRowCount(); i++) {
    String flim = data.getString(i, 1);
    int rotten_tomatoes = data.getInt(i,2);
    int rotten_tomatoes_user = data.getInt(i,3);
    int metacritic = data.getInt(i,4);
    int imdb = data.getInt(i,5);
    float fandango_stars = data.getFloat(i,6);
    flims[i]=new Flims(flim, rotten_tomatoes, rotten_tomatoes_user, metacritic, imdb, fandango_stars);
  }
  println("data is " + flims[0].toString());
}


class Flims {
  String c_flims;
  int c_rotten_tomatoes;
  int c_rotten_tomatoes_user;
  int c_metacritic;
  int c_imdb;
  float c_fandango_stars;

  Flims(String p_flims, int p_rotten_tomatoes, int p_rotten_tomatoes_user, int p_metacritic, int p_imdb, float p_fandango_stars) {
  this.c_flims = p_flims;
  c_rotten_tomatoes = p_rotten_tomatoes;
  c_rotten_tomatoes_user = p_rotten_tomatoes_user;
  c_metacritic = p_metacritic;
  c_imdb = p_imdb;
  c_fandango_stars = p_fandango_stars;
  }

}
