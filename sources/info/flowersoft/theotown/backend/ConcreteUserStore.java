package info.flowersoft.theotown.backend;

import com.badlogic.gdx.utils.Base64Coder;
import com.google.android.gms.common.Scopes;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.UnsupportedEncodingException;
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
public class ConcreteUserStore implements UserStore {
    public Cipher decCipher;
    public Cipher encCipher;

    public ConcreteUserStore(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("user scheme");
        try {
            this.encCipher = Cipher.getInstance(strOptString);
            this.decCipher = Cipher.getInstance(strOptString);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Hex.hex2bin(jSONObject.optString("user key")), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(Hex.hex2bin(jSONObject.optString("user iv")));
            this.encCipher.init(1, secretKeySpec, ivParameterSpec);
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

    public final String enc(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        try {
            return new String(Base64Coder.encode(this.encCipher.doFinal(str.getBytes("UTF-8"))));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (BadPaddingException e3) {
            e3.printStackTrace();
            return null;
        } catch (IllegalBlockSizeException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public final String dec(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        try {
            return new String(this.decCipher.doFinal(Base64Coder.decode(str.replace("\n", ""))), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (BadPaddingException e3) {
            e3.printStackTrace();
            return null;
        } catch (IllegalBlockSizeException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // info.flowersoft.theotown.backend.UserStore
    public synchronized void store(User user) {
        SSP.Writer writerEdit = new SSP("user_store").edit();
        writerEdit.putLong(C3670j8.x, user.getId());
        writerEdit.putString("name", enc(user.getName()));
        writerEdit.putString(Scopes.EMAIL, enc(user.getEmail()));
        writerEdit.putString("fb_id", enc(user.getSocial_id()));
        writerEdit.putString("social_type", enc(user.getSocial_type()));
        writerEdit.putString("steam_id", enc("" + user.getSteamId()));
        writerEdit.putString("steam_name", enc(user.getSteamName()));
        writerEdit.putString("forum_name", enc(user.getForumName()));
        writerEdit.putString("forum_pw", enc(user.getForumPw()));
        writerEdit.putString("forum_id", enc("" + user.getForumId()));
        writerEdit.putString("forum_color", enc(user.getForumColor()));
        writerEdit.apply();
    }

    @Override // info.flowersoft.theotown.backend.UserStore
    public synchronized void restore(User user) {
        SSP.Reader readerLoad = new SSP("user_store").load();
        user.setId(readerLoad.getLong(C3670j8.x, 0L));
        user.setName(dec(readerLoad.getString("name", "")));
        user.setEmail(dec(readerLoad.getString(Scopes.EMAIL, "")));
        user.setSocial_id(dec(readerLoad.getString("fb_id", "")));
        user.setSocial_type(dec(readerLoad.getString("social_type", "")));
        user.setSteamName(dec(readerLoad.getString("steam_name", "")));
        user.setForumName(dec(readerLoad.getString("forum_name", "")));
        user.setForumPw(dec(readerLoad.getString("forum_pw", "")));
        user.setForumColor(dec(readerLoad.getString("forum_color", "")));
        try {
            user.setSteamId(Long.parseLong(dec(readerLoad.getString("steam_id", enc("0")))));
            user.setForumId(Long.parseLong(dec(readerLoad.getString("forum_id", enc("0")))));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }
}
