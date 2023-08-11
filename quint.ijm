macro "FITC Single Brain [f]" {

number = getNumber("Brain slice number?", 01);
id = getImageID();
title = getTitle();
title = getInfo ("image.filename");
selectImage(id);

number_prefix = "_s00";
if (number > 9) number_prefix = substring(number_prefix,0,lengthOf(number_prefix)-1);


title = substring(title,0,lengthOf(title)-4);

path = getDirectory("image");
jpegTitle = title + "_" + "FITC" + number_prefix + number;
smalljpegTitle = "small_" + title + "_" + "FITC" + number_prefix + number;

run("Copy");
run("Internal Clipboard");

saveAs("jpg",path+jpegTitle);

run("Size...", "width=1024 depth=1 constrain average interpolation=Bilinear");
saveAs("jpg",path+smalljpegTitle);

close();
}

macro "DAPI Single Brain [d]" {

number = getNumber("Brain slice number?", 01);
id = getImageID();
title = getTitle();
title = getInfo ("image.filename");
selectImage(id);

number_prefix = "_s00";
if (number > 9) number_prefix = substring(number_prefix,0,lengthOf(number_prefix)-1);

title = substring(title,0,lengthOf(title)-4);

path = getDirectory("image");
jpegTitle = title + "_" + "DAPI" + number_prefix + number;
smalljpegTitle = "small_" + title + "_" + "DAPI" + number_prefix + number;

run("Copy");
run("Internal Clipboard");

saveAs("jpg",path+jpegTitle);

run("Size...", "width=1024 depth=1 constrain average interpolation=Bilinear");
saveAs("jpg",path+smalljpegTitle);

close();
}

macro "Make stack [s]" {
id = getImageID();

path = getDirectory("image");
defaultname = getTitle();
stackname = getString("Stack Name?", defaultname);

run("Images to Stack");
run("Rotate 90 Degrees Left");

saveAs ("Tiff",path+stackname);
}
