package info.flowersoft.theotown.util;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes4.dex */
public final class RandomUtil {
    public static String generateRandomLowercaseString(int i) {
        return generateRandomString(i, "abcdefghijklmnopqrstuvwxyz0123456789");
    }

    public static String generateRandomString(int i) {
        return generateRandomString(i, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
    }

    public static String generateRandomString(int i, String str) {
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(str.charAt(secureRandom.nextInt(str.length())));
        }
        return sb.toString();
    }

    public static byte[] getRandomBytes(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }
}
