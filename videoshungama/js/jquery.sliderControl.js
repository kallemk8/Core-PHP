(function($){"use strict";var defaults={type:"",appendTo:"",listContainer:"",listItems:4,contentContainer:"",duration:500};var methods={init:function(options){return this.each(function(){options=$.extend(defaults,options);var self=$(this);var expando=self.get(0)[jQuery.expando];self.attr("id","slider_"+expando);var sliderControl=$("<ul class='slider_navigation' id='slider_navigation_"+expando+"'>");sliderControl.append($("<li class='slider_control'><a class='left_"+expando+"' href='#' title='prev'></a></li>"));sliderControl.append($("<li class='slider_control'><a class='right_"+expando+"' href='#' title='next'></a></li>"));if(options.listContainer!=""&&options.listContainer.length)
{var sliderPostsList=$("<ul class='slider_posts_list clearfix' id='slider_posts_list_"+expando+"'>");var lastSlide;self.children(".slide").each(function(index){$(this).attr("id","slide_"+expando+"_"+index);if(index==0&&options.type!="small")
lastSlide=$("<li id='slider_posts_list_post_"+expando+"_"+index+"' style='width:"+(100/self.children().length)+"%;'><span class='date'>"+($("#slide_"+expando+"_"+index+" .date").length?$("#slide_"+expando+"_"+index+" .date").html():'')+"</span><h5>"+$($("#slide_"+expando+"_"+index+" h2").html()).text()+"</h5></li>");else sliderPostsList.append($("<li id='slider_posts_list_post_"+expando+"_"+index+"' style='width:"+(100/self.children().length)+"%;'><span class='date'>"+($("#slide_"+expando+"_"+index+" .date").length?$("#slide_"+expando+"_"+index+" .date").html():'')+"</span><h5>"+$($("#slide_"+expando+"_"+index+" h2").html()).text()+"</h5></li>"))});sliderPostsList.append(lastSlide);if(options.listContainer!="")
options.listContainer.prepend(sliderPostsList);sliderPostsList.carouFredSel({responsive:!0,items:{visible:options.listItems},scroll:{items:1,easing:"easeInOutQuint",duration:750},auto:{play:!1}});if(sliderPostsList.children().length>options.listItems)
{sliderPostsList.parent().before("<a class='slider_control left slider_control_"+expando+"' href='#' title='prev'></a>");sliderPostsList.parent().after("<a class='slider_control right slider_control_"+expando+"' href='#' title='next'></a>");$("#slider_posts_list_"+expando).parent().parent().hover(function(){$(".slider_posts_list_container .left.slider_control_"+expando).removeClass("slideRightBack").addClass("slideRight");$(".slider_posts_list_container .right.slider_control_"+expando).removeClass("slideLeftBack").addClass("slideLeft")},function(){$(".left.slider_control_"+expando).removeClass("slideRight").addClass("slideRightBack");$(".right.slider_control_"+expando).removeClass("slideLeft").addClass("slideLeftBack")});$(".slider_posts_list_container .left.slider_control_"+expando).click(function(event){event.preventDefault();sliderPostsList.trigger("prevPage");var index=$("#slider_posts_list_"+expando+" li").index($("#slider_posts_list_"+expando+" .current"));if(index==options.listItems)
$(".left_"+expando+":first").trigger("click")});$(".slider_posts_list_container .right.slider_control_"+expando).click(function(event){event.preventDefault();sliderPostsList.trigger("nextPage");var index=$("#slider_posts_list_"+expando+" li").index($("#slider_posts_list_"+expando+" .current"));if(index==0)
$(".right_"+expando+":first").trigger("click")})}}
else{self.children(".slide").each(function(index){$(this).attr("id","slide_"+expando+"_"+index)})}
if(options.appendTo=="")
self.after(sliderControl);else $("#slider_"+expando).find(options.appendTo).append(sliderControl);if(options.listContainer!=""&&options.listContainer.length)
{$("#slider_posts_list_post_"+expando+"_"+(options.type=="small"?"0":"1")).append("<div class='slider_posts_list_progress_block' id='slider_posts_list_progress_block_"+expando+"'></div><div class='slider_posts_list_bar' id='slider_posts_list_bar_"+expando+"'></div>").addClass("current");self.sliderControl("barAnimation",expando);$("#slider_"+expando+", #slider_posts_list_"+expando+", .slider_control_"+expando).hover(function(){$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).stop(!0)},function(){self.sliderControl("barAnimation",expando)})}
var currentSlide=$("#slide_"+expando+"_0");var slideTo;$(".left_"+expando).click(function(event,param){event.preventDefault();self.trigger("isScrolling",function(isScrolling){if(!isScrolling)
{if(currentSlide.prev().length)
slideTo=currentSlide.prev()
else slideTo=currentSlide.parent().children().last();self.sliderControl("slideTo",self,expando,slideTo,options,"left",param);if(parseInt(param)!=2)
currentSlide=slideTo}})});$(".right_"+expando).click(function(event,param){event.preventDefault();self.trigger("isScrolling",function(isScrolling){if(!isScrolling)
{if(currentSlide.next().length)
slideTo=currentSlide.next()
else slideTo=currentSlide.parent().children().first();self.sliderControl("slideTo",self,expando,slideTo,options,"right",param);currentSlide=slideTo}})});var base="x";var scrollOptions={scroll:{easing:"linear",duration:200}};self.swipe({fallbackToMouseEvents:!1,allowPageScroll:"vertical",excludedElements:"button, input, select, textarea, .noSwipe",swipeStatus:function(event,phase,direction,distance,fingerCount,fingerData){if(!self.is(":animated"))
{self.trigger("isScrolling",function(isScrolling){if(!isScrolling)
{$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).stop(!0);if(phase=="move"&&(direction=="left"||direction=="right"))
{if(base=="x")
{self.trigger("configuration",scrollOptions);$("#slider_posts_list_"+expando).trigger("configuration",scrollOptions)}
if(direction=="left")
{if(options.type=="small")
{if(base=="x")
base=0;self.css("left",parseInt(base)-distance+"px")}
else{if(base=="x")
{base=self.offset().left}
self.css("left",parseInt(base)-distance+"px")}}
else if(direction=="right")
{if(options.type=="small")
{if(base=="x"||base==0)
{self.children().last().prependTo(self);base=-self.children().first().width()}
self.css("left",base+distance+"px")}
else{if(base=="x")
{self.children().last().prependTo(self);base=self.offset().left-self.children().first().width()}
self.css("left",base+distance+"px")}}}
else if(phase=="cancel")
{if(distance!=0)
{self.animate({"left":base+"px"},750,"easeInOutQuint",function(){if(options.type=="small")
{if(base==-self.children().first().width())
{self.children().first().appendTo(self);self.css("left","0px");base=0}}})}}
else if(phase=="end")
{if(direction=="right")
{$(".left_"+expando+":first").trigger("click",[2]);self.animate({"left":(options.type=="small"?0:(base+self.children().first().width()))+"px"},200,"linear",function(){if(options.type!="small")
self.children().first().appendTo(self);$(".left_"+expando+":first").trigger("click",[1]);base="x"})}
else if(direction=="left")
{$(".right_"+expando+":first").trigger("click");base="x"}}}})}}});if(options.type!="small")
{$(this).children(".slide").click(function(event,param){var self2=$(this);self.trigger("isScrolling",function(isScrolling){if(!isScrolling)
{if(typeof(param)=="undefined")
{slideTo=(self2.prev().hasClass("slide")?self2.prev():self2.parent().children().last());if(slideTo.attr("id")!=currentSlide.attr("id"))
{self.sliderControl("slideTo",self,expando,slideTo,options);currentSlide=slideTo}}}})})}
if(options.listContainer!=""&&options.listContainer.length)
{$("#slider_posts_list_"+expando+" li").click(function(){var self2=$(this);self.trigger("isScrolling",function(isScrolling){if(!isScrolling)
{var index=self2.attr("id").replace("slider_posts_list_post_"+expando+"_","");if(options.type!="small")
{if((parseInt(index))==0)
index=$("#slider_posts_list_"+expando).children().length;index--}
slideTo=$("#slide_"+expando+"_"+index);if(slideTo.attr("id")!=currentSlide.attr("id"))
{self.sliderControl("slideTo",self,expando,slideTo,options);currentSlide=slideTo}}})})}
self.addClass("pr_initialized")})},barAnimation:function(name,expando){var distance=parseFloat($("#slider_posts_list_bar_"+expando)[0].style.width)/100;if(parseFloat(distance)==0||isNaN(distance))
distance=1;else distance=1-distance;$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).animate({width:"100%"},distance*5000,"linear",function(){$(".right_"+expando+":first").trigger("click",[3])})},slideTo:function(name,self,expando,slide,options,direction,param){var scrollOptions={scroll:{easing:"easeInOutQuint",duration:750}};if(typeof(param)=="undefined")
self.trigger("slideTo",[slide,{direction:(direction=="left"?"prev":"next"),onAfter:function(){self.trigger("configuration",scrollOptions);$("#slider_posts_list_"+expando).trigger("configuration",scrollOptions)}}]);else if(parseInt(param)==1)
self.trigger("slideTo",[slide,{duration:0,direction:(direction=="left"?"prev":"next"),onAfter:function(){self.trigger("configuration",scrollOptions);$("#slider_posts_list_"+expando).trigger("configuration",scrollOptions)}}]);else if(parseInt(param)==3)
self.trigger("slideTo",slide);var index=slide.attr("id").replace("slide_"+expando+"_","");if(options.type!="small")
{if((parseInt(index)+1)==$("#slider_posts_list_"+expando).children().length)
index=0;else index++}
if(options.listContainer!=""&&options.listContainer.length&&(typeof(param)=="undefined"||parseInt(param)==2||parseInt(param)==3))
{$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).css("width",0);var next=$("#slider_posts_list_post_"+expando+"_"+index);$("#slider_posts_list_bar_"+expando).parent().removeClass("current");next.append($("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando)).addClass("current");$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).stop(!0);$.fn.sliderControl("barAnimation",expando);var index2=$("#slider_posts_list_"+expando+" li").index($("#slider_posts_list_"+expando+" .current"));if(index2==options.listItems&&options.listItems==$("#slider_posts_list_"+expando).children().length-1)
{if(direction=="left")
$(".slider_posts_list_container .left.slider_control_"+expando).trigger("click");else $(".slider_posts_list_container .right.slider_control_"+expando).trigger("click")}
else if(index2==options.listItems)
$(".slider_posts_list_container .right.slider_control_"+expando).trigger("click");else if(index2==$("#slider_posts_list_"+expando).children().length-1)
$(".slider_posts_list_container .left.slider_control_"+expando).trigger("click")}},destroy:function(){var expando=$(this).get(0)[jQuery.expando];$(".slider_navigation#slider_navigation_"+expando).remove();$("#slider_posts_list_progress_block_"+expando+", #slider_posts_list_bar_"+expando).clearQueue().stop();$("#slider_posts_list_"+expando).parent().parent().children().remove()}};jQuery.fn.sliderControl=function(method){if(methods[method])
return methods[method].apply(this,arguments);else if(typeof(method)==='object'||!method)
return methods.init.apply(this,arguments)}})(jQuery)