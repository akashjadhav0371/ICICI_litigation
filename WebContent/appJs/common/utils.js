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

const ALLOWED_EXTENSIONS = new Set([
  "pdf", "docx", "jpg", "jpe", "jfif", "jif", "jpeg", "png", "xls", "xlsx", "txt"
]);

function isValidFileName(fileName) {
  // Convert to lowercase for extension comparison
  const lowerFileName = fileName.toLowerCase();

  // Check for null byte character
  if (lowerFileName.includes('\0')) {
    return false;
  }

  // Check for double extensions like .php.jpg
  // This regex matches any filename with two extensions separated by dots (e.g., something.php.jpg)
  if (/.*\.(.+)\.(.+)$/.test(lowerFileName)) {
    return false;
  }

  // Extract extension after last dot
  const parts = lowerFileName.split('.');
  if (parts.length < 2) {
    // No extension found
    return false;
  }
  const extension = parts[parts.length - 1];

  // Check if extension is allowed
  if (!ALLOWED_EXTENSIONS.has(extension)) {
    return false;
  }

  // Passed all checks
  console.log("### isValidFileName true");
  return true;
}

function validateAllFiles(containerId, inputName) {
    let allValid = true;
    // Use the parameters for container and input name selectors
    $(`#${containerId} input[type="file"][name="${inputName}"]`).each(function() {
        const fileInput = this;
        if (fileInput.files.length > 0) {
            const fileName = fileInput.files[0].name;
            if (!isValidFileName(fileName)) {
                alert("Invalid file: " + fileName);
                allValid = false;
                return false; // break out of each loop
            }
        }
    });
    return allValid;
}

