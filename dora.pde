size(255, 255);
noFill();

// gradation
for (int y = 0; y < height; y++) {
  for (int x = 0; x < width; x++) {
    float R = y * 2.0 + x * 0.9;
    float G = (y - 50) * 1.5 - x * 1.2;
    float B = 255 - y * 0.9;
    stroke(R, G, B);
    point(x, y);
  }
}

// init var
int centerX = width / 2;
int centerY = height / 2;

// outer frame
stroke(255);
strokeWeight(25);
rectMode(CENTER);
int outerFrameSize = 276;
rect(centerX, centerY, outerFrameSize, outerFrameSize, 80);

// dora faceline
strokeWeight(16);
int doraFaceSize = 95;
int cornerRound = 82;
line(centerX + doraFaceSize, 75, centerX + doraFaceSize, 180);
arc(centerX + doraFaceSize - cornerRound / 2, 75, cornerRound, cornerRound, radians(270), radians(360));
line(centerX - doraFaceSize + cornerRound / 2, 180 + cornerRound / 2, centerX + doraFaceSize - cornerRound / 2, 180 + cornerRound / 2);
arc(centerX + doraFaceSize - cornerRound / 2, 180, cornerRound, cornerRound, radians(0), radians(90));
arc(centerX - doraFaceSize + cornerRound / 2, 180, cornerRound, cornerRound, radians(90), radians(180));
line(centerX - doraFaceSize, 75, centerX - doraFaceSize, 180);
arc(centerX - doraFaceSize + cornerRound / 2, 75, cornerRound, cornerRound, radians(180), radians(270));

// dora eyes
int doraEyesSizeWidth = 64;
int doraEyesSizeHight = 78;
int doraEyesOffsetX = 32;
int doraEyesOffsetY = centerY - 64;
ellipse(centerX - doraEyesOffsetX, doraEyesOffsetY, doraEyesSizeWidth, doraEyesSizeHight);
ellipse(centerX + doraEyesOffsetX, doraEyesOffsetY, doraEyesSizeWidth, doraEyesSizeHight);

// dora nose
int doraNoseSize = 55;
int doraNoseOffsetY = centerY - 7;
ellipse(centerX, doraNoseOffsetY, doraNoseSize, doraNoseSize);

// dora muzzle
int doraMuzzleOffsetY = centerY + 25;
line(centerX, doraMuzzleOffsetY, centerX, doraMuzzleOffsetY + 48);

// dora whiskers
int doraWiskersOffsetX = 58;
int doraWiskersOffsetY = centerY + 16;
int doraWiskersLength = 30;
int doraWiskersSpace = 30;
line(centerX + doraWiskersOffsetX, doraWiskersOffsetY, centerX + doraWiskersOffsetX + doraWiskersLength, doraWiskersOffsetY);
line(centerX + doraWiskersOffsetX, doraWiskersOffsetY + doraWiskersSpace, centerX + doraWiskersOffsetX + doraWiskersLength, doraWiskersOffsetY + doraWiskersSpace);
line(centerX - doraWiskersOffsetX, doraWiskersOffsetY, centerX - doraWiskersOffsetX - doraWiskersLength, doraWiskersOffsetY);
line(centerX - doraWiskersOffsetX, doraWiskersOffsetY + doraWiskersSpace, centerX - doraWiskersOffsetX - doraWiskersLength, doraWiskersOffsetY + doraWiskersSpace);

save("dora.png");
