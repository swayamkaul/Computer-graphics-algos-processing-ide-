# Computer Graphics Algorithms in Processing IDE
This repository contians basic algorithms of Computer graphics implemented on Processing IDE. 
This repository also contains a small game project made on Processing IDE.

## Algorithms:
DDA Line Drawing algorithm, 
Bressenham Line Drawing algorithm, Bressenham Circle drawing Algorithm, Midpoint Circle drawing algorithm

### DDA Algorithm
DDA stands for Digital Differential Analyzer. It is an incremental method of scan conversion of line. In this method calculation is performed at each step but by using results of previous steps. <br>

Step1: Start Algorithm<br>

Step2: Declare x1,y1,x2,y2,dx,dy,x,y as integer variables.
<br>
Step3: Enter value of x1,y1,x2,y2.
<br>
Step4: Calculate dx = x2-x1
<br>
Step5: Calculate dy = y2-y1
<br>
Step6: If ABS (dx) > ABS (dy)<br>
            Then step = abs (dx)<br>
            Else<br>
<br>
Step7: xinc=dx/step<br>
            yinc=dy/step<br>
            assign x = x1<br>
            assign y = y1<br>
<br>
Step8: Set pixel (x, y)<br>
<br>
Step9: x = x + xinc<br>
            y = y + yinc<br>
            Set pixels (Round (x), Round (y))<br>
<br>
Step10: Repeat step 9 until x = x2<br>
<br>
Step11: End Algorithm<br>
