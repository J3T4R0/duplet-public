main = function(){

	[
	    "ads_left",
	    "page_header",
	    "left_blocks",
	    "im_nav_wrap",
	    "l_ads",
	    "l_ap",
	    "chat_onl_wrap",
	    "im_sound_controls",
	    "im_dialogs_summary",
	    "l_set",
	    "l_nws",
	    "l_nwsf",
	    "l_vid",
	    "l_ph",
	    "l_fr",
	    "feed_bar",
	    "feed_summary_wrap",
	    "pv_hh_fg",
	    "pv_hh",
		"side_panel",
		"myprofile",
		"footer_wrap",
		"myprofile_table"
	].forEach(
		function(id){
			var el = document.getElementById(id);
			if(el){el.style.display = "none"};
		});

	[].forEach.call(
	    document.body.getElementsByTagName("*"),
	    function(el){
	        if(el){el.style.border = "none"};
	    });

	[
	    "side_bar"
	].forEach(
	    function(id){
	        var el = document.getElementById(id);
	        if(el){el.style.top = 0};
	    });
};

console.log("vkmin runs")
main();
if(location.pathname == "/feed"){location.pathname = "/im"};
setInterval(main,500);
console.log("vkmin started OK")
