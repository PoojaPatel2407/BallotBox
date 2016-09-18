
<!DOCTYPE html>
<html lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="http://demo.rescuethemes.com/politics-plus/xmlrpc.php">

<title>Registration</title>

<script type="text/javascript">

function validate()
            {
                var election_id = document.getElementById("election_id");
                var candidate_no = document.getElementById("candidate_no");
                var voter_no = document.getElementById("voter_no");
                
                var msg_elec_id = document.getElementById("msg_elec_id");
                var msg_candidate = document.getElementById("msg_candidate");
                var msg_voter = document.getElementById("msg_voter");
                
                //Resetting msg if already exist
                msg_candidate.innerHTML="";
                msg_voter.innerHTML="";
                
                var valid = true; //initialize valid variable
                
                 if (!/^[0-9]*$/g.test(candidate_no.value)) 
                    {
                    candidate_no.value="";
                    msg_candidate.innerHTML="Only Numeric Feild.";
                    valid = false;
                    }
                 if (!/^[0-9]*$/g.test(voter_no.value)) 
                    {
                    voter_no.value="";
                    msg_voter.innerHTML="Only Numeric Feild.";
                    valid = false;
                    }
                return valid;
            };
                                 
            //start hour------------------------
            function hour_validate()
            {
                var start_hours = document.getElementById("start_hours");             
                msg_time.innerHTML="";
               if (!/^[0-9]*$/g.test(start_hours.value)) 
                    {
                    start_hours.value="";
                    msg_time.innerHTML="Only Numeric Feild.";
                    }                 
               else if(start_hours.value>=1 && start_hours.value<=12)
                    {
                    msg_time.innerHTML="";
                    }
               else
                    {
                    start_hours.value="";
                    msg_time.innerHTML="Enter Number between 1 to 12";
                    }                   
            };
            
            //start_min--------------------
            function min_validate()
            {
                var start_minutes = document.getElementById("start_minutes");            
                msg_time.innerHTML="";
               if (!/^[0-9]*$/g.test(start_minutes.value)) 
                    {
                    start_minutes.value="";
                    msg_time.innerHTML="Only Numeric Feild.";
                    }                 
               else if(start_minutes.value>=0 && start_minutes.value<=60)
                    {
                   msg_time.innerHTML="";
                    }
               else
                    {   
                     start_minutes.value="";
                    msg_time.innerHTML="Enter Number between 0 to 60" ;
                    }              
            };
            
            //end hour----------------------------------
            function endhour_validate()
            {
                var end_hours = document.getElementById("end_hours");   
                msg_time_end.innerHTML="";
                
                    if (!/^[0-9]*$/g.test(end_hours.value)) 
                    {
                    end_hours.value="";
                    msg_time_end.innerHTML="Only Numeric Feild.";
                    }                 
               else if(end_hours.value>=1 && end_hours.value<=12)
                    {
                    msg_time_end.innerHTML="";
                    }
               else
                    {
                    end_hours.value="";
                    msg_time_end.innerHTML="Enter Number between 1 to 12";
                    }
            };
            
       //end min----------------------------------------------
            function endmin_validate()
            {
                var end_minutes = document.getElementById("end_minutes");
                msg_time_end.innerHTML="";
               
                    if (!/^[0-9]*$/g.test(end_minutes.value)) 
                    {
                    end_minutes.value="";
                    msg_time_end.innerHTML="Only Numeric Feild.";
                    }                 
               else if(end_minutes.value>=0 && end_minutes.value<=60)
                    {
                   msg_time_end.innerHTML="";
                    }
               else
                    {   
                     end_minutes.value="";
                    msg_time_end.innerHTML="Enter Number between 0 to 60" ;
                    }
            };      
            

</script>

