color = getString("Color?", "FITC");
number = getNumber("Brain slice number?", 1);
id = getImageID();
title = getTitle();
title = getInfo ("image.filename");
selectImage(id);

title = substring(title,0,lengthOf(title)-4);

path = getDirectory("image");
jpegTitle = title + "_" + color + "_s00" + number;
smalljpegTitle = "small_" + title + "_" + color + "_s00" + number;

run("Copy");
run("Internal Clipboard");

saveAs("jpg",path+jpegTitle);

run("Size...", "width=1024 depth=1 constrain average interpolation=Bilinear");
saveAs("jpg",path+smalljpegTitle);

close();
