var widthClassOptions = [];
var widthClassOptions = ({
		bestseller       : 'bestseller_default_width',		
		featured         : 'featured_default_width',
		special          : 'special_default_width',
		latest           : 'latest_default_width',
		related          : 'related_default_width',
		additional       : 'additional_default_width',
		tabbestseller    : 'tabbestseller_default_width',		
		tabfeatured      : 'tabfeatured_default_width',
		tabspecial       : 'tabspecial_default_width',
		tablatest        : 'tablatest_default_width',
		blog         	 : 'blog_default_width',
		testimonial		 : 'testimonial_default_width',
		module           : 'module_default_width'		
});

$(document).ready(function(){
	
	$('ul.breadcrumb').prependTo('.row #title-content');
	$('#content h1').prependTo('.row #title-content');
	$('#content h2').prependTo('.row #title-content');
	$('#content .sidebarFilter').appendTo('.content-top');
	$('#content select').customSelect();
	
	/* Responsive touch and hover manage  */
	$( '#menu li:has(ul)' ).doubleTapToGo();
		
	$('input[type="checkbox"]').tmMark(); 
	$('input[type="radio"]').tmMark();

	/*for responsive menu*/
	if ($(window).width() < 980){
		$('#menu').css('display','none');
	}	

	//toggle closed when other open
		
        $(".myaccount > .dropdown-toggle").click(function(){
		   	$(".cart-menu").slideUp("fast");
			$(".myaccount-menu").slideToggle("fast");
			$(this).toggleClass("active");
			$('.search').removeClass("selected");
        	return false;
    	});
		
		$("#cart .dropdown-toggle").click(function(){
		   	$(".myaccount-menu").slideUp("fast");
			$(".cart-menu").slideToggle("fast");
			$(this).toggleClass("active");
			$('.search').removeClass("selected");
        	return false;
    	});

    	$("#morphsearch").click(function(){
			$('body').addClass("scroll-lock");
			$(".myaccount-menu").slideUp("fast");
		   	$(".cart-menu").slideUp("fast");
        	return false;
    	});
    	$(".morphsearch-close").click(function(){
			$('body').removeClass("scroll-lock");
        	return false;
    	});

    	$('.scroll-lock').hide();

});

$(window).load(function () {

    //for mesonary blog
    	$('.all-blog .panel-default').masonry({
		  itemSelector: '.blog-content'
		})

});

jQuery(document).ready(function(){	
$('.write-review, .review-count').on('click', function() {
	$('html, body').animate({scrollTop: $('#tabs_info').offset().top}, 'slow');
	});

});

//Js for homepage Tab

$(document).ready(function() {
    $("div.tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.homecms-tab>div.tab-content").removeClass("active");
        $("div.homecms-tab>div.tab-content").eq(index).addClass("active");
    });
});

//Js For Small toggle

$(document).click(function(){
	$(".cart-menu").hide('fast');
	$(".myaccount-menu").hide('fast');
	$('.search').removeClass("selected");
});



function mobileToggleMenu(){
	//alert($(window).width());
	if ($(window).width() < 980)
	{
		$("#footer .mobile_togglemenu").remove();
		$("#footer .column h5").append( "<a class='mobile_togglemenu'>&nbsp;</a>" );
		$("#footer .column h5").addClass('toggle');
		$("#footer .mobile_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('.contact_details').slideToggle('slow');
		});

	}else{
		$("#footer .column h5").parent().find('.contact_details').removeAttr('style');
		$("#footer .column h5").removeClass('active');
		$("#footer .column h5").removeClass('toggle');
		$("#footer .mobile_togglemenu").remove();
	}	
}
$(document).ready(function(){mobileToggleMenu();});
$(window).resize(function(){mobileToggleMenu();});

$(document).ready(function(){
  $(".dropdown-toggle").click(function(){
    $("ul.dropdown-toggle").toggle('slow');
  });
});

function LangCurDropDown(selector,subsel){
	var main_block = new HoverWatcher(selector);
	var sub_ul = new HoverWatcher(subsel);
	$(selector).click(function() {
		$(selector).addClass('active');
		$(subsel).slideToggle('slow');
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
				$(selector).removeClass('active');
		}, 3000);
	});
	
	$(subsel).hover(function() {
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
		}, 3000);
	});	
}

