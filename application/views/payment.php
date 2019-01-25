<?php
    require_once 'includes/header.php';

 $orderDtaData = $this->Constant_model->getDataOneColumn('customers', 'id', "$id");
    if (count($orderDtaData) == 0) {
        redirect(base_url());
    }

    $order_cust_name = $orderDtaData[0]->fullname;
    $order_cust_email = $orderDtaData[0]->email;
    $order_cust_mb = $orderDtaData[0]->mobile;
    $order_cust_address = $orderDtaData[0]->address;

    
?>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Laser payment</h1>
		</div>
	</div><!--/.row-->
	
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-body">
					
					<?php
                        if (!empty($alert_msg)) {
                            $flash_status = $alert_msg[0];
                            $flash_header = $alert_msg[1];
                            $flash_desc = $alert_msg[2];

                            if ($flash_status == 'failure') {
                                ?>
							<div class="row" id="notificationWrp">
								<div class="col-md-12">
									<div class="alert bg-warning" role="alert">
										<i class="icono-exclamationCircle" style="color: #FFF;"></i> 
										<?php echo $flash_desc; ?> <i class="icono-cross" id="closeAlert" style="cursor: pointer; color: #FFF; float: right;"></i>
									</div>
								</div>
							</div>
					<?php	
                            }
                            if ($flash_status == 'success') {
                                ?>
							<div class="row" id="notificationWrp">
								<div class="col-md-12">
									<div class="alert bg-success" role="alert">
										<i class="icono-check" style="color: #FFF;"></i> 
										<?php echo $flash_desc; ?> <i class="icono-cross" id="closeAlert" style="cursor: pointer; color: #FFF; float: right;"></i>
									</div>
								</div>
							</div>
					<?php

                            }
                        }
                    ?>
					
					<div class="row" style="padding-top: 5px; padding-bottom: 0px;">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<?php echo $lang_customers; ?> : <?php echo $order_cust_name ;?>
						</div>
						
						<div class="col-md-4">
						   	<?php echo "Shop Name"; ?> : <?php echo $order_cust_email ;?>
						</div>
						<div class="col-md-2"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal">Add Previous Due</button></div>
					</div>
					
					<div class="row" style="padding-top: 5px; padding-bottom: 5px;">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<?php echo $lang_address; ?> : <?php echo $order_cust_address; ?>
						</div>
					
						<div class="col-md-4">
							<?php echo $lang_telephone; ?> : <?php echo $order_cust_mb;?>
						</div>
						<div class="col-md-2"></div>
					</div>
					
					<div class="row" style="padding-top: 5px; padding-bottom: 5px;">
						<div class="col-md-1"></div>
						<div class="col-md-8">
			<!-- get data from debti_cradit -->
								<?php
                                    $total_item_amt = 0;
                                    $total_debt_head = 0;
                                    $total_cradit_head = 0;
                                    $total_cradit = 0;
                                    $total_debt = 0;
                                        
                                    $orderItemResult = $this->db->query("SELECT * FROM debit_cradit WHERE cust_id = '$id' ORDER BY id ");
                                    $orderItemData = $orderItemResult->result();
                                     
                                     for ($j = 0; $j < count($orderItemData); ++$j) {
                                        $debit_amt_head = $orderItemData[$j]->debit_amt;
                                        $cradit_amt_head = $orderItemData[$j]->cradit_amt;
                                        $total_debt_head += $debit_amt_head;
                                        $total_cradit_head +=$cradit_amt_head; 
                                     }
                                     $total_due = $total_debt_head - $total_cradit_head  ;
                                ?>
                                    <table style="width:100%;  border-bottom: 1px solid #000;">
                                    <tr style="text-align:left; font-weight:bold; padding-top:5px;">
                                      <td style="width:40%; text-align:left;"><?php 
                                      if($total_debt_head <= $total_cradit_head){ echo "Total Debit Amount = ".$total_due; } 
                                      if($total_debt_head > $total_cradit_head){ echo "Total Deposit Amount = ".$total_due; }
                                      
                                      ?></td>
                                      <td style="text-align:right;">	<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal">Make Payment</button></td>
                                    </tr>  
                                 </table>
                            <?php if (count($orderItemData) != 0) { ?>
                            
                            <table class="totals"  cellspacing="0" border="0" style="margin-bottom:5px; border-collapse: collapse; width: 100%;"> 
								<thead> 
									
									<tr style="text-align:left; font-weight:bold; padding-top:5px; border-top: 1px solid #000;border-bottom: 1px solid #000;"> 
										<th width="3%"><em>#</em></th> 
										<th width="12%" align="left">Pay Date</th>
										<th width="13%">Debit Amount</th>
										<th  style="text-align:right;" width="10%">Cradit Amount</th>
										<th  style="text-align:right;" width="2%">*</th>
									</tr> 
								</thead> 
								<tbody>
								 <?php  
                                    for ($i = 0; $i < count($orderItemData); ++$i) {
                                        $deb_cra_id = $orderItemData[$i]->id;
                                        $debit_amt = $orderItemData[$i]->debit_amt;
                                        $cradit_amt = $orderItemData[$i]->cradit_amt;
                                        $pay_method = $orderItemData[$i]->pay_method;
                                        $pay_date = $orderItemData[$i]->pay_date;
                                        $check = $orderItemData[$i]->cheque_number;
                                        $card_number = $orderItemData[$i]->card_number;
                                        $total_debt += $debit_amt;
                                        $total_cradit +=$cradit_amt; 
                                ?>
										<tr style="text-align:left";>
							            	<td  style="width:10px;" valign="top"><?php echo $i + 1; ?></td>
							            	<td style=" width:20px;" valign="top">
								                <?php echo $pay_date .'<br> ['.$pay_method.' '.$check.']'; ?>
								            </td>
							                <td style="width:110px; padding-bottom: 10px" valign="top">
								                <?php echo $debit_amt ?>
								            </td>
							                <td style="text-align:right; width:50px;" valign="top">
								                <?php echo $cradit_amt; ?>
								            </td>
								            <td style="text-align:right;" valign="top"><a href="<?=base_url()?>DueAmount/deleteDebitCradit/<?php echo $deb_cra_id;?>/<?php echo $id;?>" onclick="return confirm('Are Sure Delete It.')" style="color:red;">x</a></td>
							                
							               
										</tr>	
								<?php
                                        
                                    }
                                   
                                ?>
								
								</tbody>
							</table>
							
							<table class="totals" cellspacing="0" border="0" style="font-weight:bold; margin-bottom:5px; border-top: 1px solid #000;  border-bottom: 1px solid #000; border-collapse: collapse; width: 100%;">
						    	<tbody>
									<tr>
										<td style="text-align:right; padding-top: 5px;">Total Debit Amount</td>
										<td style=" border-right: 1px solid #000;font-weight:bold;">= <?php echo $total_debt; ?></td>
										<td style="text-align:right; padding-left:1.5%;">Total Cradit Amount</td>
										<td style="font-weight:bold;">= <?php echo $total_cradit; ?></td>
									</tr>
    
								</tbody>
							</table>
						<?php } ?>
						</div>
						<div class="col-md-2"></div>
					</div>
	                
	           <?php if(count($orderItemData) > 1){ ?>
                    <div class="row">
						<div class="col-md-6"></div>
						<div class="col-md-6" style="text-align: right;">
							<a href="<?=base_url()?>DueAmount/print_due_invoice?id=<?php echo $id; ?>" style="text-decoration: none;" target="_blank">
								<button type="button" class="btn btn-success" style="background-color: #5cb85c; border-color: #4cae4c;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $lang_print; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</button>
							</a>
						</div>
					</div>
                <?php } ?>
             
             
  
  <!-- Modal debit payment -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Make Payment</h4>
        </div>
        <div class="modal-body">
            		
