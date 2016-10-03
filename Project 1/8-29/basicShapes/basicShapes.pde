size(1000, 1000);

//neck
noStroke();
fill(0,255,0);
rect(460,870, 80,200);

//face

ellipse(500,500,800,800);

//eyes
fill(255);
ellipse(350,350,100,130);
ellipse(1000-350, 350, 100,130);

//pupils
fill(0);
ellipse(470,520, 5,5);
ellipse(1000 - 470,520, 5,5);

//nose
ellipse(380, 350, 10,10);
ellipse(1000-380, 350,10,10);

//mouth
fill(255,0,0);
noStroke();
rect(300,650,400,10);

//teeth
fill(255);
rect(350,640,30,10);
rect(600,640,30,10);

//eyebrows
stroke(0);
line(295,272, 295+100, 272 - 20);
line(1000-395, 272-20, 1000-395+100, 272); 