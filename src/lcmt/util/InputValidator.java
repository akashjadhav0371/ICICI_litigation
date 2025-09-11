package lcmt.util;

import java.util.regex.Pattern;

public final class InputValidator {
    private static final Pattern FORBIDDEN_CHARS =
            Pattern.compile("[<>\"'&/\\\\();=:]");

    private InputValidator() { }

    public static boolean validateInputNoSpecialChars(String inputText) {
        if (inputText == null || inputText.trim().length()==0) {
            return true; 
        }
        // If any forbidden character is found, it's invalid
        return !FORBIDDEN_CHARS.matcher(inputText).find();
    }
    
	/*
	 * public static void main(String[] args) {
	 * System.out.println(validateInputNoSpecialChars("hello_world")); // true
	 * System.out.println(validateInputNoSpecialChars("a<b")); // false
	 * System.out.println(validateInputNoSpecialChars("quote\"here")); // false
	 * System.out.println(validateInputNoSpecialChars("path\\name"));
	 * System.out.println(validateInputNoSpecialChars(""));
	 * System.out.println(validateInputNoSpecialChars(" "));
	 * System.out.println(validateInputNoSpecialChars(null));// false }
	 */
}