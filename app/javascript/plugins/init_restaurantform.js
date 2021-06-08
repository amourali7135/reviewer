const initRestaurantform = () => {
    var restaurantCheckbox = document.getElementById('business_restaurant');
    if (restaurantCheckbox) {
        restaurantCheckbox.addEventListener('change', function() {
            if (restaurantCheckbox.checked) {
                document.getElementById("restaurant_details").style.display = "block"; }
                else {
                    document.getElementById("restaurant_details").style.display = "none"; }
                });
            }   
            // console.log("this shit again")
        }     
        
        export { initRestaurantform };
        
        // window.addEventListener('DOMContentLoaded', (event) => {
        //     // My Code
        // });