package com.google.crypto.tink.internal;

import com.google.crypto.tink.util.Bytes;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Util {
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    public static int randKeyId() {
        int i = 0;
        while (i == 0) {
            byte[] bArrRandBytes = Random.randBytes(4);
            i = (bArrRandBytes[3] & 255) | ((bArrRandBytes[0] & 255) << 24) | ((bArrRandBytes[1] & 255) << 16) | ((bArrRandBytes[2] & 255) << 8);
        }
        return i;
    }

    public static final byte toByteFromPrintableAscii(char c) {
        if (c >= '!' && c <= '~') {
            return (byte) c;
        }
        throw new TinkBugException("Not a printable ASCII character: " + c);
    }

    public static final byte checkedToByteFromPrintableAscii(char c) throws GeneralSecurityException {
        if (c >= '!' && c <= '~') {
            return (byte) c;
        }
        throw new GeneralSecurityException("Not a printable ASCII character: " + c);
    }

    public static final Bytes toBytesFromPrintableAscii(String s) {
        byte[] bArr = new byte[s.length()];
        for (int i = 0; i < s.length(); i++) {
            bArr[i] = toByteFromPrintableAscii(s.charAt(i));
        }
        return Bytes.copyFrom(bArr);
    }

    public static final Bytes checkedToBytesFromPrintableAscii(String s) throws GeneralSecurityException {
        byte[] bArr = new byte[s.length()];
        for (int i = 0; i < s.length(); i++) {
            bArr[i] = checkedToByteFromPrintableAscii(s.charAt(i));
        }
        return Bytes.copyFrom(bArr);
    }

    public static boolean isAndroid() {
        return Objects.equals(System.getProperty("java.vendor"), "The Android Project");
    }

    public static Integer getAndroidApiLevel() {
        if (isAndroid()) {
            return BuildDispatchedCode.getApiLevel();
        }
        return null;
    }

    public static boolean isPrefix(byte[] prefix, byte[] complete) {
        if (complete.length < prefix.length) {
            return false;
        }
        for (int i = 0; i < prefix.length; i++) {
            if (complete[i] != prefix[i]) {
                return false;
            }
        }
        return true;
    }
}
