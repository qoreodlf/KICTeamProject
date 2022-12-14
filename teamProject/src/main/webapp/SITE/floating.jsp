<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자격증 공부하자</title>
<link rel="stylesheet" href="css/floating.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/floating.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/css/floating.css" />

</head>

<body>
	<script type="text/javascript">
    </script>
	<script type="text/javascript"
		src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
	</div>
	<script type="text/javascript">
        jQuery(function ($) {
            $('#btncollapzion').Collapzion({
                _child_attribute: [
                	
                	{
                        'label': '홈',
                        'url': '${pageContext.request.contextPath}/losh/index',
                        'icon': '&#xe9b2;'
                    },
                    
                 
	                    {
	                        'label': '로그인',
	                        'url': '${pageContext.request.contextPath}/member/loginform',
	                        'icon': '&#xea77;'
	                    },
                    
	                    {
	                        'label': '로그아웃',
	                        'url': '#',
	                        'icon': '&#xe9ba;'
	                    },
	                    {
	                        'label': '마이페이지',
	                        'url': '#',
	                        'icon': '&#xe853;'
	                    }
                    
                    
                    
                ],
                _main_btn_color: '#4285f4;',
                _child_btn_color: '#1f2029;',

            });
        });
    </script>

	<div id="btncollapzion" class=" btn_collapzion"></div>
	<script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</body>

<script>

(function($) {
    "use strict";
    $.fn.Collapzion = function(options) {
        // Private Functions
        function debug(e) {
            console.log(e);
        }        
        // Global Private Variables
        var _base = this;
        var _settings = $.extend({
            _pos: {
                'width':'100%',
                'min-height':'20%',
                'position':'fixed',
                'right':'0',
                'left': '-20px',
                'bottom': '-25px',
                'text-align':'center',
                'padding': '0px 8px',
                'display':'block',
                'margin-bottom':'34px'
            },
            _child_attribute:[
                {
                'label':'Post',
                'url':'/',
                'icon':'&#xE150;'
                }
            ],
            _main_btn_color: '#2f353e;',
            _child_btn_color: '#2f353e;'
        }, options );

        _base.init = function(){
            _base.css(_settings._pos);
            _base.append('<a style="background-color:'+_settings._main_btn_color+'" href="javascript:void(0)" class="_col_shadow _collapz_parant _close"></a>');
             
            $('#'+this.attr('id')+ ' a._collapz_parant').on('click',function(){
                var ths = $(this);                
                _base.collapz_btn(ths, _settings._child_attribute);
            });
        };
        // toggle button 
        _base.collapz_btn = function(_element, child_attribute){
            if(_element.hasClass('_close')){
                
                _element.css({
                    '-webkit-transform': 'rotate(90deg)',
                    '-moz-transform': 'rotate(90deg)',
                    'transform': 'rotate(90deg)',
                });
                _element.removeClass('_close');
                _element.addClass('_open');
                
                var _child_el = '<ul class="_child_collapzion">';                
                    jQuery.each(child_attribute, function( i, val ) {
                        _child_el += '<li><span class="_title ">'+val.label+'</span><a href="'+val.url+'" class="_col_shadow _collapz_child edit" style="background-color:'+_settings._child_btn_color+'"><i class="material-icons">'+val.icon+'</i></a></li>';                 
                    });
                _child_el += '</ul>';
               
                _element.parent().append(_child_el);
                $("._child_collapzion" ).css( {'transform':'translate3d(0, -100%, 0)'} );

            } else {
                $("._child_collapzion" ).css( {'transform':'translate3d(0, 0%, 0)'} );
                $(this).parent().find('ul._child_collapzion').remove();
                _element.css({
                    '-webkit-transform': 'rotate(44deg)',
                    '-moz-transform': 'rotate(44deg)',
                    'transform': 'rotate(44deg)',
                });
                _element.removeClass('_open');
                _element.addClass('_close');                
            }          
        }
        _base.clicker = function(e) {
            debug(e);
        };
        _base.init();
    }

}(jQuery));


!function(o){
    "use strict";o.fn.Collapzion=function(t){
    function a(o){
    console.log(o)
 }var l=this,n=o.extend({
    _pos:{
    width:"100%","min-height":"20%",position:"fixed",right:"0",left:"-30px",bottom:"-144px","text-align":"center",padding:"0px 8px",display:"block","margin-bottom":"34px"
 },_child_attribute:[{
    label:"Post",url:"/",icon:"&#xE150;"
 }],_main_btn_color:"#2f353e;",_child_btn_color:"#2f353e;"
 },t);l.init=function(){
    l.css(n._pos),l.append('<a style="background-color:'+n._main_btn_color+'" href="javascript:void(0)" class="_col_shadow _collapz_parant _close"></a>'),o("#"+this.attr("id")+" a._collapz_parant").on("click",function(){
    var t=o(this);l.collapz_btn(t,n._child_attribute)
 })
 },l.collapz_btn=function(t,a){
    if(t.hasClass("_close")){
    t.css({
    "-webkit-transform":"rotate(90deg)","-moz-transform":"rotate(90deg)",transform:"rotate(90deg)"
 }),t.removeClass("_close"),t.addClass("_open");var l='<ul class="_child_collapzion">';jQuery.each(a,function(o,t){
    l+='<li><span class="_title ">'+t.label+'</span><a href="'+t.url+'" class="_col_shadow _collapz_child edit" style="background-color:'+n._child_btn_color+'"><i class="material-icons">'+t.icon+"</i></a></li>"
 }),l+="</ul>",t.parent().append(l),o("._child_collapzion").css({
    transform:"translate3d(0, -100%, 0)"
 })
 }else o("._child_collapzion").css({
    transform:"translate3d(0, 0%, 0)"
 }),o(this).parent().find("ul._child_collapzion").remove(),t.css({
    "-webkit-transform":"rotate(44deg)","-moz-transform":"rotate(44deg)",transform:"rotate(44deg)"
 }),t.removeClass("_open"),t.addClass("_close")
 },l.clicker=function(o){
    a(o)
 },l.init()
 }
 }(jQuery);
 
</script>

</html>