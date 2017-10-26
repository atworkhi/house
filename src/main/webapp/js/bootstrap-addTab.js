
var addTabs = function(options) {
	var id = options.id;
	var url = options.url;
	var title = options.title;
	var ifr = $('#ifr_' + options.id);
	//先移除所有激活的tab
	$(".active").removeClass("active");
	if (!ifr[0]) {//如果不存在则新建一个
		var li = '<li role="presentation" id="li_'+options.id+'"><a href="#tab_' + options.id + '" role="tab" data-toggle="tab">'+options.title+'</a></li>';
		var tab = '<div role="tabpanel" class="tab-pane" id="tab_' + options.id + '">' 
				+ '<iframe  id="ifr_' + options.id + '" src="' + options.url + '" marginheight="0" marginwidth="0"  width="100%" height="1000" frameborder="0" scrolling="yes">' 
				+ '</div>';
		//将li 和 tab添加到指定位置
		$(".nav-tabs").append(li);
		$(".tab-content").append(tab);
	}else{
		//如果存在则重新加载页面
		$('#ifr_'+options.id).attr('src',$('#ifr_'+options.id).attr('src'));
	}
	//激活tab
	$('#li_'+options.id).addClass('active');
	$('#tab_'+options.id).addClass('active');

}
//
//function setIframeHeight(id){
//	try{
//		var iframe = document.getElementById(id);
//		if(iframe.attachEvent){
//			iframe.attachEvent("onload", function(){
//				iframe.height =  iframe.contentWindow.document.documentElement.scrollHeight;
//			});
//			return;
//		}else{
//			iframe.onload = function(){
//				iframe.height = iframe.contentDocument.body.scrollHeight;
//			};
//			return;				 
//		}	 
//	}catch(e){
//		throw new Error('setIframeHeight Error');
//	}
//}