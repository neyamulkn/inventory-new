<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class DueAmount extends CI_Controller
{
    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     *
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    public function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Customers_model');
        $this->load->model('Constant_model');
        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('pagination');

        $settingResult = $this->db->get_where('site_setting');
        $settingData = $settingResult->row();

        $setting_timezone = $settingData->timezone;

        date_default_timezone_set("$setting_timezone");
    }

    public function index()
    {
        $this->load->view('dashboard', 'refresh');
    }

    // ****************************** View Page -- START ****************************** //

    // View Customers;
    public function view()
    {
        $paginationData = $this->Constant_model->getDataOneColumn('site_setting', 'id', '1');
        $pagination_limit = $paginationData[0]->pagination;
        $setting_dateformat = $paginationData[0]->datetime_format;

        $config = array();
        $config['base_url'] = base_url().'DueAmount/view/';

        $config['display_pages'] = true;
        $config['first_link'] = 'First';

        $config['total_rows'] = $this->Customers_model->record_customers_count();
        $config['per_page'] = $pagination_limit;
        $config['uri_segment'] = 3;

        $config['full_tag_open'] = "<ul class='pagination pagination-right margin-none'>";
        $config['full_tag_close'] = '</ul>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = '<li>';
        $config['next_tagl_close'] = '</li>';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tagl_close'] = '</li>';
        $config['first_tag_open'] = '<li>';
        $config['first_tagl_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tagl_close'] = '</li>';

        $this->pagination->initialize($config);

        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['results'] = $this->Customers_model->fetch_customers_data($config['per_page'], $page);

        $data['links'] = $this->pagination->create_links();

        if ($page == 0) {
            $have_count = $this->Customers_model->record_customers_count();

            $start_pg_point = 0;
            if ($have_count == 0) {
                $start_pg_point = 0;
            } else {
                $start_pg_point = 1;
            }

            $sh_text = "Showing $start_pg_point to ".count($data['results']).' of '.$this->Customers_model->record_customers_count().' entries';
        } else {
            $start_sh = $page + 1;
            $end_sh = $page + count($data['results']);
            $sh_text = "Showing $start_sh to $end_sh of ".$this->Customers_model->record_customers_count().' entries';
        }

        $data['displayshowingentries'] = $sh_text;
        $data['setting_dateformat'] = $setting_dateformat;

        $data['lang_dashboard'] = $this->lang->line('dashboard');
        $data['lang_customers'] = $this->lang->line('customers');
        $data['lang_gift_card'] = $this->lang->line('gift_card');
        $data['lang_add_gift_card'] = $this->lang->line('add_gift_card');
        $data['lang_list_gift_card'] = $this->lang->line('list_gift_card');
        $data['lang_debit'] = $this->lang->line('debit');
        $data['lang_sales'] = $this->lang->line('sales');
        $data['lang_today_sales'] = $this->lang->line('today_sales');
        $data['lang_opened_bill'] = $this->lang->line('opened_bill');
        $data['lang_reports'] = $this->lang->line('reports');
        $data['lang_sales_report'] = $this->lang->line('sales_report');
        $data['lang_expenses'] = $this->lang->line('expenses');
        $data['lang_expenses_category'] = $this->lang->line('expenses_category');
        $data['lang_pnl'] = $this->lang->line('pnl');
        $data['lang_pnl_report'] = $this->lang->line('pnl_report');
        $data['lang_pos'] = $this->lang->line('pos');
        $data['lang_return_order'] = $this->lang->line('return_order');
        $data['lang_return_order_report'] = $this->lang->line('return_order_report');
        $data['lang_inventory'] = $this->lang->line('inventory');
        $data['lang_products'] = $this->lang->line('products');
        $data['lang_list_products'] = $this->lang->line('list_products');
        $data['lang_print_product_label'] = $this->lang->line('print_product_label');
        $data['lang_product_category'] = $this->lang->line('product_category');
        $data['lang_purchase_order'] = $this->lang->line('purchase_order');
        $data['lang_setting'] = $this->lang->line('setting');
        $data['lang_outlets'] = $this->lang->line('outlets');
        $data['lang_users'] = $this->lang->line('users');
        $data['lang_suppliers'] = $this->lang->line('suppliers');
        $data['lang_system_setting'] = $this->lang->line('system_setting');
        $data['lang_payment_methods'] = $this->lang->line('payment_methods');
        $data['lang_logout'] = $this->lang->line('logout');
        $data['lang_point_of_sales'] = $this->lang->line('point_of_sales');
        $data['lang_amount'] = $this->lang->line('amount');
        $data['lang_monthly_sales_outlet'] = $this->lang->line('monthly_sales_outlet');
        $data['lang_add_customer'] = $this->lang->line('add_customer');
        $data['lang_export'] = $this->lang->line('export');
        $data['lang_search'] = $this->lang->line('search');
        $data['lang_name'] = $this->lang->line('name');
        $data['lang_email'] = $this->lang->line('email');
        $data['lang_mobile'] = $this->lang->line('mobile');
        $data['lang_address'] = $this->lang->line('address');
        $data['lang_customer_name'] = $this->lang->line('customer_name');
        $data['lang_action'] = $this->lang->line('action');
        $data['lang_edit'] = $this->lang->line('edit');
        $data['lang_sales_history'] = $this->lang->line('sales_history');
        $data['lang_no_match_found'] = $this->lang->line('no_match_found');
        $data['lang_create_return_order'] = $this->lang->line('create_return_order');

        $this->load->view('debit_cradit', $data);
    }
    
    // Search Customer;
    public function search_debit_cradit()
    {
        $name = $this->input->get('name');
        $email = $this->input->get('email');
        $mobile = $this->input->get('mobile');

        $data['search_name'] = $name;
        $data['search_email'] = $email;
        $data['search_mobile'] = $mobile;
        $data['lang_dashboard'] = $this->lang->line('dashboard');
        $data['lang_customers'] = $this->lang->line('customers');
        $data['lang_gift_card'] = $this->lang->line('gift_card');
        $data['lang_add_gift_card'] = $this->lang->line('add_gift_card');
        $data['lang_list_gift_card'] = $this->lang->line('list_gift_card');
        $data['lang_debit'] = $this->lang->line('debit');
        $data['lang_sales'] = $this->lang->line('sales');
        $data['lang_today_sales'] = $this->lang->line('today_sales');
        $data['lang_opened_bill'] = $this->lang->line('opened_bill');
        $data['lang_reports'] = $this->lang->line('reports');
        $data['lang_sales_report'] = $this->lang->line('sales_report');
        $data['lang_expenses'] = $this->lang->line('expenses');
        $data['lang_expenses_category'] = $this->lang->line('expenses_category');
        $data['lang_pnl'] = $this->lang->line('pnl');
        $data['lang_pnl_report'] = $this->lang->line('pnl_report');
        $data['lang_pos'] = $this->lang->line('pos');
        $data['lang_return_order'] = $this->lang->line('return_order');
        $data['lang_return_order_report'] = $this->lang->line('return_order_report');
        $data['lang_inventory'] = $this->lang->line('inventory');
        $data['lang_products'] = $this->lang->line('products');
        $data['lang_list_products'] = $this->lang->line('list_products');
        $data['lang_print_product_label'] = $this->lang->line('print_product_label');
        $data['lang_product_category'] = $this->lang->line('product_category');
        $data['lang_purchase_order'] = $this->lang->line('purchase_order');
        $data['lang_setting'] = $this->lang->line('setting');
        $data['lang_outlets'] = $this->lang->line('outlets');
        $data['lang_users'] = $this->lang->line('users');
        $data['lang_suppliers'] = $this->lang->line('suppliers');
        $data['lang_system_setting'] = $this->lang->line('system_setting');
        $data['lang_payment_methods'] = $this->lang->line('payment_methods');
        $data['lang_logout'] = $this->lang->line('logout');
        $data['lang_point_of_sales'] = $this->lang->line('point_of_sales');
        $data['lang_amount'] = $this->lang->line('amount');
        $data['lang_monthly_sales_outlet'] = $this->lang->line('monthly_sales_outlet');
        $data['lang_add_customer'] = $this->lang->line('add_customer');
        $data['lang_export'] = $this->lang->line('export');
        $data['lang_search'] = $this->lang->line('search');
        $data['lang_name'] = $this->lang->line('name');
        $data['lang_email'] = $this->lang->line('email');
        $data['lang_mobile'] = $this->lang->line('mobile');
        $data['lang_address'] = $this->lang->line('address');
        $data['lang_customer_name'] = $this->lang->line('customer_name');
        $data['lang_action'] = $this->lang->line('action');
        $data['lang_edit'] = $this->lang->line('edit');
        $data['lang_sales_history'] = $this->lang->line('sales_history');
        $data['lang_no_match_found'] = $this->lang->line('no_match_found');
        $data['lang_search_customer'] = $this->lang->line('search_customer');
        $data['lang_create_return_order'] = $this->lang->line('create_return_order');

        $this->load->view('search_debit_cradit', $data);
    }
    
     public function payment(){
  
        $id = $this->input->get('id');

        $paginationData = $this->Constant_model->getDataOneColumn('site_setting', 'id', '1');
        $pagination_limit = $paginationData[0]->pagination;
        $setting_dateformat = $paginationData[0]->datetime_format;

        $data['id'] = $id;
        $data['dateformat'] = $setting_dateformat;

        $data['lang_dashboard'] = $this->lang->line('dashboard');
        $data['lang_customers'] = $this->lang->line('customers');
        $data['lang_gift_card'] = $this->lang->line('gift_card');
        $data['lang_add_gift_card'] = $this->lang->line('add_gift_card');
        $data['lang_list_gift_card'] = $this->lang->line('list_gift_card');
        $data['lang_debit'] = $this->lang->line('debit');
        $data['lang_sales'] = $this->lang->line('sales');
        $data['lang_today_sales'] = $this->lang->line('today_sales');
        $data['lang_opened_bill'] = $this->lang->line('opened_bill');
        $data['lang_reports'] = $this->lang->line('reports');
        $data['lang_sales_report'] = $this->lang->line('sales_report');
        $data['lang_expenses'] = $this->lang->line('expenses');
        $data['lang_expenses_category'] = $this->lang->line('expenses_category');
        $data['lang_pnl'] = $this->lang->line('pnl');
        $data['lang_pnl_report'] = $this->lang->line('pnl_report');
        $data['lang_pos'] = $this->lang->line('pos');
        $data['lang_return_order'] = $this->lang->line('return_order');
        $data['lang_return_order_report'] = $this->lang->line('return_order_report');
        $data['lang_inventory'] = $this->lang->line('inventory');
        $data['lang_products'] = $this->lang->line('products');
        $data['lang_list_products'] = $this->lang->line('list_products');
        $data['lang_print_product_label'] = $this->lang->line('print_product_label');
        $data['lang_product_category'] = $this->lang->line('product_category');
        $data['lang_purchase_order'] = $this->lang->line('purchase_order');
        $data['lang_setting'] = $this->lang->line('setting');
        $data['lang_outlets'] = $this->lang->line('outlets');
        $data['lang_users'] = $this->lang->line('users');
        $data['lang_suppliers'] = $this->lang->line('suppliers');
        $data['lang_system_setting'] = $this->lang->line('system_setting');
        $data['lang_payment_methods'] = $this->lang->line('payment_methods');
        $data['lang_logout'] = $this->lang->line('logout');
        $data['lang_point_of_sales'] = $this->lang->line('point_of_sales');
        $data['lang_amount'] = $this->lang->line('amount');
        $data['lang_monthly_sales_outlet'] = $this->lang->line('monthly_sales_outlet');
        $data['lang_no_match_found'] = $this->lang->line('no_match_found');
        $data['lang_create_return_order'] = $this->lang->line('create_return_order');

        $data['lang_action'] = $this->lang->line('action');
        $data['lang_edit'] = $this->lang->line('edit');
        $data['lang_status'] = $this->lang->line('status');
        $data['lang_add'] = $this->lang->line('add');
        $data['lang_back'] = $this->lang->line('back');
        $data['lang_update'] = $this->lang->line('update');
        $data['lang_active'] = $this->lang->line('active');
        $data['lang_inactive'] = $this->lang->line('inactive');
        $data['lang_name'] = $this->lang->line('name');
        $data['lang_search_product'] = $this->lang->line('search_product');
        $data['lang_add_to_list'] = $this->lang->line('add_to_list');
        $data['lang_submit'] = $this->lang->line('submit');
        $data['lang_receive'] = $this->lang->line('receive');
        $data['lang_view'] = $this->lang->line('view');
        $data['lang_created'] = $this->lang->line('created');
        $data['lang_tax'] = $this->lang->line('tax');
        $data['lang_discount_amount'] = $this->lang->line('discount_amount');
        $data['lang_total'] = $this->lang->line('total');
        $data['lang_totat_payable'] = $this->lang->line('totat_payable');
        $data['lang_discount'] = $this->lang->line('discount');
        $data['lang_sale_id'] = $this->lang->line('sale_id');
        $data['lang_tax_total'] = $this->lang->line('tax_total');
        $data['lang_export_to_excel'] = $this->lang->line('export_to_excel');
        $data['lang_type'] = $this->lang->line('type');
        $data['lang_print'] = $this->lang->line('print');

        $data['lang_customer_name'] = $this->lang->line('customer_name');
        $data['lang_date_from'] = $this->lang->line('date_from');
        $data['lang_date_to'] = $this->lang->line('date_to');
        $data['lang_search'] = $this->lang->line('search');
        $data['lang_sale_id'] = $this->lang->line('sale_id');
        $data['lang_date'] = $this->lang->line('date');
        $data['lang_grand_total'] = $this->lang->line('grand_total');
        $data['lang_unpaid_amount'] = $this->lang->line('unpaid_amount');
        $data['lang_make_payment'] = $this->lang->line('make_payment');

        $data['lang_address'] = $this->lang->line('address');
        $data['lang_telephone'] = $this->lang->line('telephone');
        $data['lang_ordered_date'] = $this->lang->line('ordered_date');
        $data['lang_make_payment_for_sale'] = $this->lang->line('make_payment_for_sale');
        $data['lang_submit_payment'] = $this->lang->line('submit_payment');
        $data['lang_products'] = $this->lang->line('products');
        $data['lang_quantity'] = $this->lang->line('quantity');
        $data['lang_per_item_price'] = $this->lang->line('per_item_price');
        $data['lang_total_items'] = $this->lang->line('total_items');
        $data['lang_sub_total'] = $this->lang->line('sub_total');
        $data['lang_paid_amt'] = $this->lang->line('paid_amt');
        $data['lang_paid_by'] = $this->lang->line('paid_by');
        $data['lang_payment_methods'] = $this->lang->line('payment_methods');
        $data['lang_select_payment_method'] = $this->lang->line('select_payment_method');
        $data['lang_card_number'] = $this->lang->line('card_number');
        $data['lang_cheque_number'] = $this->lang->line('cheque_number');

        $this->load->view('payment', $data);
    }

    // Submit Debit Payment;
    public function submitDebitPayment()
    {
        $cust_id = $this->input->post('id');
        $payment_method = $this->input->post('payment_method');
        $cheque = $this->input->post('cheque');
        $addi_card_numb = $this->input->post('add_card_numb');
        $paid_amt = $this->input->post('paid');
        $outlet_id = $this->input->post('outlet_id');
        $us_id = $this->session->userdata('user_id');
       
        $role_id = $this->session->userdata('user_role');
       
        if( $role_id != 1 ){
            
             $outlet_id = $this->session->userdata('user_outlet');
        }
       
        $getPayMethodData = $this->Constant_model->getDataOneColumn('payment_method', 'id', $payment_method);
        if (count($getPayMethodData) == 1) {
            $payMethod_name = $getPayMethodData[0]->name;
        }
        
        $ins_debit_cradit_data = array(
                  'cust_id' => $cust_id,
                  'debit_amt' => $paid_amt,
                  'outlet_id' => $outlet_id,
                  'pay_method' => $payMethod_name,
                  'card_number' => $addi_card_numb,
                  'cheque_number' => $cheque,
                  'created_user_id' => $us_id,
                 
        );

        if ($this->Constant_model->insertData('debit_cradit', $ins_debit_cradit_data)) {
            $this->session->set_flashdata('alert_msg', array('success', 'Submit Payment', 'Successfully Made Payment.'));
            redirect(base_url().'DueAmount/payment?id='.$cust_id);
        }
    }
    
    
  // Submit previous Payment;
    public function submitPrevDue()
    {
        $cust_id = $this->input->post('id');
        $due_amount = $this->input->post('due_amount');
        $outlet_id = $this->input->post('outlet_id');
        $us_id = $this->session->userdata('user_id');
       
        $role_id = $this->session->userdata('user_role');
       
        if( $role_id != 1 ){
            
             $outlet_id = $this->session->userdata('user_outlet');
        }
       
        
        $ins_debit_cradit_data = array(
                  'cust_id' => $cust_id,
                  'outlet_id' => $outlet_id,
                  'cradit_amt' => $due_amount,
                  'pay_method' => 'Previous Due',
                  'created_user_id' => $us_id,
                 
        );

        if ($this->Constant_model->insertData('debit_cradit', $ins_debit_cradit_data)) {
            $this->session->set_flashdata('alert_msg', array('success', 'Add Payment', 'Successfully Added Previous Payment.'));
            redirect(base_url().'DueAmount/payment?id='.$cust_id);
        }
    }
    
     // Delete Amount;
    public function deleteDebitCradit($id, $cust_id)
    {
        

        if ($this->Constant_model->deleteData('debit_cradit', $id)) {
            $this->session->set_flashdata('alert_msg', array('success', 'Delete Payment', "Successfully Deleted Payment."));
            redirect(base_url().'DueAmount/payment?id='.$cust_id);
        }
    }
    
    
     // View Invoice;
    public function print_due_invoice()
    {
        $id = $this->input->get('id');
        $data['cust_id'] = $id;
        
      

         $this->load->view('print_due_invoice', $data);
       
    }
    
    
    

}