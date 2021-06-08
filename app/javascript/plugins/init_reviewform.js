const initReviewform = () => {
    var reviewCheckbox = document.getElementById('review_service_review_too');
    if (reviewCheckbox) {
        reviewCheckbox.addEventListener('change', 
        function() {
            if (reviewCheckbox.checked) {
                document.getElementById("service_review_part").style.display = "block"; }
                else {
                    document.getElementById("service_review_part").style.display = "none"; }
                });
            }        
            // console.log("mofo")
        }
        
        export { initReviewform };
        
        
        
        
        
        