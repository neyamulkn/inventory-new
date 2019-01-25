<?php
    $settingResult = $this->db->get_where('site_setting');
    $settingData = $settingResult->row();

    $setting_dateformat = $settingData->datetime_format;
    $setting_site_logo = $settingData->site_logo;


    $getCustomer = $this->Constant_model->getDataOneColumn('customers', 'id', $cust_id);
     if (count($getCustomer) == 0) {
            $this->session->set_flashdata('alert_msg', array('success', 'Error', 'Something Wrong!'));
            redirect(base_url().'dashboard');
    
            die();
    }

    $cust_fullname = $getCustomer[0]->fullname;
     
    $shop_name = $getCustomer[0]->email;
    $cust_mobile = $getCustomer[0]->mobile;
   
 // get previous due
 
     $total_debit = 0;
     $total_cradit = 0;
    $get_debit_cradit = $this->Constant_model->getDataOneColumnSortColumn('debit_cradit', 'cust_id', "$cust_id", 'id', 'ASC');
    
    $countrow = count($get_debit_cradit) - 1 ;
    
         for ($s = 0; $s < $countrow ; ++$s) {
              $total_debit += $get_debit_cradit[$s]->debit_amt;
             $total_cradit += $get_debit_cradit[$s]->cradit_amt;
         }
         $pay_date = date("$setting_dateformat H:i A", strtotime($get_debit_cradit[$countrow]->pay_date));
         
        
         $paid_amount = $get_debit_cradit[$countrow]->debit_amt;
         $paid_cradit = $get_debit_cradit[$countrow]->cradit_amt;
          if(!empty($paid_cradit)){
             $total_cradit =  $total_cradit + $paid_cradit;
         }
         
         $totalPrevDue = ($total_cradit - $total_debit);
         $presentDue = $paid_amount - $totalPrevDue;
    
        

// get outlet
     
     $getoutlet_id = $get_debit_cradit[$countrow]->outlet_id;
     $getoutlet = $this->Constant_model->getDataOneColumn('outlets', 'id', $getoutlet_id);
   
    $outlet_name =  $getoutlet[0]->name;
    $outlet_address =  $getoutlet[0]->address;
    $outlet_contact =  $getoutlet[0]->contact_number;
    $receipt_footer = $getoutlet[0]->receipt_footer;
?>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Sale No : <?php echo $cust_id; ?></title>
		<script src="<?=base_url()?>assets/js/jquery-1.7.2.min.js"></script>
		
<style type="text/css" media="all">
	body { 
		max-width: 320px; 
		margin:0 auto; 
		text-align:center; 
		color:#000; 
		font-family: Arial, Helvetica, sans-serif; 
		font-size:14px; 
	}
	#wrapper { 
		min-width: 250px; 
		margin: 0px auto; 
	}
	#wrapper img { 
		max-width: 300px; 
		width: auto; 
	}

	h2, h3, p { 
		margin: 5px 0;
	}
	.left { 
		width:100%; 
		float:right; 
		text-align:right; 
		margin-bottom: 3px;
		margin-top: 3px;
	}
	.right { 
		width:40%; 
		float:right; 
		text-align:right; 
		margin-bottom: 3px; 
	}
	.table, .totals { 
		width: 100%; 
		margin:10px 0; 
	}
	.table th { 
		border-top: 1px solid #000; 
		border-bottom: 1px solid #000; 
		padding-top: 4px;
		padding-bottom: 4px;
	}
	.table td { 
		padding:0; 
	}
	.totals td { 
		width: 24%; 
		padding:0; 
	}
	.table td:nth-child(2) { 
		overflow:hidden; 
	}
@page {
  size: auto;
  margin: 0;
       }
	@media print {
		
		#buttons { display: none; }
		#wrapper { width: 100%; margin: 0; font-size:12px; }
		#wrapper img { max-width:300px; width: 80%; }
		#bkpos_wrp{
			display: none;
		}
	}
</style>
</head>

