package lcmt.util;

import java.util.Set;

import org.apache.commons.io.FilenameUtils;

public class UploadUtil {
	
	private static final Set<String> ALLOWED_EXTENSIONS 
	= Set.of("pdf", "docx", "jpg", "jpe", "jfif","jif","jpeg", "png", "xls", "xlsx", "txt");
	
	public static boolean isValidFileName(String fileName) {
		//System.out.println("@@@@  "+fileName);
		String extension = FilenameUtils.getExtension(fileName).toLowerCase();
		//System.out.println("@@@@  extension "+extension);
		if (fileName.contains("\0") || fileName.matches(".*\\.(.+)\\.(.+)$")) {
		    // Blocks null byte or double extensions like .php.jpg
		    //throw new IllegalArgumentException("Suspicious file name.");
			return false;
		}
		
		if (!ALLOWED_EXTENSIONS.contains(extension)) {
		  //  throw new IllegalArgumentException("File type not allowed.");
			return false;
		}
		
		//System.out.println(" ### isValidFileName  true ");
		return true;
		
	}

}