function leftright()
{
	if ($(window).width() < 980){
			if($('.category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1').hasClass('text-right')==true){
			$(".category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1").addClass('text-left');
			$(".category_filter .col-md-3, .category_filter .col-md-2, .category_filter .col-md-1").removeClass('text-right');
			}
	}
}
$(document).ready(function(){leftright();});
$(window).resize(function(){leftright();});


function menuResponsive(){
	 
	if ($(window).width() < 980){
		//alert($(window).width());
		$('#menu').css('display','none');
		$('#res-menu').css('display','block');
		$('.nav-responsive').css('display','block');
		if($('.main-navigation').hasClass('treeview')!=true){
			$("#res-menu").addClass('responsive-menu');
			$("#res-menu").removeClass('main-menu');
			$("#res-menu .main-navigation").treeview({
				animated: "slow",
				collapsed: true,
				unique: true		
			});
			$('#res-menu .main-navigation a.active').parent().removeClass('expandable');
			$('#res-menu .main-navigation a.active').parent().addClass('collapsable');
			$('#res-menu .main-navigation .collapsable ul').css('display','block');		
		}
	
	}else{
		$('#menu').css('display','block');
		$('#res-menu').css('display','none');
		$("#res-menu .hitarea").remove();
		$("#res-menu").removeClass('responsive-menu');
		$("#res-menu").addClass('main-menu');
		$(".main-navigation").removeClass('treeview');
		$("#res-menu ul").removeAttr('style');
		$('#res-menu li').removeClass('expandable');
		$('#res-menu li').removeClass('collapsable');
		$('.nav-responsive').css('display','none');
	}

}
$(document).ready(function(){menuResponsive();});
$(window).resize(function(){menuResponsive();});

function productCarouselAutoSet() { 
	$("#content .product-carousel, .banners-slider-carousel .product-carousel, #testimonial .product-carousel, .hometab .product-carousel, .featured .product-carousel").each(function() {
		var objectID = $(this).attr('id');
		var myObject = objectID.replace('-carousel','');
		if(myObject.indexOf("-") >= 0)
			myObject = myObject.substring(0,myObject.indexOf("-"));		
		if(widthClassOptions[myObject])
			var myDefClass = widthClassOptions[myObject];
		else
			var myDefClass= 'grid_default_width';
		var slider = $("#content #" + objectID + ",  .banners-slider-carousel #"+ objectID + ", #testimonial #" + objectID + ", .hometab #"+ objectID + ", .featured #"+ objectID);
		slider.sliderCarousel({
			defWidthClss : myDefClass,
			subElement   : '.slider-item',
			subClass     : 'product-block',
			firstClass   : 'first_item_tm',
			lastClass    : 'last_item_tm',
			slideSpeed : 200,
			paginationSpeed : 800,
			autoPlay : false,
			stopOnHover : false,
			goToFirst : true,
			goToFirstSpeed : 1000,
			goToFirstNav : true,
			pagination : true,
			paginationNumbers: false,
			responsive: true,
			responsiveRefreshRate : 200,
			baseClass : "slider-carousel",
			theme : "slider-theme",
			autoHeight : true,
			addClassActive : true
		});
		
		var nextButton = $(this).parent().find('.next');
		var prevButton = $(this).parent().find('.prev');
		nextButton.click(function(){
			slider.trigger('slider.next');
		})
		prevButton.click(function(){
			slider.trigger('slider.prev');
		})
	});
}
//$(window).load(function(){productCarouselAutoSet();});
$(document).ready(function(){productCarouselAutoSet();});

function productListAutoSet() { 
	$("#content .productbox-grid").each(function(){
		var objectID = $(this).attr('id');
		if(objectID.length >0){
			if(widthClassOptions[objectID.replace('-grid','')])
				var myDefClass= widthClassOptions[objectID.replace('-grid','')];
		}else{
			var myDefClass= 'grid_default_width';
		}	
		$(this).smartColumnsRows({
			defWidthClss : myDefClass,
			subElement   : '.product-items',
			subClass     : 'product-block'
		});
	});		
}
$(window).load(function(){productListAutoSet();});
$(window).resize(function(){productListAutoSet();});

