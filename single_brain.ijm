
color = getString("FITC or DAPI?", "FITC");
id = getImageID();
title = getTitle();
selectImage(id);

path = getDirectory("image");
jpegTitle = title + "_" + color;

run("Copy");
run("Internal Clipboard");

saveAs("jpg",path+jpegTitle);
close();