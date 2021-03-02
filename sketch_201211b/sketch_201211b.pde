int [] data;
void setup(){
 
  size(200,200);
  //텍스트파일을 문자열로 로딩
  String [] stuff = loadStrings("data.csv");
  data = int(split(stuff[0], ','));
  //split은 data.csv파일을 ,로 구분해서 String배열로 저장한다.
}
void draw(){
  background(255);
  stroke(0);
  for(int i = 0; i < data.length; i ++){
   fill(data[i]);
  // ellipse(i*20, 0, 20, data[i]);
   rect(i*20, 0, 20, data[i]);
  }
  noLoop();
}
[출처] 프로세싱[데이터 처리]텍스트파일 시각화|작성자 친절한삐삐씨

int [] data;
void setup(){
 
  size(1200, 800);
  //load text file as String
  String [] stuff = loadStrings("Mydata3.csv");
  data = int(split(stuff[0], ','));
  //split save Mydata3.csv file as String distinguished by ","
}
void draw(){
  background(255);
  stroke(0);
  for(int i = 0; i < data.length; i ++){
   fill(data[i]);
  // ellipse(i*20, 0, 20, data[i]);
   rect(i*20, 0, 20, data[i]);
  }
  noLoop();
}
[출처] 프로세싱[데이터 처리]텍스트파일 시각화|작성자 친절한삐삐씨