/*For Grid and List View Buttons*/
function gridlistactive(){
$('.btn-list-grid button').on('click', function() {
if($(this).hasClass('grid')) {
  $('.btn-list-grid button').addClass('active');
  $('.btn-list-grid button.list').removeClass('active');
}
  else if($(this).hasClass('list')) {
$('.btn-list-grid button').addClass('active');
  $('.btn-list-grid button.grid').removeClass('active');
  }
});
}
$(document).ready(function(){gridlistactive()});
$(window).resize(function(){gridlistactive()});

function HoverWatcher(selector){
	this.hovering = false;
	var self = this;

	this.isHoveringOver = function() {
		return self.hovering;
	}

	$(selector).hover(function() {
		self.hovering = true;
	}, function() {
		self.hovering = false;
	})
}


$(document).ready(function(){
	$('.nav-responsive').click(function() {
        $('.responsive-menu .main-navigation').slideToggle();
		$('.nav-responsive div').toggleClass('active');
		
    }); 

	$(".treeview-list").treeview({
		animated: "slow",
		collapsed: true,
		unique: true		
	});
	$('.treeview-list a.active').parent().removeClass('expandable');
	$('.treeview-list a.active').parent().addClass('collapsable');
	$('.treeview-list .collapsable ul').css('display','block');
});

$(document).ready(function(){
	jQuery(function($){
	
		var max_elem = 2 ;
		$('.navbar-nav li').first().addClass('home_first');
		var items = $('.navbar-nav  li.top_level');
		var surplus = items.slice(max_elem, items.length);
		surplus.wrapAll('<li class="top_level hiden_menu"><div class="dropdown-inner">');
		$('.hiden_menu').prepend('<a class="level-top">More</a>');
	
	});
});

 
$(document).ready(function(){
  $(".tm_headerlinks_inner").click(function(){
    $(".header_links").toggle('slow');
  });
  
});




function mobileToggleColumn(){
	if ($(window).width() < 980)
	{
		$('#column-left,#column-right').insertAfter('#content');
		$("#column-left .box-heading .mobile_togglemenu,#column-right .box-heading .mobile_togglemenu").remove();
		$("#column-left .box-heading,#column-right .box-heading").append( "<a class='mobile_togglemenu'>&nbsp;</a>" );
		$("#column-left .box-heading,#column-right .box-heading").addClass('toggle');
		$("#column-left .box-heading .mobile_togglemenu,#column-right .box-heading .mobile_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('.box-content,.filterbox,.list-group').slideToggle('slow');
		});
	}else{
		$('#column-left,#column-right').insertBefore('#content');
		$('.common-home #column-left,.common-home #column-right').insertBefore('#content-top');
		$("#column-left .box-heading,#column-right .box-heading").parent().find('.box-content,.filterbox,.list-group').removeAttr('style');
		$("#column-left .box-heading,#column-right .box-heading").removeClass('active');
		$("#column-left .box-heading,#column-right .box-heading").removeClass('toggle');
		$("#column-left .box-heading .mobile_togglemenu,#column-right .box-heading .mobile_togglemenu").remove();
	}
}
$(document).ready(function(){mobileToggleColumn();});
$(window).resize(function(){mobileToggleColumn();});


/*filter toogle*/

function FilterToggleMenu(){
	if ($(window).width() > 979)
	{
	//alert($(window).width());
		$(".sidebarFilter .filter_togglemenu").remove();
		$(".sidebarFilter .title").append( "<a class='filter_togglemenu'>&nbsp;</a>" );
		$(".sidebarFilter .title").addClass('toggle');
		$(".sidebarFilter .filter_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('.filter_content').slideToggle('slow');
		});	
	}else{
		$(".sidebarFilter .title").parent().find('.filter_content').removeAttr('style');
		$(".sidebarFilter .title").removeClass('active');
		$(".sidebarFilter .title").removeClass('toggle');
		$(".sidebarFilter .filter_togglemenu").remove();
	}
}

$(document).ready(function(){FilterToggleMenu();});
$(window).resize(function(){FilterToggleMenu ();});