<script type="text/javascript">		
	function checkChequePayment(ele){
	    if(ele !=0 ){
	    	document.getElementById("paid_amount").style.display = "block";
	    		document.getElementById("outlet").style.display = "block";
	    }else{
	        document.getElementById("paid_amount").style.display = "none";
	        	document.getElementById("outlet").style.display = "none";
	    }
	    
	   
	    
		if(ele == "5"){
			document.getElementById("cheque_wrp").style.display = "block";
			document.getElementById("cheque").required = true;
			document.getElementById("cheque").focus();
			
			document.getElementById("add_card_numb_wrp").style.display = "none";
			document.getElementById("add_card_numb").required = false;
			
		} else if ( (ele == "3") || (ele == "4") ) {
			document.getElementById("cheque_wrp").style.display = "none";
			document.getElementById("cheque").required = false;
			
			document.getElementById("add_card_numb_wrp").style.display 	= "block";
			document.getElementById("add_card_numb").required 	= true;
			document.getElementById("add_card_numb").focus();
				
		} else {
			document.getElementById("cheque_wrp").style.display = "none";
			document.getElementById("cheque").required = false;
			
			document.getElementById("add_card_numb_wrp").style.display = "none";
			document.getElementById("add_card_numb").required = false;
		}
	}
</script>			
				
					<form action="<?=base_url()?>DueAmount/submitDebitPayment" method="post">		
					<div class="row" style="padding-top: 0px; padding-bottom: 5px;">
					
						<div class="col-md-12" >
							
							<div class="row" style="padding-top: 15px;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b><?php echo $lang_payment_methods; ?></b></div>
								<div class="col-md-8">
									<select name="payment_method" class="form-control" style="border: 1px solid #3a3a3a; color: #010101;" required onchange="checkChequePayment(this.value)">
										<option value=""><?php echo $lang_select_payment_method; ?></option>
										
							<?php
                                $payMethodData = $this->Constant_model->getDataOneColumnSortColumn('payment_method', 'status', '1', 'name', 'ASC');
                        for ($m = 0; $m < count($payMethodData); ++$m) {
                            $payMethod_id = $payMethodData[$m]->id;
                            $payMethod_name = $payMethodData[$m]->name;

                            if (($payMethod_id == '6') || ($payMethod_id == '7')) {
                                continue;
                            } ?>
									<option value="<?php echo $payMethod_id; ?>">
										<?php echo $payMethod_name; ?>
									</option>
							<?php

                        } ?>
									</select>
								</div>
							</div>
							
							<div class="row" id="cheque_wrp" style="padding-top: 10px; padding-bottom: 10px; display: none;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b><?php echo $lang_cheque_number; ?> :</b></div>
								<div class="col-md-8">
									<input type="text" name="cheque" class="form-control" id="cheque" placeholder="<?php echo $lang_cheque_number; ?>" style="border: 1px solid #3a3a3a; color: #010101;" />
								</div>
							</div>
							
							<div class="row" id="add_card_numb_wrp" style="padding-top: 10px; padding-bottom: 10px; display: none;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b><?php echo $lang_card_number; ?> :</b></div>
								<div class="col-md-8">
									<input type="text" name="add_card_numb" id="add_card_numb" class="form-control" placeholder="<?php echo $lang_card_number; ?>" style="border: 1px solid #3a3a3a; color: #010101;" />
								</div>
							</div>
							
							<div class="row" id="paid_amount" style="padding-top: 10px; padding-bottom: 10px; display: none;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b>Paid Amount:</b></div>
								<div class="col-md-8">
									<input type="number" name="paid" id="paid" class="form-control" placeholder="Enter Amount" style="border: 1px solid #3a3a3a; color: #010101;" />
								    <input type="hidden" name="get_paid_amt" id="get_paid_amt" value="">
								</div>
							</div>
							
							<?php // get outlet data
							
							    $getoutlet = $this->Constant_model->getDataOneColumnSortColumn('outlets', 'status', '1', 'id', 'ASC');
							    
							    $getoutlet_id = $getoutlet[0]->id;
							  
							  $role_id = $this->session->userdata('user_role');
							  if( count($getoutlet) > 1  AND $role_id == 1 ){
							?>
							
							<div class="row" id="outlet" style="padding-top: 10px; padding-bottom: 10px; display: none;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b>Outlet Option :</b></div>
								<div class="col-md-8">
									<select name="outlet_id" required class="form-control" style="border: 1px solid #3a3a3a; color: #010101;">
										<option value="">Select Outlet</option>
                										
                							<?php
                                                    for ($i = 0; $i < count($getoutlet); ++$i) {
                                                        $outlet_id = $getoutlet[$i]->id;
                                                        $outlet_name = $getoutlet[$i]->name;
                                                     ?>
                									<option value="<?php echo $outlet_id; ?>">
                										<?php echo $outlet_name; ?>
                									</option>
                							    <?php } ?>
									</select>
								</div>
							</div>
							
						<?php }else{ echo '<input type="hidden" name="outlet_id" value="'.$getoutlet_id.'">';	} ?>
							
							<div class="row" id="cheque_wrp" style="padding-top: 15px; padding-bottom: 10px;">
								<div class="col-md-8" style="text-align: right; padding-top: 10px;"></div>
								<div class="col-md-3">
									<input type="hidden" name="id" value="<?php echo $id; ?>" />
									<button type="submit" class="btn btn-primary">
										<?php echo $lang_submit_payment; ?>
									</button>
								</div>
							</div>
							
						</div>
						<div class="col-md-2"></div>
					</div>
					</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Previous Due Amount</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="<?=base_url()?>DueAmount/submitPrevDue" method="post">		
					<div class="row" style="padding-top: 0px; padding-bottom: 5px;">
					
						<div class="col-md-12" >
							
							
							
							<div class="row" id="due_amount" style="padding-top: 10px; padding-bottom: 10px;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b>Due Amount:</b></div>
								<div class="col-md-8">
									<input type="number" name="due_amount" id="due_amount" class="form-control" placeholder="Enter Amount" style="border: 1px solid #3a3a3a; color: #010101;" />
								   
								</div>
							</div>
							
							<?php // get outlet data
							
							
							 $role_id = $this->session->userdata('user_role');
						
							  if( count($getoutlet) > 1  AND $role_id == 1 ){
							?>
							
							<div class="row" style="padding-top: 10px; padding-bottom: 10px;">
								<div class="col-md-3" style="text-align: right; padding-top: 10px;"><b>Outlet Option :</b></div>
								<div class="col-md-8">
									<select name="outlet_id" required class="form-control" style="border: 1px solid #3a3a3a; color: #010101;">
										<option value="">Select Outlet</option>
                										
                							<?php
                                                    for ($j = 0; $j < count($getoutlet); ++$j) {
                                                        $outlet_id_prev = $getoutlet[$j]->id;
                                                        $outlet_name_prev = $getoutlet[$j]->name;
                                                     ?>
                									<option value="<?php echo $outlet_id_prev; ?>">
                										<?php echo $outlet_name_prev; ?>
                									</option>
                							    <?php } ?>
									</select>
								</div>
							</div>
							
						<?php }else{ echo '<input type="hidden" name="outlet_id" value="'.$getoutlet_id.'">';	} ?>
							
							
							<div class="row" id="cheque_wrp" style="padding-top: 15px; padding-bottom: 10px;">
								<div class="col-md-8" style="text-align: right; padding-top: 10px;"></div>
								<div class="col-md-3">
									<input type="hidden" name="id" value="<?php echo $id; ?>" />
									<button type="submit" class="btn btn-primary">
										<?php echo $lang_submit_payment; ?>
									</button>
								</div>
							</div>
							
						</div>
						<div class="col-md-2"></div>
					</div>
					</form>
      </div>
     
    </div>
  </div>
</div>       
           

				
				</div><!-- Panel Body // END -->
			</div><!-- Panel Default // END -->
			
			<a href="<?=base_url()?>DueAmount/view" style="text-decoration: none;">
				<div class="btn btn-success" style="background-color: #999; color: #FFF; padding: 0px 12px 0px 2px; border: 1px solid #999;"> 
					<i class="icono-caretLeft" style="color: #FFF;"></i><?php echo $lang_back; ?>
				</div>
			</a>
			
		</div><!-- Col md 12 // END -->
	</div><!-- Row // END -->
	
	<br /><br /><br /><br /><br />
	
</div><!-- Right Colmn // END -->
	
<?php
    require_once 'includes/footer.php';
?>