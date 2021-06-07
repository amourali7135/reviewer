import "jquery-bar-rating";

const initStarRating = () => {
    $('#review_service').barrating({
        theme: 'css-stars'
    });
    console.log("hello")
};


// const initStarRating = () => {
//     $(document).ready(function() {
//         $('#review_service').barrating({
//             theme: 'css-stars'
//         });
//         console.log("hello")
//     });
// };

export { initStarRating };

