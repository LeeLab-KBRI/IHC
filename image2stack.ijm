id = getImageID();

path = getDirectory("image");
defaultname = getTitle();
stackname = getString("Stack Name?", defaultname);

run("Images to Stack");
run("Rotate 90 Degrees Left");

saveAs ("Tiff",path+stackname);
