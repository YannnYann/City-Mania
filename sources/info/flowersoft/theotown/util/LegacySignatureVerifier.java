package info.flowersoft.theotown.util;

import info.flowersoft.theotown.crossplatform.TheoTown;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes4.dex */
public class LegacySignatureVerifier {
    public byte[] rawPrivateKey;

    public LegacySignatureVerifier(byte[] bArr) {
        this.rawPrivateKey = bArr;
    }

    public boolean verifySign(byte[] bArr, byte[] bArr2) throws Exception {
        if (bArr.length != 16) {
            return false;
        }
        try {
            Cipher cipher = getCipher();
            cipher.init(2, KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(this.rawPrivateKey)));
            byte[] bArrDoFinal = cipher.doFinal(bArr2);
            if (bArrDoFinal.length != 16) {
                return false;
            }
            return Arrays.equals(bArr, bArrDoFinal);
        } catch (InvalidKeyException e) {
            TheoTown.analytics.logException("Key", e);
            return false;
        } catch (NoSuchAlgorithmException e2) {
            TheoTown.analytics.logException("Algo", e2);
            return false;
        } catch (InvalidKeySpecException e3) {
            TheoTown.analytics.logException("KeySpec", e3);
            return false;
        } catch (BadPaddingException e4) {
            TheoTown.analytics.logException("BadPadding", e4);
            return false;
        } catch (IllegalBlockSizeException e5) {
            TheoTown.analytics.logException("Block", e5);
            return false;
        } catch (NoSuchPaddingException e6) {
            TheoTown.analytics.logException("NoPadding", e6);
            return false;
        }
    }

    public final Cipher getCipher() throws Exception {
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
