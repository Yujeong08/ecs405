//An array of Bubble objects
Bubble[] bubbles;
//A table object
Table table;

void setup() {
  size(1200,800);
  loadData();
}

void draw() {
  background(0);
  //Display all bubbles
  for (Bubble b : bubbles) {
    b.display();
    b.rollover (mouseX, mouseY);
  }
  
  textAlign(LEFT);
  fill(255);
  text (" Click to see information", 10, height-10);
}

void loadData() {
  //Load CSV file into a Table object
  //"header" option indicates the file has a header row
  table = loadTable ("Mydata3.csv");
 
 //The sizw of the array of Bubble objects is determiined by the total number of rows in the CSV
 bubbles = new Bubble[table.getRowCount()];
 
 //You can access iterate over all the rows in a table
 int rowCount = 0;
 for (TableRow row : table.rows()) {
   //You can access the fields via their column name or index or float
    String flim = row.getString("film");
    int rotten_tomatoes = row.getInt("rotten_tomatoes");
    int metacritic = row.getInt("metacritic");
    int imdb = row.getInt("imdb");
    float fandango_stars = row.getFloat("fandango_stars");
    String genre = row.getString ("genre");
    String director = row.getString ("director");
    //Make a Bubble object out of the data read
    bubbles[rowCount] = new Bubble (film, rotten_tomatoes, metacritiv,imdb,fandango_stars,genre,director);
    rowCount++;
 }
}
