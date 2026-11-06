package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.Base64Coder;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes4.dex */
public final class RSAEncrypter {
    public static final byte[] publicEncrypt(byte[] bArr, String str) {
        try {
            Cipher cipher = getCipher();
            cipher.init(1, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64Coder.decode(str))));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Cipher getCipher() throws Exception {
        String[] strArr = {"RSA/NONE/PKCS1Padding", "RSA"};
        for (int i = 0; i < 2; i++) {
            try {
                return Cipher.getInstance(strArr[i]);
            } catch (Exception e) {
                if (i >= 1) {
                    throw e;
                }
            }
        }
        return null;
    }
}
