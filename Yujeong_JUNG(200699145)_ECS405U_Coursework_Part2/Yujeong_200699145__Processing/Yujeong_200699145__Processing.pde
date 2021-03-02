Flims[] flims;

void setup() {
  size(1200, 800);
  loadData();
  textFont(createFont("Arial",11),11);
  
  /*buttons[0] = new button(100,100,"Click to show Rotten Tomatoes score");
  buttons[1] = new button(200,100,"Click to show Metacritic score");
  buttons[2] = new button(300,100,"Click to show IMDB score");
  buttons[3] = new button(400,100,"Click to show Fandangon Stars score");
  rectMode(CENTER); // for nice centered buttons
  textAlign(CENTER,CENTER); // with nice centered text
  */
} 
  
//Tbale class
Table stats;
  
  void loadData() {

  stats = loadTable ("Mydata3.csv", "header");
  for (int i=0; i<stats.getRowCount(); i++) {
    //Gets an integer from row i, column 0 in the file
    int year = stats.getInt (i, 0);
    //Gets the String from row i, column 1
    String film = stats.getString (i, 1);
    //Gets the integer from row i, column 2
    int RottenTomatoesScore = stats.getInt (i, 2);
    int Metacritic = stats.getInt (i, 3);
    //Gets the float from row i, column 4
    float IMDB = stats.getFloat (i, 4);
    float FandangonStars = stats.getFloat (i, 5);
    //Gets the int from row i, column 6
    int RunTime = stats.getInt (i, 6);
    //Gets the String from row i, column 7
    String Genre = stats.getString (i, 7);
    String Director = stats.getString (i, 8);
    println (year, film, RottenTomatoesScore, Metacritic, IMDB, FandangonStars, RunTime, Genre, Director);
  }
}

void draw() {
  background(0);
  /*// each frame, update all the buttons:
  for (int i=0;i<buttons.length;i++){
    buttons[i].update();
  }
  */
}

   class Flims {;
      int c_year;
      String c_flims;
      int c_rotten_tomatoes;
      int c_metacritic;
      int c_imdb;
      float c_fandango_stars;
      int c_run_time;
      String c_genre;
      String c_director;

      Flims(int p_year, String p_flims, int p_rotten_tomatoes, int p_metacritic, int p_imdb, float p_fandango_stars, int p_run_time, String p_genre, String p_director) { 
        this.c_year = p_year;
        c_flims = p_flims;
        c_rotten_tomatoes = p_rotten_tomatoes;
        c_metacritic = p_metacritic;
        c_imdb = p_imdb;
        c_fandango_stars = p_fandango_stars;
        c_run_time = p_run_time;
        c_genre = p_genre;
        c_director = p_director;
      }
    }
