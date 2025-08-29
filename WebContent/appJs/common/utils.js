function validateInputNoSpecialChars(inputText) {
	
    // Define forbidden characters pattern
    const forbiddenChars = /[<>"'&\/\\();=:]/;
    
    // Check if input contains any forbidden character
    if (forbiddenChars.test(inputText)) {
        return false; // Invalid input
    }
	
    return true; // Valid input
}

function validateAndShowPopover(selector) {
    const value = $(selector).val();
    if (!validateInputNoSpecialChars(value)) {
        $(selector)
            .attr("data-placement", "top")
            .attr("data-content", "Input contains forbidden characters")
            .popover("show");
        return false;
    }
    return true;
}

function validateNumber(input) {
    // Regular expression to match integer or floating-point numbers (positive or negative)
    const numberPattern = /^-?\d+(\.\d+)?$/;
    
    return numberPattern.test(input);
}

function validateNumberAndShowPopover(selector) {
    const value = $(selector).val();
    if (!validateNumber(value)) {
        $(selector)
            .attr("data-placement", "top")
            .attr("data-content", "Enter vaild number")
            .popover("show");
        return false;
    }
    return true;
}