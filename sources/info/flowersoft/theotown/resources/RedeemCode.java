package info.flowersoft.theotown.resources;

import com.badlogic.gdx.utils.Base64Coder;
import info.flowersoft.theotown.util.RandomUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class RedeemCode {
    public String code;

    public interface CheckResult {
        void onFailure(String str);

        void onSuccess(int i);
    }

    public RedeemCode(String str) {
        this.code = str.toLowerCase(Locale.ENGLISH).trim();
    }

    public boolean isValid() {
        if (this.code.length() < 2 || this.code.length() > 32) {
            return false;
        }
        for (int i = 0; i < this.code.length(); i++) {
            if (!Character.isLetterOrDigit(this.code.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public void check(final CheckResult checkResult) {
        new Thread(new Runnable() { // from class: info.flowersoft.theotown.resources.RedeemCode$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RedeemCode.$r8$lambda$k6E39Dofugyg43y1arbckm3ELUI(this.f$0, checkResult);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$k6E39Dofugyg43y1arbckm3ELUI(RedeemCode redeemCode, CheckResult checkResult) {
        String strGenerateRandomString;
        ArrayList arrayList;
        redeemCode.getClass();
        try {
            strGenerateRandomString = RandomUtil.generateRandomString(16);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL("https://api.theotown.com/gift/redeem" + ("?code=" + redeemCode.code + "&payload=" + strGenerateRandomString)).openStream(), StandardCharsets.UTF_8));
            arrayList = new ArrayList();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    arrayList.add(line);
                }
            }
            bufferedReader.close();
        } catch (IOException e) {
            checkResult.onFailure(e.toString());
            return;
        } catch (NumberFormatException unused) {
            checkResult.onFailure("Malformed diamonds");
            return;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        if (arrayList.size() >= 6) {
            String str = (String) arrayList.get(0);
            int i = Integer.parseInt((String) arrayList.get(1));
            String str2 = (String) arrayList.get(5);
            if (i > 0 && str.length() >= 16) {
                String strNormalizeCode = normalizeCode(redeemCode.md5(str + "_" + i));
                String lowerCase = strNormalizeCode.substring(strNormalizeCode.length() - redeemCode.code.length()).toLowerCase(Locale.ENGLISH);
                String strNormalizeCode2 = normalizeCode(redeemCode.md5("EDJX" + new String(Base64Coder.decode(Base64Coder.encodeString("saXYPCh6PsdvTS7xvI7d9MrV")), StandardCharsets.UTF_8) + "95ZB" + strGenerateRandomString), "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
                if (lowerCase.equals(redeemCode.code) && strNormalizeCode2.equals(str2)) {
                    checkResult.onSuccess(i);
                    return;
                }
            }
            checkResult.onFailure("unkown");
            return;
        }
        checkResult.onFailure(arrayList.size() > 0 ? (String) arrayList.get(0) : "Empty answer");
    }

    public final String md5(String str) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArrDigest) {
            stringBuffer.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
        }
        return stringBuffer.toString();
    }

    public static String normalizeCode(String str) {
        return normalizeCode(str, "0123456789abcdefghijklmnopqrstuvwxyz");
    }

    public static String normalizeCode(String str, String str2) {
        int length = str2.length();
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length() - 1) {
            int i2 = i + 2;
            sb.append(str2.charAt(Integer.parseInt(str.substring(i, i2), 16) % length));
            i = i2;
        }
        return sb.toString();
    }
}
