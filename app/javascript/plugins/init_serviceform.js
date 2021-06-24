const initServiceform = () => {
    var serviceCheckbox = document.getElementById('service_food');
    if (serviceCheckbox) {
        serviceCheckbox.addEventListener('change', function() {
            if (serviceCheckbox.checked) {
                document.getElementById("food_details").style.display = "block", 
                document.getElementById("service_details").style.display = "none"; }
                else {
                    document.getElementById("food_details").style.display = "none",
                    document.getElementById("service_details").style.display = "block"; }
                });
            }   
            // console.log("this shit again")
        }     
        
        export { initServiceform };
        