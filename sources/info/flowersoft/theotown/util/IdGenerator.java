package info.flowersoft.theotown.util;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes4.dex */
public final class IdGenerator {
    public static String generateId(int i) {
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(secureRandom.nextInt(62)));
        }
        return sb.toString();
    }
}