<body>
<div id="wrapper">
	<table border="0" style="border-collapse: collapse; width: 100%; height: auto;">
	    <tr>
		    <td width="100%" align="center">
			    <center>
			    	<img src="<?=base_url()?>assets/img/logo/<?php echo $setting_site_logo; ?>" style="width: 60px;" />
			    </center>
		    </td>
	    </tr>
	    <tr>
		    <td width="100%" align="center">
			    <h2 style="padding-top: 0px; font-size: 24px;"><strong><?php  echo $outlet_name; ?></strong></h2>
		    </td>
	    </tr>
		<tr>
			<td width="100%">
				<span class="left" style="text-align: left;">Outlet Address : <?php echo $outlet_address; ?></span>	
				<span class="left" style="text-align: left;">Mobile : <?php echo $outlet_contact; ?></span> 
			
				<span class="left" style="text-align: left;">Shope Name &nbsp; : <?php echo $shop_name; ?></span> 
				<span class="left" style="text-align: left;">Customer Name &nbsp; : <?php echo $cust_fullname; ?></span> 
			
				<span class="left" style="text-align: left;">Mobile : <?php if (empty($cust_mobile)) {
                        echo '-';
                    } else {
                        echo $cust_mobile;
                    } ?>
                </span>
	        <span class="left" style="text-align: left;">Payment Date : <?php echo $pay_date; ?></span>
			</td>
		</tr>   
    </table>
    
	
	    
	<div style="clear:both;"></div>
 
    
    <table class="totals" cellspacing="0" border="0" style="margin-bottom:5px; border-top: 1px solid #000; border-collapse: collapse;">
    	<tbody>
		
    		<tr>
		    
    		<?php if($totalPrevDue != 0){ ?>
    				<td colspan="2" style="text-align:right; font-weight:bold;  padding-top:5px;"><?php if( $totalPrevDue > 0){ echo "Previous Due :"; } if( $totalPrevDue < 0){ echo "Previous Deposit :"; } ?></td>
    				<td colspan="2" style=" padding-top:5px; text-align:right; font-weight:bold;">
                        <?php echo number_format($totalPrevDue, 2); ?>
    				</td>
        		</tr>
        		
    		<?php } ?>
    		
			<tr>    
				<td colspan="2" style="text-align:right; font-weight:bold; padding-top:5px;">Paid Amount :</td>
				<td colspan="2" style="padding-top:5px;  border-bottom:1px solid #000; text-align:right; font-weight:bold;">- <?php echo number_format($paid_amount, 2); ?></td>
    		</tr>
    		
    		<?php
                if ($presentDue < 0) {
                    ?>
    		<tr>
				<td colspan="2" style="text-align:right; font-weight:bold; padding-top:5px;">Total Due: </td>
				<td colspan="2" style="padding-top:5px; text-align:right; font-weight:bold;"><?php echo number_format($presentDue, 2); ?></td>
    		</tr>
    		<?php

                }
            ?>
			
    		<?php
                if ($presentDue > 0) {
                    ?>
    		<tr>
				<td colspan="2" style="text-align:left; font-weight:bold; padding-top:5px;">Return Change</td>
				<td colspan="2" style="padding-top:5px; text-align:right; font-weight:bold;"><?php echo number_format($presentDue, 2); ?></td>
    		</tr>
    		<?php

                }
            ?>
          <!--
	    	<tr>
				<td style="text-align:left; padding-top: 5px; font-weight: bold; border-top: 1px solid #000;">Paid By : </td>
				<td style="text-align:right; padding-top: 5px; padding-right:1.5%; border-top: 1px solid #000;font-weight:bold;" colspan="3">
				Pay Method name : 
					<?php
                        if ($pay_method_id == '5') {
                            echo "(Cheque No. : $cheque_numb)";
                        }
                        if ($pay_method_id == '7') {
                            echo "(Card No. : $card_numb)";
                        }
                    ?>
				</td>
			</tr>
			<?php
                if (!empty($addi_card_numb)) {
                    ?>
			<tr>
				<td style="text-align:left; padding-top: 5px; font-weight: bold; border-top: 1px solid #000;">Card Number :</td>
				<td style="text-align:right; padding-top: 5px; border-top: 1px solid #000;font-weight:bold;" colspan="3">
					<?php echo $addi_card_numb; ?>
				</td>
			</tr>
			<?php

                }
            ?>
            -->
    </tbody>
    </table>
    
    <div style="border-top:1px solid #000; padding-top:10px;">
    	<?php
           echo $receipt_footer;
        ?>    
    </div>
<!--
        <div id="buttons" style="padding-top:10px; text-transform:uppercase;">
    <span class="left"><a href="#" style="width:90%; display:block; font-size:12px; text-decoration: none; text-align:center; color:#000; background-color:#4FA950; border:2px solid #4FA950; padding: 10px 1px; font-weight:bold;" id="email">Email</a></span>
    <span class="right"><button type="button" onClick="window.print();return false;" style="width:100%; cursor:pointer; font-size:12px; background-color:#FFA93C; color:#000; text-align: center; border:1px solid #FFA93C; padding: 10px 1px; font-weight:bold;">Print</button></span>
    <div style="clear:both;"></div>
-->
   
    <div id="bkpos_wrp">
    	<a href="<?=base_url()?>pos" style="width:100%; display:block; font-size:12px; text-decoration: none; text-align:center; color:#FFF; background-color:#005b8a; border:0px solid #007FFF; padding: 10px 1px; margin: 5px auto 10px auto; font-weight:bold;">Back To Point of sales</a>
    </div>
    
    <div id="bkpos_wrp">
    	<button type="button" onClick="window.print();return false;" style="width:101%; cursor:pointer; font-size:12px; background-color:#FFA93C; color:#000; text-align: center; border:1px solid #FFA93C; padding: 10px 0px; font-weight:bold;">Print small receipt</button>
    </div>
    
	<div id="bkpos_wrp" style="margin-top: 8px;">
    	<span class="left"><a href="#" style="width:100%; display:block; font-size:12px; text-decoration: none; text-align:center; color:#000; background-color:#4FA950; border:2px solid #4FA950; padding: 10px 0px; font-weight:bold;" id="email">Email </a></span>
    </div>
    
    <div id="bkpos_wrp">
    	<span class="left">
    		<a href="<?=base_url()?>pos/view_invoice_a4?id=<?php echo $cust_id; ?>" style="width:100%; display:block; font-size:12px; text-decoration: none; text-align:center; color:#000; background-color:#4FA950; border:2px solid #4FA950; padding: 10px 0px; font-weight:bold; margin-top: 6px;">
	    		Print A4
	    	</a>
	    </span>
    </div>
    
    <input type="hidden" id="id" value="<?php echo $cust_id; ?>" />
    
</div>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){ 
		$('#email').click( function(){
			var email 	= prompt("Please enter email address","test@mail.com");	
			var id 		= document.getElementById("id").value;
			
			$.ajax({
				type: "POST",
				url: "<?=base_url()?>pos/send_invoice",
				data: { email: email, id: id}
			}).done(function( msg ) {
			      alert( "Successfully Sent Receipt to "+email);
			});
			
		});
	});

	$(window).load(function() { window.print(); });
</script>




</body>
</html>
