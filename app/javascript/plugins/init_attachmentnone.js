const initAttachmentnone = () => {
    var divsToHide = document.getElementsByClassName("trix-button trix-button--icon trix-button--icon-attach"); //divsToHide is an array
    for(var i = 0; i < divsToHide.length; i++){
        // divsToHide[i].style.visibility = "hidden"; // or
        divsToHide[i].style.display = "none"; // depending on what you're doing
    }
};


export { initAttachmentnone };