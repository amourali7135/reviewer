import "jquery-bar-rating";

const initStarRating = () => {
    $('#review_service, #review_value, #review_atmosphere, #review_business_rating, #review_service_rating, #feedback_rating').barrating({
        theme: 'css-stars'
    });



    // console.log("hello")
};


export { initStarRating };

