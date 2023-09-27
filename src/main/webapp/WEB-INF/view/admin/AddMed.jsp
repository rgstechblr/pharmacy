<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.form-control {
	width:60%;
	}
	
	
	.btnlable
	{
		padding: 6px 2px;
	}
	.btn-lableinfo {
    color: #fff;
    background-color: #5B9BD5;
    border-color: #5B9BD5;
}
</style>

<form:form commandName="addmed" method="post" enctype="multipart/form-data" onsubmit="return validate(this);">
	
   <!-- row  -->
   <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Product Id </label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="prodid" id="prodid" class="form-control" placeholder="Id"/>
        </div>
                          
    </div>
                    
   </div>
   
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Product Name </label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="prodname" id="prodname" class="form-control" placeholder="Name"/>
        </div>
                          
    </div>
                    
   </div>
   
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Category</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        <select class="col-xs-5 col-md-6 form-group" name="category" id="category">
  			<option value="tablet">Tablet</option>
  			<option value="saab">Syrup</option>
  			<option value="mercedes">Injections</option>
  			<option value="audi">Miscellaneous</option>
		</select>
<!--         	<input type="text" name="category" id="category" class="form-control" placeholder="Tablet/Syrup..."/>
 -->        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Company</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="company" id="company" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   
      <!-- <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">HSN </label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="hsn" id="hsn" class="form-control" placeholder="HSN"/>
        </div>
                          
    </div>
                    
   </div>
   
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">VGM</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="vgm" id="vgm" class="form-control" placeholder="VGM"/>
        </div>
                          
    </div>
                    
   </div> -->
   
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Quantity</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="number" name="quantity" id="quantity" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Supplier</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="text" name="supplier" id="supplier" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Purchase Date</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="date" name="pdate" id="pdate" class="form-control" placeholder="Purchase Date"/>
        </div>
                          
    </div>
                    
   </div>
   
    
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">MFD</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="date" name="mfd" id="mfd" class="form-control" placeholder="Manufacturing Date"/>
        </div>
                          
    </div>
                    
   </div>
   
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Expiry Date</label>
   </div> 
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="date" name="expd" id="expd" class="form-control" placeholder="Expiry"/>
        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">MRP</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="number" name="mrp" id="mrp" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Selling Rate</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="number" name="sell" id="sell" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   
      <div class="row">
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Discount</label>
   </div>
   
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
        	<input type="number" name="discount" id="discount" class="form-control" placeholder=""/>
        </div>
                          
    </div>
                    
   </div>
   <!-- end row -->
         
   <!-- row  -->
   <div class="row">
   
   <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left">Description </label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         <textarea name="description" rows="5" cols="40" class="form-control"></textarea>
    </div>
                          
    </div>
                    
   </div>
   <!-- end row -->
     <!-- row  -->
   <div class="row">
 
   <div class="col-xs-5 col-md-2" align="right">
    
   </div>
     <div class="col-xs-5 col-md-3" align="right">
     <label for="concept" class="col-md-2 control-label-left"> </label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
      
<input type="submit"  class="btn btn-success btn-bold" value="Post"/>
           
         </div>
                          
    </div>
                    
   </div>
   <!-- end row -->
   
</form:form>
 <script type="text/javascript" src="../js/ajax/jquery.min.js">
</script>
    <script type="text/javascript">
	function validate(formObj)
	{
		
		if(formObj.prodid.value=="")
		{
			valid=false;
			alert("please enter Product id");
			$('#prodid').focus()
			
			return false;
		}
		
		if(formObj.prodname.value=="")
		{
			valid=false;
			alert("please enter Product Name");
			$('#prodname').focus()
			
			return false;
		}
		
		if(formObj.category.value=="")
		{
			valid=false;
			alert("please enter category");
			$('#category').focus()
			
			return false;
		}
		if(formObj.company.value=="")
		{
			valid=false;
			alert("please enter company");
			$('#company').focus()
			
			return false;
		}
		if(formObj.hsn.value=="")
		{
			valid=false;
			alert("please enter hsn");
			$('#hsn').focus()
			
			return false;
		}
		
		if(formObj.vgm.value=="")
		{
			valid=false;
			alert("please enter vgm");
			$('#vgm').focus()
			
			return false;
		}
		
		if(formObj.quantity.value=="")
		{
			valid=false;
			alert("please enter quantity");
			$('#quantity').focus()
			
			return false;
		}
		
		if(formObj.supplier.value=="")
		{
			valid=false;
			alert("please enter Supplier");
			$('#supplier').focus()
			
			return false;
		}
		
		if(formObj.pdate.value=="")
		{
			valid=false;
			alert("please enter purchase date");
			$('#pdate').focus()
			
			return false;
		}
		
		if(formObj.mfd.value=="")
		{
			valid=false;
			alert("please enter MFD");
			$('#mfd').focus()
			
			return false;
		}
		
		if(formObj.expd.value=="")
		{
			valid=false;
			alert("please enter expiry date");
			$('#expd').focus()
			
			return false;
		}
		
		if(formObj.mrp.value=="")
		{
			valid=false;
			alert("please enter MRP");
			$('#mrp').focus()
			
			return false;
		}
		
		if(formObj.discount.value=="")
		{
			valid=false;
			alert("please enter discount");
			$('#discount').focus()
			
			return false;
		}
		
		if(formObj.pdate.value=="")
		{
			valid=false;
			alert("please enter purchase date");
			$('#pdate').focus()
			
			return false;
		}
		
		if(formObj.sell.value=="")
		{
			valid=false;
			alert("please enter Selling Price");
			$('#sell').focus()
			
			return false;
		}
		
		if(formObj.pdate.value=="")
		{
			valid=false;
			alert("please enter purchase date");
			$('#pdate').focus()
			
			return false;
		}
		
		if(formObj.description.value=="")
		{
			valid=false;
			alert("please enter description");
			$('#description').focus()
			
			return false;
		}
		
		
		return true;
	}
	
	/* $('#machineSerialNo').keyup(function() {
   	$('#divNoMachine').css("display", "none"); 	
   
	
		
				var data = 'machineSerialNo='
					+ encodeURIComponent(this.value);
					
			$.ajax({
				url : "checkmachinesno.htm",
				data : data,
				contentType: 'application/json',
   				mimeType: 'application/json',
				
				type : "GET",
 
				success : function(response) {
					
					$("#machineSerialNoCheck").val(response.msg);
					
					if(response.msg=="fail")
					{
						$('#divNoMachine').css("display", "block"); 	
					}
					else
					{
						$('#divNoMachine').css("display", "none"); 	
					}
					
				
				},
				error : function(xhr, status, error) {
					
						
				}
				
			});
			
			
		
	}); */
</script>
       	
       	    
       	    
       	    
       	   