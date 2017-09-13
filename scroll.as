function constractScrollPics()
{
	var thumbsLength = thumbsArr.length;

	for(var i = 0; i < thumbsLength; i++)
	{
		currentThumbnail = fullInfoMC.thumbsMC.attachMovie("photoItem", "photoItem" + i, fullInfoMC.thumbsMC.getNextHighestDepth());
		
		currentThumbnail._x = -4;
		
		currentThumbnail._y = i * 212 + 40;
		
		currentThumbnail.i = i;
		
		target = currentThumbnail.photo;
		
		// currentThumbnail.txt.text = galleryXML.firstChild.childNodes[i].childNodes[0].firstChild.childNodes[0].nodeValue;
		
						 var imgLoad = galleryXML.firstChild.childNodes[i].childNodes[0].childNodes[1].firstChild.nodeValue;
		
		loader.loadClip(imgLoad, target);

	}
}