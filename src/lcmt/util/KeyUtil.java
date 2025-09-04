package lcmt.util;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Base64;

public class KeyUtil {
    private static PublicKey publicKey;
    private static PrivateKey privateKey;

    static {
        try {
            KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
            generator.initialize(2048);
            KeyPair pair = generator.generateKeyPair();
            publicKey = pair.getPublic();
            privateKey = pair.getPrivate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getPublicKey() {
        return Base64.getEncoder().encodeToString(publicKey.getEncoded());
    }

	public static PrivateKey getPrivateKey() {
        return privateKey;
    }
}
