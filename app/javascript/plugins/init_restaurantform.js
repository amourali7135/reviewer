const initRestaurantform = () => {
    var restaurantCheckbox = document.getElementById('business_restaurant');
    restaurantCheckbox.addEventListener('change', function() {
        if (restaurantCheckbox.checked) {
            document.getElementById("restaurant_details").style.display = "block"; }
            else {
                document.getElementById("restaurant_details").style.display = "none"; }
            });
        }
        
        
        
        // if (restaurantCheckbox.checked) {
        //     document.getElementById("restaurant_details").style.display = "block"; }
        //     else {
        //         document.getElementById("restaurant_details").style.display = "none"; }
        //         console.log("hello");
        
        
        
        
        
        export { initRestaurantform };