import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';


const initSelect2 = () => {
  $("#business_offerings_new").select2({ width: '100%' });
  $("#business_services_new").select2({ width: '100%' });  
  $("#business_deliveries_new").select2({ width: '100%' });  
  $("#business_payments_new").select2({ width: '100%' });  
  $("#business_accessibility_new").select2({ width: '100%' });  
  $("#business_highlights_new").select2({ width: '100%' });  
  $("#business_health_new").select2({ width: '100%' });    
  // (~ document.querySelectorAll)
};

export { initSelect2 };