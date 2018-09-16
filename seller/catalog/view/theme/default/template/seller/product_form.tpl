<?php echo $header; ?><?php echo $column_left; ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<style>
.page-header {
  border-bottom: 0px solid #eee;
  margin: 40px 0 20px;
  padding-bottom: 9px;
}
</style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="row">
     <div class="col-xs-12">
      <div class="box">
       <div class="box-header">
       <?php
        $custom_heading_title1 = "Add Product Quantity";
       ?>
        <h4><?php echo $custom_heading_title1; ?></h4>
        <div class="pull-right">
          <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
          <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
        </div>
      </div>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <div class="panel panel-default">
        <div class="panel-body">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane  active" id="tab-data">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
                  <div class="col-sm-10">
                   <img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" />
                   <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                 </div>
               </div>  

              <?php foreach ($languages as $language) { ?>
               <div class="form-group">
                <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" readonly/>
                  <?php if (isset($error_name[$language['language_id']])) { ?>
                  <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control"  readonly/>
                  <?php if (isset($error_meta_title[$language['language_id']])) { ?>
                  <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>

              <?php } ?>

               <div class="form-group ">
                <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control" readonly/>
                  <?php if ($error_model) { ?>
                  <div class="text-danger"><?php echo $error_model; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-sku"><span data-toggle="tooltip" title="<?php echo $help_sku; ?>"><?php echo $entry_sku; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="sku" value="<?php echo $sku; ?>" placeholder="<?php echo $entry_sku; ?>" id="input-sku" class="form-control" readonly/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-price"><?php echo $entry_price; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="price" value="<?php echo $price; ?>" placeholder="<?php echo $entry_price; ?>" id="input-price" class="form-control" readonly/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="quantity" value="<?php echo $quantity_added_by_seller; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-upc"><span data-toggle="tooltip" title="<?php echo $help_upc; ?>"><?php echo $entry_upc; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="upc" value="<?php echo $upc; ?>" placeholder="<?php echo $entry_upc; ?>" id="input-upc" class="form-control" readonly/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-isbn"><span data-toggle="tooltip" title="<?php echo $help_isbn; ?>"><?php echo $entry_isbn; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="isbn" value="<?php echo $isbn; ?>" placeholder="<?php echo $entry_isbn; ?>" id="input-isbn" class="form-control" readonly/>
                </div>
              </div>
            </div>


                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <script src="catalog/view/javascript/app.min.js"></script>
  <link href="catalog/view/javascript/summernote.css" rel="stylesheet">
  <script type="text/javascript" src="catalog/view/javascript/summernote.js"></script>
  <script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
  <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
  <style>
  label.control-label span:after {
    font-family: FontAwesome;
    color: #1E91CF;
    content: "\f059";
    margin-left: 4px;
  }
</style>
<script type="text/javascript">
  //resolve conflict
  //var $j = jQuery.noConflict();
  //jQuery.noConflict();
</script>
<script>
// tooltips on hover
$('[data-toggle=\'tooltip\']').tooltip({container: 'body', html: true});
	// Makes tooltips work on ajax generated content
	$(document).ajaxStop(function() {
		$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	});	
</script>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
  $('#input-description<?php echo $language['language_id']; ?>').summernote({height: 300});
  <?php } ?>
  //--></script> 
  <script type="text/javascript"><!--
  var attribute_row = <?php echo $attribute_row; ?>;
  function addAttribute() {
    html  = '<tr id="attribute-row' + attribute_row + '">';
    html += '  <td class="text-left" style="width: 20%;"><input type="text" name="product_attribute[' + attribute_row + '][name]" value="" placeholder="<?php echo $entry_attribute; ?>" class="form-control" /><input type="hidden" name="product_attribute[' + attribute_row + '][attribute_id]" value="" /></td>';
    html += '  <td class="text-left">';
    <?php foreach ($languages as $language) { ?>
     html += '<div class="input-group"><span class="input-group-addon"><img src="catalog/view/theme/default/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span><textarea name="product_attribute[' + attribute_row + '][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" placeholder="<?php echo $entry_text; ?>" class="form-control"></textarea></div>';
     <?php } ?>
     html += '  </td>';
     html += '  <td class="text-left"><button type="button" onclick="$(\'#attribute-row' + attribute_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
     html += '</tr>';
     $('#attribute tbody').append(html);
     attributeautocomplete(attribute_row);
     attribute_row++;
   }
   function attributeautocomplete(attribute_row) {
     $('input[name=\'product_attribute[' + attribute_row + '][name]\']').autocomplete({
      'source': function(request, response) {
       $.ajax({
        url: 'index.php?route=seller/attribute/autocomplete&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',			
        success: function(json) {
         response($.map(json, function(item) {
          return {
           category: item.attribute_group,
           label: item.name,
           value: item.attribute_id
         }
       }));
       }
     });
     },
     'select': function(item) {
       $('input[name=\'product_attribute[' + attribute_row + '][name]\']').val(item['label']);
       $('input[name=\'product_attribute[' + attribute_row + '][attribute_id]\']').val(item['value']);
     }
   });
   }
   $('#attribute tbody tr').each(function(index, element) {
     attributeautocomplete(index);
   });
   //--></script> 
   <script type="text/javascript"><!--
// Manufacturer
$('input[name=\'manufacturer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=seller/product/manuautocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				json.unshift({
					manufacturer_id: 0,
					name: '<?php echo $text_none; ?>'
				});
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['manufacturer_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'manufacturer\']').val(item['label']);
		$('input[name=\'manufacturer_id\']').val(item['value']);
	}	
});
// Category
$('input[name=\'category\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=seller/category/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
          console.log(item);
          return {
            label: item['name'],
            value: item['category_id']
          }
        }));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'category\']').val('');
		$('#product-category' + item['value']).remove();
		$('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_category[]" value="' + item['value'] + '" /></div>');	
	}
});
$('#product-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
// Downloads
$('input[name=\'download\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=seller/download/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['download_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'download\']').val('');
		$('#product-download' + item['value']).remove();
		$('#product-download').append('<div id="product-download' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_download[]" value="' + item['value'] + '" /></div>');	
	}	
});
$('#product-download').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
//--></script>
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;
function addImage() {
 html  = '<tr id="image-row' + image_row + '">';
 html += '  <td class="text-left"><a href="" id="thumb-image' + image_row + '"data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="input-image' + image_row + '" /></td>';
 html += '  <td class="text-right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
 html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
 html += '</tr>';
 $('#images tbody').append(html);
 image_row++;
}
//--></script> 
<script type="text/javascript"><!--	
var option_row = <?php echo $option_row; ?>;
$('input[name=\'option\']').autocomplete({
 'source': function(request, response) {
  $.ajax({
   url: 'index.php?route=seller/option/autocomplete&filter_name=' +  encodeURIComponent(request),
   dataType: 'json',			
   success: function(json) {
    console.log(json);
    response($.map(json, function(item) {
     return {
      category: item['category'],
      label: item['name'],
      value: item['option_id'],
      type: item['type'],
      option_value: item['option_value']
    }
  }));
  }
});
},
'select': function(item) {
  html  = '<div class="tab-pane" id="tab-option' + option_row + '">';
  html += '	<input type="hidden" name="product_option[' + option_row + '][product_option_id]" value="" />';
  html += '	<input type="hidden" name="product_option[' + option_row + '][name]" value="' + item['label'] + '" />';
  html += '	<input type="hidden" name="product_option[' + option_row + '][option_id]" value="' + item['value'] + '" />';
  html += '	<input type="hidden" name="product_option[' + option_row + '][type]" value="' + item['type'] + '" />';
  html += '	<div class="form-group">';
  html += '	  <label class="col-sm-2 control-label" for="input-required' + option_row + '"><?php echo $entry_required; ?></label>';
  html += '	  <div class="col-sm-10"><select name="product_option[' + option_row + '][required]" id="input-required' + option_row + '" class="form-control">';
  html += '	      <option value="1"><?php echo $text_yes; ?></option>';
  html += '	      <option value="0"><?php echo $text_no; ?></option>';
  html += '	  </select></div>';
  html += '	</div>';
  if (item['type'] == 'text') {
   html += '	<div class="form-group">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
   html += '	</div>';
 }
 if (item['type'] == 'textarea') {
   html += '	<div class="form-group">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-10"><textarea name="product_option[' + option_row + '][value]" rows="5" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control"></textarea></div>';
   html += '	</div>';			
 }
 if (item['type'] == 'file') {
   html += '	<div class="form-group" style="display: none;">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
   html += '	</div>';
 }
 if (item['type'] == 'date') {
   html += '	<div class="form-group">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-3"><div class="input-group date"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
   html += '	</div>';
 }
 if (item['type'] == 'time') {
   html += '	<div class="form-group">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-10"><div class="input-group time"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
   html += '	</div>';
 }
 if (item['type'] == 'datetime') {
   html += '	<div class="form-group">';
   html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
   html += '	  <div class="col-sm-10"><div class="input-group datetime"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
   html += '	</div>';
 }
 if (item['type'] == 'select' || item['type'] == 'radio' || item['type'] == 'checkbox' || item['type'] == 'image') {
   html += '<div class="table-responsive">';
   html += '  <table id="option-value' + option_row + '" class="table table-striped table-bordered table-hover">';
   html += '  	 <thead>'; 
   html += '      <tr>';
   html += '        <td class="text-left"><?php echo $entry_option_value; ?></td>';
   html += '        <td class="text-right"><?php echo $entry_quantity; ?></td>';
   html += '        <td class="text-left"><?php echo $entry_subtract; ?></td>';
   html += '        <td class="text-right"><?php echo $entry_price; ?></td>';
   html += '        <td class="text-right"><?php echo $entry_option_points; ?></td>';
   html += '        <td class="text-right"><?php echo $entry_weight; ?></td>';
   html += '        <td></td>';
   html += '      </tr>';
   html += '  	 </thead>';
   html += '  	 <tbody>';
   html += '    </tbody>';
   html += '    <tfoot>';
   html += '      <tr>';
   html += '        <td colspan="6"></td>';
   html += '        <td class="text-left"><button type="button" onclick="addOptionValue(' + option_row + ');" data-toggle="tooltip" title="<?php echo $button_option_value_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>';
   html += '      </tr>';
   html += '    </tfoot>';
   html += '  </table>';
   html += '</div>';
   html += '  <select id="option-values' + option_row + '" style="display: none;">';
   for (i = 0; i < item['option_value'].length; i++) {
    html += '  <option value="' + item['option_value'][i]['option_value_id'] + '">' + item['option_value'][i]['name'] + '</option>';
  }
  html += '  </select>';	
  html += '</div>';	
}
$('#tab-option .tab-content').append(html);
$('#option > li:last-child').before('<li><a href="#tab-option' + option_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-option' + option_row + '\\\']\').parent().remove(); $(\'#tab-option' + option_row + '\').remove(); $(\'#option a:first\').tab(\'show\')"></i> ' + item['label'] + '</li>');
$('#option a[href=\'#tab-option' + option_row + '\']').tab('show');
$('.date').datetimepicker({
 pickTime: false
});
$('.time').datetimepicker({
 pickDate: false
});
$('.datetime').datetimepicker({
 pickDate: true,
 pickTime: true
});
option_row++;
}	
});
//--></script> 
<script type="text/javascript"><!--		
var option_value_row = <?php echo $option_value_row; ?>;
function addOptionValue(option_row) {	
 html  = '<tr id="option-value-row' + option_value_row + '">';
 html += '  <td class="text-left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][option_value_id]" class="form-control">';
 html += $('#option-values' + option_row).html();
 html += '  </select><input type="hidden" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][product_option_value_id]" value="" /></td>';
 html += '  <td class="text-right"><input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][quantity]" value="" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>'; 
 html += '  <td class="text-left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][subtract]" class="form-control">';
 html += '    <option value="1"><?php echo $text_yes; ?></option>';
 html += '    <option value="0"><?php echo $text_no; ?></option>';
 html += '  </select></td>';
 html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price_prefix]" class="form-control">';
 html += '    <option value="+">+</option>';
 html += '    <option value="-">-</option>';
 html += '  </select>';
 html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
 html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points_prefix]" class="form-control">';
 html += '    <option value="+">+</option>';
 html += '    <option value="-">-</option>';
 html += '  </select>';
 html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points]" value="" placeholder="<?php echo $entry_points; ?>" class="form-control" /></td>';	
 html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight_prefix]" class="form-control">';
 html += '    <option value="+">+</option>';
 html += '    <option value="-">-</option>';
 html += '  </select>';
 html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight]" value="" placeholder="<?php echo $entry_weight; ?>" class="form-control" /></td>';
 html += '  <td class="text-left"><button type="button" onclick="$(\'#option-value-row' + option_value_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
 html += '</tr>';
 $('#option-value' + option_row + ' tbody').append(html);
 option_value_row++;
}
//--></script> 
<script type="text/javascript"><!--
var discount_row = <?php echo $discount_row; ?>;
function addDiscount() {
 html  = '<tr id="discount-row' + discount_row + '">'; 
 html += '  <td class="text-left"><select name="product_discount[' + discount_row + '][customer_group_id]" class="form-control">';
 <?php foreach ($customer_groups as $customer_group) { ?>
  html += '    <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo addslashes($customer_group['name']); ?></option>';
  <?php } ?>
  html += '  </select></td>';		
  html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][quantity]" value="" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>';
  html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][priority]" value="" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>';
  html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
  html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_discount[' + discount_row + '][date_start]" value="" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
  html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_discount[' + discount_row + '][date_end]" value="" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
  html += '  <td class="text-left"><button type="button" onclick="$(\'#discount-row' + discount_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
  html += '</tr>';	
  $('#discount tbody').append(html);
  $('.date').datetimepicker({
    pickTime: false
  });
  discount_row++;
}
//--></script> 
<script type="text/javascript"><!--
var special_row = <?php echo $special_row; ?>;
function addSpecial() {
 html  = '<tr id="special-row' + special_row + '">'; 
 html += '  <td class="text-left"><select name="product_special[' + special_row + '][customer_group_id]" class="form-control">';
 <?php foreach ($customer_groups as $customer_group) { ?>
  html += '      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo addslashes($customer_group['name']); ?></option>';
  <?php } ?>
  html += '  </select></td>';		
  html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][priority]" value="" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>';
  html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
  html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_start]" value="" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
  html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_end]" value="" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
  html += '  <td class="text-left"><button type="button" onclick="$(\'#special-row' + special_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
  html += '</tr>';
  $('#special tbody').append(html);
  $('.date').datetimepicker({
    pickTime: false
  });
  special_row++;
}
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
 pickTime: false
});
$('.time').datetimepicker({
 pickDate: false
});
$('.datetime').datetimepicker({
 pickDate: true,
 pickTime: true
});
//--></script> 
<script type="text/javascript"><!--
$('#language a:first').tab('show');
$('#option a:first').tab('show');
//--></script>
</div>
