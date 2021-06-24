import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

// refactor experiment to one giant comma function
const initSelect2 = () => {
  $("#business_offerings_new").select2({ width: '100%' });
  $("#business_services_new").select2({ width: '100%' });  
  $("#business_deliveries_new").select2({ width: '100%' });  
  $("#business_payments_new").select2({ width: '100%' });  
  $("#business_accessibility_new").select2({ width: '100%' });  
  $("#business_highlights_new").select2({ width: '100%' });  
  $("#business_health_new").select2({ width: '100%' });    
  $("#review_service_id").select2({ width: '100%' });    
  $("#food_tagging_new").select2({ width: '100%' });    
  $("#service_tagging_new").select2({ width: '100%' });    
};

export { initSelect2 };