package info.flowersoft.theotown.backend;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONObject;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class Session {
    public Cipher decCipher;
    public Cipher encCipher;
    public String enc_key;
    public String id;
    public final JSONObject keys;

    public Session(JSONObject jSONObject) {
        this.keys = jSONObject;
    }

    public void fromJson(JSONObject jSONObject) {
        this.id = jSONObject.optString(C3670j8.x, this.id);
        this.enc_key = jSONObject.optString("enc_key", this.enc_key);
        updateInternalKey();
    }

    public String getId() {
        return this.id;
    }

    public void invalidate() {
        this.enc_key = null;
        this.encCipher = null;
        this.decCipher = null;
    }

    public final void updateInternalKey() {
        String str = this.enc_key;
        if (str == null || str.isEmpty() || this.enc_key.length() != 16) {
            invalidate();
            return;
        }
        if (this.enc_key.length() != 16) {
            invalidate();
            return;
        }
        String str2 = this.keys.optString("session server") + this.enc_key;
        String str3 = this.keys.optString("session client") + this.enc_key;
        try {
            String strOptString = this.keys.optString("session scheme");
            this.encCipher = Cipher.getInstance(strOptString);
            this.decCipher = Cipher.getInstance(strOptString);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Hex.hex2bin(str2), "AES");
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(Hex.hex2bin(str3), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(Hex.hex2bin(this.keys.optString("session iv")));
            this.encCipher.init(1, secretKeySpec2, ivParameterSpec);
            this.decCipher.init(2, secretKeySpec, ivParameterSpec);
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
        } catch (InvalidKeyException e2) {
            e2.printStackTrace();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        } catch (NoSuchPaddingException e4) {
            e4.printStackTrace();
        }
    }

    public boolean isValid() {
        String str = this.id;
        return (str == null || str.isEmpty() || this.encCipher == null || this.decCipher == null) ? false : true;
    }

    public byte[] encrypt(byte[] bArr) {
        try {
            return this.encCipher.doFinal(bArr);
        } catch (BadPaddingException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalBlockSizeException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public byte[] decrypt(byte[] bArr) {
        try {
            return this.decCipher.doFinal(bArr);
        } catch (BadPaddingException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalBlockSizeException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