<!-- This site is optimized with the Yoast SEO plugin v3.1.1 - https://yoast.com/wordpress/plugins/seo/ -->
<link rel="canonical" href="http://demo.rescuethemes.com/politics-plus/contact/" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="Get In Touch! - Politics Plus" />
<meta property="og:description" content="A contact form is a great way to offer your readers the ability to get in touch, without giving out your personal email address. You can add contact forms to any post or page from the editor with the Jetpack Contact module activated." />
<meta property="og:url" content="http://demo.rescuethemes.com/politics-plus/contact/" />
<meta property="og:site_name" content="Politics Plus" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:description" content="A contact form is a great way to offer your readers the ability to get in touch, without giving out your personal email address. You can add contact forms to any post or page from the editor with the Jetpack Contact module activated." />
<meta name="twitter:title" content="Get In Touch! - Politics Plus" />
<!-- / Yoast SEO plugin. -->

<link rel="alternate" type="application/rss+xml" title="Politics Plus &raquo; Feed" href="http://demo.rescuethemes.com/politics-plus/feed/" />
<link rel="alternate" type="application/rss+xml" title="Politics Plus &raquo; Comments Feed" href="http://demo.rescuethemes.com/politics-plus/comments/feed/" />
		<script type="text/javascript" src="http://gc.kis.scr.kaspersky-labs.com/1B74BD89-2A22-4B93-B451-1C9E1052A0EC/main.js" charset="UTF-8"></script><script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/demo.rescuethemes.com\/politics-plus\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.4.2"}};
			!function(a,b,c){function d(a){var c,d=b.createElement("canvas"),e=d.getContext&&d.getContext("2d"),f=String.fromCharCode;return e&&e.fillText?(e.textBaseline="top",e.font="600 32px Arial","flag"===a?(e.fillText(f(55356,56806,55356,56826),0,0),d.toDataURL().length>3e3):"diversity"===a?(e.fillText(f(55356,57221),0,0),c=e.getImageData(16,16,1,1).data.toString(),e.fillText(f(55356,57221,55356,57343),0,0),c!==e.getImageData(16,16,1,1).data.toString()):("simple"===a?e.fillText(f(55357,56835),0,0):e.fillText(f(55356,57135),0,0),0!==e.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8"),diversity:d("diversity")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8&&c.supports.diversity||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='font-awesome-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/rescue-shortcodes/includes/css/font-awesome.min.css?ver=4.3.0' type='text/css' media='all' />
<link rel='stylesheet' id='rescue_shortcode_styles-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/rescue-shortcodes/includes/css/rescue_shortcodes_styles.css?ver=4.4.2' type='text/css' media='all' />
<link rel='stylesheet' id='give-styles-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/give/templates/give.min.css?ver=1.3.5' type='text/css' media='all' />
<link rel='stylesheet' id='mailbag_form_css-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/mailbag/includes/css/form-style.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-layout-css'  href='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=2.5.3' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=2.5.3' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css'  href='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=2.5.3' type='text/css' media='all' />
<link rel='stylesheet' id='politics-foundation-style-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/app.css?ver=5.5.2' type='text/css' media='all' />
<link rel='stylesheet' id='politics-plus-style-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/style.css?ver=1.0.3' type='text/css' media='all' />
<link rel='stylesheet' id='politics_plus_customizer_fonts-css'  href='//fonts.googleapis.com/css?family=Lora%3Aregular%2Citalic%2C700|Open+Sans%3Aregular%2Citalic%2C700%26subset%3Dlatin%2C' type='text/css' media='screen' />
<link rel='stylesheet' id='politics-plus-shop-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/css/shop.css?ver=1.0.3' type='text/css' media='all' />
<!-- `sharedaddy` is included in the concatenated jetpack.css -->
<link rel='stylesheet' id='genericons-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/jetpack/_inc/genericons/genericons/genericons.css?ver=3.1' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/jetpack/css/jetpack.css?ver=3.9.2' type='text/css' media='all' />
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-includes/js/jquery/jquery.js?ver=1.11.3'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var give_global_vars = {"ajaxurl":"http:\/\/demo.rescuethemes.com\/politics-plus\/wp-admin\/admin-ajax.php","checkout_nonce":"afea318a2a","currency_sign":"$","currency_pos":"before","thousands_separator":",","decimal_separator":".","no_gateway":"Please select a payment method","general_loading":"Loading...","purchase_loading":"Please Wait...","give_version":"1.3.5"};
var give_scripts = {"ajaxurl":"http:\/\/demo.rescuethemes.com\/politics-plus\/wp-admin\/admin-ajax.php","position_in_cart":"-1","loading":"Loading","select_option":"Please select an option","default_gateway":"manual","permalinks":"1","number_decimals":"2"};
/* ]]> */
</script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/give/assets/js/frontend/give.all.min.js?ver=1.3.5'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/mailbag/includes/js/jquery.ajaxchimp.js?ver=1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var mailbag_js_vars = {"ajaxURL":"https:\/\/rescuethemes.us6.list-manage.com\/subscribe?u=e996b9d9a5&id=622f96b1d8"};
/* ]]> */
</script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/mailbag/includes/js/mailbag.js?ver=1'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/modernizr.js?ver=2.8.3'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/sticky-header.js?ver=1.0.3'></script>
<link rel='https://api.w.org/' href='http://demo.rescuethemes.com/politics-plus/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://demo.rescuethemes.com/politics-plus/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.4.2" />
<meta name="generator" content="WooCommerce 2.5.3" />
<link rel='shortlink' href='http://demo.rescuethemes.com/politics-plus/?p=10' />
<link rel="alternate" type="application/json+oembed" href="http://demo.rescuethemes.com/politics-plus/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.rescuethemes.com%2Fpolitics-plus%2Fcontact%2F" />
<link rel="alternate" type="text/xml+oembed" href="http://demo.rescuethemes.com/politics-plus/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.rescuethemes.com%2Fpolitics-plus%2Fcontact%2F&#038;format=xml" />
<meta name="generator" content="Give v1.3.5" />
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-52084679-15']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
<style type='text/css'>img#wpstats{display:none}</style>
<!-- Begin Custom CSS -->
<style type="text/css" id="politics-plus-custom-css">
		.site-branding img {
			height: ;
			width: 225px;
		}
	


  .home .home_paralax::before {
    background-color: #465a63;
    background: url('http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/img/home-paralax.jpg') no-repeat center center;
    background-size: cover;
  }

	.color-overlay:before{opacity:0.5;}#site-navigation li:hover > a, #site-navigation ul li ul.sub-menu li a:hover{color:#efefef;}
</style>
<!-- End Custom CSS -->
<link rel="icon" href="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/uploads/sites/17/2015/09/cropped-logo-150x150.png" sizes="32x32" />
<link rel="icon" href="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/uploads/sites/17/2015/09/cropped-logo-300x300.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/uploads/sites/17/2015/09/cropped-logo-180x180.png" />
<meta name="msapplication-TileImage" content="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/uploads/sites/17/2015/09/cropped-logo-300x300.png" />
<!-- WooCommerce Colors -->
<style type="text/css">
p.demo_store{background-color:#2196f3;color:#fff;}.woocommerce small.note{color:#777;}.woocommerce .woocommerce-breadcrumb{color:#777;}.woocommerce .woocommerce-breadcrumb a{color:#777;}.woocommerce div.product span.price,.woocommerce div.product p.price{color:#ef5350;}.woocommerce div.product .stock{color:#ef5350;}.woocommerce span.onsale{background-color:#ef5350;color:#fff;}.woocommerce ul.products li.product .price{color:#ef5350;}.woocommerce ul.products li.product .price .from{color:rgba(167, 152, 152, 0.5);}.woocommerce nav.woocommerce-pagination ul{border:1px solid #d3ced3;}.woocommerce nav.woocommerce-pagination ul li{border-right:1px solid #d3ced3;}.woocommerce nav.woocommerce-pagination ul li span.current,.woocommerce nav.woocommerce-pagination ul li a:hover,.woocommerce nav.woocommerce-pagination ul li a:focus{background:#ebe9eb;color:#8a7e8a;}.woocommerce a.button,.woocommerce button.button,.woocommerce input.button,.woocommerce #respond input#submit{color:#515151;background-color:#ebe9eb;}.woocommerce a.button:hover,.woocommerce button.button:hover,.woocommerce input.button:hover,.woocommerce #respond input#submit:hover{background-color:#dad8da;color:#515151;}.woocommerce a.button.alt,.woocommerce button.button.alt,.woocommerce input.button.alt,.woocommerce #respond input#submit.alt{background-color:#2196f3;color:#fff;}.woocommerce a.button.alt:hover,.woocommerce button.button.alt:hover,.woocommerce input.button.alt:hover,.woocommerce #respond input#submit.alt:hover{background-color:#1085e2;color:#fff;}.woocommerce a.button.alt.disabled,.woocommerce button.button.alt.disabled,.woocommerce input.button.alt.disabled,.woocommerce #respond input#submit.alt.disabled,.woocommerce a.button.alt:disabled,.woocommerce button.button.alt:disabled,.woocommerce input.button.alt:disabled,.woocommerce #respond input#submit.alt:disabled,.woocommerce a.button.alt:disabled[disabled],.woocommerce button.button.alt:disabled[disabled],.woocommerce input.button.alt:disabled[disabled],.woocommerce #respond input#submit.alt:disabled[disabled],.woocommerce a.button.alt.disabled:hover,.woocommerce button.button.alt.disabled:hover,.woocommerce input.button.alt.disabled:hover,.woocommerce #respond input#submit.alt.disabled:hover,.woocommerce a.button.alt:disabled:hover,.woocommerce button.button.alt:disabled:hover,.woocommerce input.button.alt:disabled:hover,.woocommerce #respond input#submit.alt:disabled:hover,.woocommerce a.button.alt:disabled[disabled]:hover,.woocommerce button.button.alt:disabled[disabled]:hover,.woocommerce input.button.alt:disabled[disabled]:hover,.woocommerce #respond input#submit.alt:disabled[disabled]:hover{background-color:#2196f3;color:#fff;}.woocommerce a.button:disabled:hover,.woocommerce button.button:disabled:hover,.woocommerce input.button:disabled:hover,.woocommerce #respond input#submit:disabled:hover,.woocommerce a.button.disabled:hover,.woocommerce button.button.disabled:hover,.woocommerce input.button.disabled:hover,.woocommerce #respond input#submit.disabled:hover,.woocommerce a.button:disabled[disabled]:hover,.woocommerce button.button:disabled[disabled]:hover,.woocommerce input.button:disabled[disabled]:hover,.woocommerce #respond input#submit:disabled[disabled]:hover{background-color:#ebe9eb;}.woocommerce #reviews h2 small{color:#777;}.woocommerce #reviews h2 small a{color:#777;}.woocommerce #reviews #comments ol.commentlist li .meta{color:#777;}.woocommerce #reviews #comments ol.commentlist li img.avatar{background:#ebe9eb;border:1px solid #e4e1e4;}.woocommerce #reviews #comments ol.commentlist li .comment-text{border:1px solid #e4e1e4;}.woocommerce #reviews #comments ol.commentlist #respond{border:1px solid #e4e1e4;}.woocommerce .star-rating:before{color:#d3ced3;}.woocommerce.widget_shopping_cart .total,.woocommerce .widget_shopping_cart .total{border-top:3px double #ebe9eb;}.woocommerce form.login,.woocommerce form.checkout_coupon,.woocommerce form.register{border:1px solid #d3ced3;}.woocommerce .order_details li{border-right:1px dashed #d3ced3;}.woocommerce .widget_price_filter .ui-slider .ui-slider-handle{background-color:#2196f3;}.woocommerce .widget_price_filter .ui-slider .ui-slider-range{background-color:#2196f3;}.woocommerce .widget_price_filter .price_slider_wrapper .ui-widget-content{background-color:#0052af;}.woocommerce-cart table.cart td.actions .coupon .input-text{border:1px solid #d3ced3;}.woocommerce-cart .cart-collaterals .cart_totals p small{color:#777;}.woocommerce-cart .cart-collaterals .cart_totals table small{color:#777;}.woocommerce-cart .cart-collaterals .cart_totals .discount td{color:#ef5350;}.woocommerce-cart .cart-collaterals .cart_totals tr td,.woocommerce-cart .cart-collaterals .cart_totals tr th{border-top:1px solid #ebe9eb;}.woocommerce-checkout .checkout .create-account small{color:#777;}.woocommerce-checkout #payment{background:#ebe9eb;}.woocommerce-checkout #payment ul.payment_methods{border-bottom:1px solid #d3ced3;}.woocommerce-checkout #payment div.payment_box{background-color:#dfdcdf;color:#515151;}.woocommerce-checkout #payment div.payment_box input.input-text,.woocommerce-checkout #payment div.payment_box textarea{border-color:#c7c1c7;border-top-color:#bab4ba;}.woocommerce-checkout #payment div.payment_box ::-webkit-input-placeholder{color:#bab4ba;}.woocommerce-checkout #payment div.payment_box :-moz-placeholder{color:#bab4ba;}.woocommerce-checkout #payment div.payment_box :-ms-input-placeholder{color:#bab4ba;}.woocommerce-checkout #payment div.payment_box span.help{color:#777;}.woocommerce-checkout #payment div.payment_box:after{content:"";display:block;border:8px solid #dfdcdf;border-right-color:transparent;border-left-color:transparent;border-top-color:transparent;position:absolute;top:-3px;left:0;margin:-1em 0 0 2em;}
</style>
<!--/WooCommerce Colors-->
</head>

<body class="page page-id-10 page-template-default give-donation-history give-page give-test-mode">

<div id="page" class="hfeed site">

<header class="mini-header-wrap" role="banner">
	<div class="mini-header">
		<div class="row ">

			<div class="large-3 columns">

						<!-- .social-navigation -->
			
			</div><!-- .large-3 -->

			<div class="large-9 columns header-contact">

								<div class="header-phone">

					
					

				</div><!-- .header-phone -->
				
								<div class="header-address">

					
					

				</div><!-- .header-address -->
				
			</div><!-- .large-9 -->

		</div><!-- .row -->
	</div><!-- .mini-header -->
</header><!-- .mini-header-wrap -->

<header id="masthead" class="site-header" role="banner">

	<div class="row">
		<div class="large-12 columns">

		<div class="site-branding">

		
			<!--<a href="http://demo.rescuethemes.com/politics-plus/" rel="home">
				<img src="http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/img/logo.png" alt="Politics Plus">
			</a>-->
			<h3><a href="home.jsp">Ballot Box</a></h3>

		
		</div><!-- .site-branding -->

<nav id="site-navigation" role="navigation" aria-label="Primary Menu">

        <ul id="menu-primary" class="main-navigation" role="menubar">
        <li id="menu-item-25" class="blue menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-5 current_page_item menu-item-25"><a href="home.jsp">Home</a></li>
<li id="menu-item-27" class="red menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-27" aria-haspopup="true" aria-expanded="false" tabindex="0"><a href="#">Campaigning</a>
<ul class="sub-menu" role="menu">
    <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-28"><a href="volunteer.jsp">Volunteer</a></li>
    <li id="menu-item-327" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-327"><a href="listElection.jsp">Elections</a>
    </li>
    </ul>
    </li>
    <!--<li id="menu-item-29" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-29"><a href="http://demo.rescuethemes.com/politics-plus/full-width/">Full Width</a></li>
    <li id="menu-item-151" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-151"><a href="http://demo.rescuethemes.com/politics-plus/404">404 Error</a></li>
    <li id="menu-item-172" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-172"><a href="http://demo.rescuethemes.com/politics-plus/donate/">Donate</a></li>
    <li id="menu-item-299" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-299"><a href="http://demo.rescuethemes.com/politics-plus/volunteer/">Volunteer</a></li>
</ul>
</li>-->
<!--<li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="">Campaigning</a></li>
<ul class="sub-menu" role="menu">
    <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-28"><a href="volunteer.jsp">Volunteer</a></li>
    <li id="menu-item-327" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-327"><a href="">Elections</a></li>
</ul>
</li>
<!--<li id="menu-item-182" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-182" aria-haspopup="true" aria-expanded="false" tabindex="0"><a href="http://demo.rescuethemes.com/politics-plus/shop/">Shop</a>
<ul class="sub-menu" role="menu">
    <li id="menu-item-181" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-181"><a href="http://demo.rescuethemes.com/politics-plus/cart/">Cart</a></li>
    <li id="menu-item-180" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-180"><a href="http://demo.rescuethemes.com/politics-plus/checkout/">Checkout</a></li>
    <li id="menu-item-179" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-179"><a href="http://demo.rescuethemes.com/politics-plus/my-account/">My Account</a></li>
</ul>
</li>-->
<!--<li id="menu-item-30" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-30">
<a href="Elections.html">Elections</a></li>-->

<li id="menu-item-290" class="blue click-effect menu-item menu-item-type-post_type menu-item-object-page menu-item-290">
<a href="Login.jsp">Candidate</a></li>

<li id="menu-item-32" class="red click-effect menu-item menu-item-type-post_type menu-item-object-page menu-item-32">
<a href="AdminLogin.jsp">Administrator</a>
<ul class="sub-menu" role="menu">
    <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-28"><a href="AdminLogin.jsp">Admin Login</a></li>
    <li id="menu-item-327" class="menu-item menu-item-type-post_type menu-item-objecst-page menu-item-327"><a href="viewvolunteerlist.jsp">Volunteer List</a></li>
</ul>
</li>

<li id="menu-item-33" class="blue click-effect menu-item menu-item-type-post_type menu-item-object-page menu-item-33">
<a href="VoterLogin1.jsp">Voter</a></li>

</ul>
        </nav><!-- #site-navigation -->

		</div><!-- .large-12 -->
	</div><!-- .row -->

			<hr>
	
	</header><!-- #masthead -->

	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	
<div id="content" class="site-content" role="main">

<div class="row">

  
  <div class="large-8  columns">

<div id="primary" class="content-area">
<!--   	 <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="stylelogin.css">

    -->
    
    
  </head>

  <body>

   <!-- <div class="loginform-open">
  <a href=""><i class="fa fa-list-alt fa-lg"></i> Login Form</a>
</div>-->


<% 
 //check if session variable exists, if yes then show error msg
 if(null != session.getAttribute("election_id_exists")) 
 {
Object hashtag_not_exists = session.getAttribute("election_id_exists"); 
if(hashtag_not_exists.equals("1"))
{
%>
<p style="color:red" >Election ID Exists. Try a different ID.</p>
<% 
}
session.removeAttribute("election_id_exists");
}
%>


<form action="RegistrationServlet" method="post" onsubmit="return validate()">

Please Enter Your Election ID: <input type="text" name="election_id" id="election_id" required></br>
<p style="color:red" id="msg_elec_id"></p>
Enter Password: <input type="password" name="election_pwd" id="election_pwd" required></br>
<p></p>
Number of Candidates: <input type="text" name="candidate_no" id="candidate_no" required></br>
<p style="color:red" id="msg_candidate"></p>
Number of Voters: <input type="text" name="voter_no" id="voter_no" required></br>
<p style="color:red" id="msg_voter"></p>
Election Start Date: <select name="start_month" name="start_month" required>
    <option value="01">January</option>
    <option value="02">February</option>
    <option value="03">March</option>
    <option value="04">April</option>
    <option value="05">May</option>
    <option value="06">June</option>
    <option value="07">July</option>
    <option value="08">August</option>
    <option value="09">September</option>
    <option value="10">October</option>
    <option value="11">November</option>
    <option value="12">December</option>
  </select>
  
  <select name="start_day" name=start_day required>
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
    <option value="26">26</option>
    <option value="27">27</option>
    <option value="28">28</option>
    <option value="29">29</option>
    <option value="30">30</option>
    <option value="31">31</option>
  </select>
  
  <select id="start_year" name="start_year" required></select>
  <script>

var min = new Date().getFullYear(),
    max = min + 2,
    select = document.getElementById('start_year');

for (var i = min; i<=max; i++){
    var opt = document.createElement('option');
    opt.value = i;
    opt.innerHTML = i;
    select.appendChild(opt);
}

</script>
  
  <input type="text" name="start_hours" id="start_hours" size="5" placeholder="hours" onblur="hour_validate()" required>
  
  <input type="text" name="start_minutes" id="start_minutes" size="5" placeholder="minutes" onblur="min_validate()" required>
  
  <select name="start_period" name="start_period" required>
    <option value="AM">AM</option>
    <option value="PM">PM</option>
  </select>
  <p style="color:red" id="msg_time"></p></br>
  
  
  
  <!-- *************************************************** -->
  
  Election End Date: <select name="end_month" name="end_month" required>
    <option value="01">January</option>
    <option value="02">February</option>
    <option value="03">March</option>
    <option value="04">April</option>
    <option value="05">May</option>
    <option value="06">June</option>
    <option value="07">July</option>
    <option value="08">August</option>
    <option value="09">September</option>
    <option value="10">October</option>
    <option value="11">November</option>
    <option value="12">December</option>
  </select>
  
  <select name="end_day" name=end_day required>
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
    <option value="26">26</option>
    <option value="27">27</option>
    <option value="28">28</option>
    <option value="29">29</option>
    <option value="30">30</option>
    <option value="31">31</option>
  </select>
  
  <select id="end_year" name="end_year" required></select>
  <script>
var min = new Date().getFullYear(),
    max = min + 2,
    select = document.getElementById('end_year');

for (var i = min; i<=max; i++){
    var opt = document.createElement('option');
    opt.value = i;
    opt.innerHTML = i;
    select.appendChild(opt);
}
</script>
  
  <input type="text" name="end_hours" id="end_hours" size="5" placeholder="hours" onblur="endhour_validate()" required>
  
  <input type="text" name="end_minutes" id="end_minutes" size="5" placeholder="minutes" onblur="endmin_validate()" required>
  
  <select name="end_period" name="end_period" required>
    <option value="AM">AM</option>
    <option value="PM">PM</option>
  </select>
  <p style="color:red" id="msg_time_end"></p></br>
  
  <!--  *************************************************** -->

  
<input type="submit" value="Register" >
</form>


    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>




  

  </div><!-- .large-8 -->

	</div><!-- .large-3 .offset-1 -->
  
</div><!-- .row -->

	</div><!-- #content -->

</div><!-- #page -->

<div class="footer-wrap" role="contentinfo">

	<footer id="colophon" class="site-footer">

		<div class="row footer-full-wrap">

			<div class="large-12 columns">
							</div>

		</div><!-- .row -->





		<div class="row">

			<div class="large-12 columns">

				<hr>

				<div class="copyright-info">

					&copy; Copyright 2015 <a>Rescue Themes</a>. All Rights Reserved. Paid for by the campaign.
				</div><!-- .copyright-info -->

			</div><!-- .large-12 -->

		</div><!-- .row -->

	</footer><!-- #colophon -->

</div><!-- .footer-wrap -->

<!-- `grunion.css` is included in the concatenated jetpack.css -->
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/politics-plus\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/politics-plus\/contact\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View Cart","cart_url":"http:\/\/demo.rescuethemes.com\/politics-plus\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=2.5.3'></script>
<script type='text/javascript' src='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/politics-plus\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/politics-plus\/contact\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=2.5.3'></script>
<script type='text/javascript' src='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/politics-plus\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/politics-plus\/contact\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='//8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=2.5.3'></script>
<script type='text/javascript' src='http://s0.wp.com/wp-content/js/devicepx-jetpack.js?ver=201611'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/foundation.js?ver=5.5.2'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-includes/js/jquery/ui/effect.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/jquery.slicknav.min.js?ver=1.0.4'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/skip-link-focus-fix.js?ver=20130115'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/themes/politics-plus/js/scripts.js?ver=1.0'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-includes/js/wp-embed.min.js?ver=4.4.2'></script>
<script type='text/javascript' src='http://8317-presscdn-0-96.pagely.netdna-cdn.com/politics-plus/wp-content/plugins/rescue-shortcodes/includes/js/rescue_googlemap.js?ver=1.0'></script>
<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?sensor=false&#038;ver=1.0'></script>
<script type='text/javascript' src='http://stats.wp.com/e-201611.js' async defer></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:3.9.2',blog:'98811088',post:'10',tz:'0',srv:'demo.rescuethemes.com'} ]);
	_stq.push([ 'clickTrackerInit', '98811088', '10' ]);
</script>

</body>
</html>
