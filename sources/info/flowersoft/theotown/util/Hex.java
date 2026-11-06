package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public final class Hex {
    public static byte[] hex2bin(String str) {
        int length = (str.length() + 1) / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) * 16) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }

    public static String bin2hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(Character.forDigit((b & 255) >> 4, 16));
            sb.append(Character.forDigit(b & 15, 16));
        }
        return sb.toString();
    }

    public static String bin2ascii(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            int i = b & 255;
            if (!Character.isISOControl(i)) {
                sb.append((char) i);
            } else {
                sb.append('.');
            }
        }
        return sb.toString();
    }
}
