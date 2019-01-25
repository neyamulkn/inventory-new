<?php
    require_once 'includes/header.php';
?>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header"><?php echo $lang_customers; ?></h1>
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
					
				
					
					<form action="<?=base_url()?>DueAmount/search_debit_cradit" method="get">
						<div class="row" style="margin-top: 10px;">
							<div class="col-md-4">
								<div class="form-group">
									<label><?php echo $lang_name; ?> </label>
									<input type="text" name="name" class="form-control" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Shop Name</label>
									<input type="text" name="email" class="form-control" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label><?php echo $lang_mobile; ?> </label>
									<input type="text" name="mobile" class="form-control" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>&nbsp;</label><br />
									<button class="btn btn-primary" style="width: 100%;">&nbsp;&nbsp;<?php echo $lang_search; ?>&nbsp;&nbsp;</button>
								</div>
							</div>
						</div>
					</form>
					
					
					
					<div class="row" style="margin-top: 0px;">
						<div class="col-md-12">
							
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
									    	<th style="border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;" width="20%">
										    	<?php echo $lang_customer_name; ?>
									    	</th>
									    	<th style="border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;" width="25%">
										   Shop Name
									    	</th>
										    <th style="border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;" width="15%">
											    Debit Amount
										    </th>
											<th style="border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd;" width="20%">
											   Cradit Amount
										    </th>
										    <th style="border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-top: 1px solid #ddd; border-right: 1px solid #ddd;" width="30%"><?php echo $lang_action; ?></th>
										</tr>
									</thead>
									<tbody>
									<?php
                                        if (count($results) > 0) {
                                            foreach ($results as $data) {
                                                $cust_id = $data->id;
                                                $cust_fn = $data->fullname;
                                                $cust_mb = $data->email;
                                               

												?>
												<tr>
													<td style="border-bottom: 1px solid #ddd;"><?php echo $cust_fn; ?></td>
												
													<td style="border-bottom: 1px solid #ddd;">
													<?php
                                                        if (empty($cust_mb)) {
                                                            echo '-';
                                                        } else {
                                                            echo $cust_mb;
                                                        } ?>
													</td>
										<!-- get debit_cradit data -->
												 	<?php  
												 	    $total_debit = 0;
												 	    $total_cradit = 0;
													    $get_debit_cradit = $this->Constant_model->getDataOneColumn('debit_cradit', 'cust_id', "$cust_id");
													    
													     for ($s = 0; $s < count($get_debit_cradit); ++$s) {
													          $total_debit += $get_debit_cradit[$s]->debit_amt;
													         $total_cradit += $get_debit_cradit[$s]->cradit_amt;
													     }
													?>
													<td style="border-bottom: 1px solid #ddd;">
												       <?php echo $total_debit; ?>
													</td>
													<td style="border-bottom: 1px solid #ddd;">
												       <?php echo $total_cradit; ?>
													</td>
													
													<td style="border-bottom: 1px solid #ddd;">
								
								<a href="<?=base_url()?>DueAmount/payment?id=<?php echo $cust_id; ?>" style="text-decoration: none; margin-left: 10px;">
									<button class="btn btn-primary" style="padding: 4px 12px;">&nbsp;&nbsp; PayMent Details &nbsp;&nbsp;</button>
								</a>
													</td>
												</tr>
									<?php

                                            }
                                        } else {
                                            ?>
											<tr>
												<td colspan="4"><?php echo $lang_no_match_found; ?></td>
											</tr>
									<?php

                                        }
                                    ?>
									</tbody>
								</table>
							</div>
							
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6" style="float: left; padding-top: 10px;">
							<?php echo $displayshowingentries; ?>
						</div>
						<div class="col-md-6" style="text-align: right;">
							<?php echo $links; ?>
						</div>
					</div>
					
				</div><!-- Panel Body // END -->
			</div><!-- Panel Default // END -->
		</div><!-- Col md 12 // END -->
	</div><!-- Row // END -->
	
	<br /><br /><br />
	
</div><!-- Right Colmn // END -->
	
	
	
<?php
    require_once 'includes/footer.php';
?>