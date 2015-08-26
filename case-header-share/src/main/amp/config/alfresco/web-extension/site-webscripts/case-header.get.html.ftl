<div id="caseHeader"></div>

<script>

YAHOO.Bubbling.on("filterChanged", function CH_FilterChanged(layer, args) { 
	var casepage=window.location.href;
	var casepath="";
	var casepathterms=casepage.split("#filter=path");
	if(casepathterms.length>1){
		casepath=decodeURIComponent(decodeURIComponent(casepath+casepathterms[1].split("&page=")[0]));
	}else{
		casepath="/";
	}
	var casepath_isrepo=casepage.indexOf("/share/page/repository")!=-1;
	if(!casepath_isrepo){
		var casepath_siteid=casepage.split("/share/page/site/")[1].split("/documentlibrary")[0];
		casepath="/Sites/"+casepath_siteid+"/documentLibrary"+casepath;
	}
	casepath="Company Home"+casepath.replace('|','').replace('|','');
	Alfresco.util.Ajax.request({
 		url: Alfresco.constants.PROXY_URI + "caseheader/"+casepath,
		method: Alfresco.util.Ajax.GET,
		dataObj:
		{

		},
		successCallback:
		{
		fn: function casepath_success(response){
			document.getElementById("caseHeader").innerHTML=response.serverResponse.responseText;
		}, // Success method call
		scope: this
		}
	});
}); 
</script>