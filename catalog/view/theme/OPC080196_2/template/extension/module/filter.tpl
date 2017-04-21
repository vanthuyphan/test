<div class="box sidebarFilter">
<div class="container">
<div class="row">
  <div class="box-heading"><?php echo $heading_title; ?></div>
<div class="filter_main">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <div class="filter-content">
	<div class="list-group-item title"><?php echo $filter_group['name']; ?></div>
    <div class="list-group-item filter_content">
      <div class="filter-group">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
       <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" class="chkboxes" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" class="chkboxes" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
	</div>
    <?php } ?>
    
  <div class="panel-footer text-right">
    <!-- <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button> -->
    <a id="clear-filter" href="<?php echo $reload; ?>"><?php echo $button_filter_clear; ?></a>
  </div>
  </div>
</div>
</div>
</div>
<script type="text/javascript"><!--
         $(document).ready(function() {

            $('input[name^=\'filter\']').on('change', function() {
               filter = [];

              $('input[name^=\'filter\']:checked').each(function(element) {
               filter.push(this.value);
         });
       
            location = '<?php echo $action; ?>&filter=' + filter.join(',');
         });
    });
//--></script>
<script type="text/javascript">
  $(document).ready(function() {
        var $i= 0;
        $(".filter-group .checkbox").each(function(){
          var attr =  $(this).find('.chkboxes').attr("checked");
          if (typeof attr !== typeof undefined && attr !== false) {
            $i++;
          }
         
        });
        if($i>0){
          $("#clear-filter").show();
        }
});
</script>
