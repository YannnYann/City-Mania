package com.badlogic.gdx.utils;

import com.ironsource.G5;
import com.vungle.ads.internal.protos.Sdk;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class Base64Coder {
    public static final CharMap regularMap = new CharMap('+', '/');
    public static final CharMap urlsafeMap = new CharMap('-', '_');

    public static class CharMap {
        public final char[] encodingMap = new char[64];
        public final byte[] decodingMap = new byte[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];

        public CharMap(char c, char c2) {
            char c3 = 'A';
            int i = 0;
            while (c3 <= 'Z') {
                this.encodingMap[i] = c3;
                c3 = (char) (c3 + 1);
                i++;
            }
            char c4 = 'a';
            while (c4 <= 'z') {
                this.encodingMap[i] = c4;
                c4 = (char) (c4 + 1);
                i++;
            }
            char c5 = '0';
            while (c5 <= '9') {
                this.encodingMap[i] = c5;
                c5 = (char) (c5 + 1);
                i++;
            }
            char[] cArr = this.encodingMap;
            cArr[i] = c;
            cArr[i + 1] = c2;
            int i2 = 0;
            while (true) {
                byte[] bArr = this.decodingMap;
                if (i2 >= bArr.length) {
                    break;
                }
                bArr[i2] = -1;
                i2++;
            }
            for (int i3 = 0; i3 < 64; i3++) {
                this.decodingMap[this.encodingMap[i3]] = (byte) i3;
            }
        }
    }

    public static String encodeString(String str) {
        return encodeString(str, false);
    }

    public static String encodeString(String str, boolean z) {
        try {
            return new String(encode(str.getBytes("UTF-8"), (z ? urlsafeMap : regularMap).encodingMap));
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, regularMap.encodingMap);
    }

    public static char[] encode(byte[] bArr, char[] cArr) {
        return encode(bArr, 0, bArr.length, cArr);
    }

    public static char[] encode(byte[] bArr, int i, int i2, char[] cArr) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = ((i2 * 4) + 2) / 3;
        char[] cArr2 = new char[((i2 + 2) / 3) * 4];
        int i8 = i2 + i;
        int i9 = 0;
        while (i < i8) {
            int i10 = i + 1;
            byte b = bArr[i];
            int i11 = b & 255;
            if (i10 < i8) {
                i3 = i + 2;
                i4 = bArr[i10] & 255;
            } else {
                i3 = i10;
                i4 = 0;
            }
            if (i3 < i8) {
                i5 = i3 + 1;
                i6 = bArr[i3] & 255;
            } else {
                i5 = i3;
                i6 = 0;
            }
            int i12 = ((b & 3) << 4) | (i4 >>> 4);
            int i13 = ((i4 & 15) << 2) | (i6 >>> 6);
            int i14 = i6 & 63;
            cArr2[i9] = cArr[i11 >>> 2];
            int i15 = i9 + 2;
            cArr2[i9 + 1] = cArr[i12];
            char c = G5.U;
            cArr2[i15] = i15 < i7 ? cArr[i13] : '=';
            int i16 = i9 + 3;
            if (i16 < i7) {
                c = cArr[i14];
            }
            cArr2[i16] = c;
            i9 += 4;
            i = i5;
        }
        return cArr2;
    }

    public static String decodeString(String str) {
        return decodeString(str, false);
    }

    public static String decodeString(String str, boolean z) {
        return new String(decode(str.toCharArray(), (z ? urlsafeMap : regularMap).decodingMap));
    }

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }

    public static byte[] decode(char[] cArr, byte[] bArr) {
        return decode(cArr, 0, cArr.length, bArr);
    }

    public static byte[] decode(char[] cArr) {
        return decode(cArr, 0, cArr.length, regularMap.decodingMap);
    }

    public static byte[] decode(char[] cArr, int i, int i2, byte[] bArr) {
        char c;
        if (i2 % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        while (i2 > 0 && cArr[(i + i2) - 1] == '=') {
            i2--;
        }
        int i3 = (i2 * 3) / 4;
        byte[] bArr2 = new byte[i3];
        int i4 = i2 + i;
        int i5 = 0;
        while (i < i4) {
            char c2 = cArr[i];
            int i6 = i + 2;
            char c3 = cArr[i + 1];
            char c4 = 'A';
            if (i6 < i4) {
                i += 3;
                c = cArr[i6];
            } else {
                i = i6;
                c = 'A';
            }
            if (i < i4) {
                c4 = cArr[i];
                i++;
            }
            if (c2 > 127 || c3 > 127 || c > 127 || c4 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte b = bArr[c2];
            byte b2 = bArr[c3];
            byte b3 = bArr[c];
            byte b4 = bArr[c4];
            if (b < 0 || b2 < 0 || b3 < 0 || b4 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int i7 = (b << 2) | (b2 >>> 4);
            int i8 = ((b2 & 15) << 4) | (b3 >>> 2);
            int i9 = ((b3 & 3) << 6) | b4;
            int i10 = i5 + 1;
            bArr2[i5] = (byte) i7;
            if (i10 < i3) {
                bArr2[i10] = (byte) i8;
                i10 = i5 + 2;
            }
            if (i10 < i3) {
                i5 = i10 + 1;
                bArr2[i10] = (byte) i9;
            } else {
                i5 = i10;
            }
        }
        return bArr2;
    }
}
