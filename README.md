# Alfresco Case Header

This project provides with the extensions for the Alfresco Repository and Share to present for a folder navigation page (for both the Repository view and the Site view) to show above before the action and folder children listing an html header.

This header is chosen per the folder type. You define a new header by including in the classpath of the repository  (alfresco/extension/site-webscripts/caseheader) a freemarker with the short name of the folder type. For example for the type cm:folder you would want to place in the mentioned path a file called cm_folder.ftl 

If the template for the type of the folder you navigate into is not found nothing is shown.

Out of the box the repository extension amp includes a freemarker template for the basic cm:folder type already.  You can change of course to whatever you find more appropriate and is only meant as an example.

