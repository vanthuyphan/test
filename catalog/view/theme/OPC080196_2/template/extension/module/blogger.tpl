<div class="box megnorblog">
 <?php 
		$sliderFor = 2;
		$blogCount = sizeof($blogs); 
  ?> 
  <div class="box-heading"><span class="heading_inner"><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <div class="box-product <?php if ($blogCount > $sliderFor){?> owl-carousel blogcarousel <?php }else{?>productbox-grid<?php }?>" id="<?php if ($blogCount >= $sliderFor){?>blog-carousel<?php }else{?>blog-grid<?php }?>">
    <?php foreach ($blogs as $blog) { ?>
	<div class="<?php if ($blogCount >= $sliderFor){?>blog-item<?php }else{?>product-items<?php }?>">	
	<div class="product-block">
     <?php if ($blog['image']) { ?>
	  <div class="blog-left">
	  <div class="blog-image">
	   <a href="<?php echo $blog['href']; ?>"><img src="<?php echo $blog['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></a>
	   
<p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="<?php echo $blog['image']; ?>" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a><a class="icon readmore_link" title="Click to view Read More " href="<?php echo $blog['href']; ?>"><i class="fa fa-link"></i></a></p>
	  </div>
	  </div>
	 <?php } ?>	
	 <div class="blog-right"> 
	 <div class="blog-right-inner"> 
	  <h4><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a> </h4>
	  <div class="date-time"><i class="fa fa-calendar" aria-hidden="true"></i><?php echo $blog['date_added']; ?> </div>
	  <?php /*?><div class="read-more"> / <a href="<?php echo $blog['href']; ?>"> <?php echo $text_read_more; ?></a></div><?php */?>
      <div class="blog-desc"> 
	  <?php if (strlen(($blog['description'])) > 120)
					{ 
						$maxLength = 120 ; echo substr($blog['description'],0,$maxLength).".."; 
					}
					else{
						echo ($blog['description']);
					}
					?>	
	  </div> 
      </div>	
	 </div> 
    	</div>
		
		</div>	
    <?php } ?>
   
  </div>
   <div class="buttons text-center">
      <button type="button" onclick="location='<?php echo $all_blogs; ?>';" class="btn btn-primary"><?php echo $button_all_blogs; ?></button>
    </div>
  </div>
 
</div>
<span class="blog_default_width" style="display:none; visibility:hidden"></span>

<script type="text/javascript"><!--

$(document).ready(function(){	
$('.blogcarousel').owlCarousel({
		items: 3,
		/*autoPlay: 10000,*/
		singleItem: false,
		navigation: true,
		navigationText: ['<a class="fa prev fa-angle-left"></a>', '<a class="fa next fa-angle-right"></a>'],
		pagination: true,
		itemsDesktop : [1200,3],
		itemsDesktopSmall :	[979,2],
		itemsTablet : [767, 2]
		 });		
	
	$('.blogcarousel .owl-item:odd').addClass('last');
	$('.blogcarousel .owl-item:even').addClass('first');
	$(".blogcarousel .last").find(".blog-right").each(function(i){
   		$(this).prependTo($(this).parent().parent().find(".product-block"));
 	});
	
	
});
--></script>