function FilterToggleResponsive(){
	if ($(window).width() < 980)
	{
	//alert($(window).width());
		$(".sidebarFilter .mobile_togglemenu").remove();
		$(".sidebarFilter .box-heading").append( "<a class='mobile_togglemenu'>&nbsp;</a>" );
		$(".sidebarFilter .box-heading").addClass('toggle');
		$(".sidebarFilter .mobile_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('.filter_main').slideToggle('slow');
		});	
	}else{
		$(".sidebarFilter .box-heading").parent().find('.filter_main').removeAttr('style');
		$(".sidebarFilter .box-heading").removeClass('active');
		$(".sidebarFilter .box-heading").removeClass('toggle');
		$(".sidebarFilter .mobile_togglemenu").remove();
	}
}

$(document).ready(function(){FilterToggleResponsive();});
$(window).resize(function(){FilterToggleResponsive ();});


/*Menu Fixed 

function headerTopFixed() {	
	 if (jQuery(window).width() > 979){
     if (jQuery(this).scrollTop() > 240)
        {    
            jQuery('.nav-container').addClass("fixed");
			jQuery('header').addClass("header-length");
			jQuery('.header-right').addClass("header-right-fixed");
			 
    	}else{
      		jQuery('.nav-container').removeClass("fixed");
			jQuery('header').removeClass("header-length");
			jQuery('.header-right').removeClass("header-right-fixed");
      	}
	    } else {
      jQuery('.nav-container').removeClass("fixed");
	  jQuery('header').removeClass("header-length");
	  jQuery('.header-right').removeClass("header-right-fixed");
      }
}
 
$(document).ready(function(){headerTopFixed();});
jQuery(window).resize(function() {headerTopFixed();});
jQuery(window).scroll(function() {headerTopFixed();});
*/


/*For Back to Top button*/
$(document).ready(function(){
$("body").append("<a class='top_button' title='Back To Top' href=''>TOP</a>");

$(function () {
	$(window).scroll(function () {
		if ($(this).scrollTop() > 70) {
			$('.top_button').fadeIn();
		} else {
			$('.top_button').fadeOut();
		}
	});
	// scroll body to 0px on click
	$('.top_button').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});
});
});


//Js for blog Image Crop
/*function blogCrop(){
if ($(window).width() > 979) {
	$('.all-blog .blog-image').each(function() {									  
	var that = $(this);
	var url = that.find('img').attr('src');
	that.css({'background-image':'url("' + url + '")'});
});
}
}
jQuery(document).ready(function() { blogCrop();});
jQuery(window).resize(function() {blogCrop();});*/


/*For Parallex*/

jQuery(window).load(function(){
			
					 
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
	if(!isMobile) {
		if($(".parallax, .part1-content").length){  $(".parallax, .part1-content").sitManParallex({  invert: false });};    
	}else{
		$(".parallax, .part1-content").sitManParallex({  invert: true });
		
		}	
		
});

/* For blog layout*/

function blogResize() {
	if($('.allblog-top')) {
		// What a shame bootstrap does not take into account dynamically loaded columns
		cols = $('#column-right, #column-left').length;
//alert('ready');
		if (cols == 2) {
			$('#content .panel').attr('class', 'panel blog-content');
			$('#content .panel:nth-child(2n+2)').addClass('first-item');
			$('#content .panel:nth-child(2n+3)').addClass('last-item');
		} else if (cols == 1) {
			$('#content .panel').attr('class', 'panel blog-content');
			$('#content .panel:nth-child(2n+2)').addClass('first-item');
			$('#content .panel:nth-child(2n+3)').addClass('last-item');	
		if (document.documentElement.clientWidth < 479) {
				$('#content .panel').attr('class', 'panel blog-content last-item');
				$('#content .panel').attr('class', 'panel blog-content last-item');
			}
		} else {
			$('#content .panel').attr('class', 'panel blog-content');
			$('#content .panel:nth-child(2n+2)').addClass('first-item');
			$('#content .panel:nth-child(2n+3)').addClass('last-item');
		}
		}
}
$(document).ready(function() {blogResize();});
$( window ).resize(function() {blogResize();});