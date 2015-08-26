var folder = roothome.childByNamePath(url.extension);
if(folder!=null) {
	model["folder"] = folder;
	model["casepath"] = "/caseheader/"+folder.typeShort.replace(":","_")+".ftl";
}
