package ads_mobile_sdk;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class hx3 {
    private static final c a;
    static final boolean b;

    public static final class e extends d {
        private static final Method a = b();

        private static Method b() {
            try {
                return String.class.getMethod("encodedLength", Charset.class);
            } catch (ReflectiveOperationException unused) {
                return null;
            }
        }

        public static boolean c() {
            return a != null;
        }

        @Override // ads_mobile_sdk.hx3.c
        public int a(String str) {
            try {
                return ((Integer) a.invoke(str, StandardCharsets.UTF_8)).intValue();
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    static {
        c cVarA = a();
        a = cVarA;
        b = cVarA.a();
    }

    public static boolean b(byte[] bArr, int i, int i2) {
        return c(bArr, i, i2);
    }

    private static boolean c(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return true;
        }
        return d(bArr, i, i2);
    }

    private static boolean d(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i3 < i2 && b2 >= -62) {
                        i += 2;
                        if (bArr[i3] > -65) {
                        }
                    }
                    return false;
                }
                if (b2 < -16) {
                    if (i3 >= i2 - 1) {
                        return false;
                    }
                    int i4 = i + 2;
                    byte b3 = bArr[i3];
                    if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                        i += 3;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return false;
                }
                if (i3 >= i2 - 2) {
                    return false;
                }
                int i5 = i + 2;
                byte b4 = bArr[i3];
                if (b4 <= -65) {
                    if ((((b4 + 112) + (b2 << 28)) >> 30) == 0) {
                        int i6 = i + 3;
                        if (bArr[i5] <= -65) {
                            i += 4;
                            if (bArr[i6] > -65) {
                            }
                        }
                    }
                }
                return false;
            }
            i = i3;
        }
        return true;
    }

    public static class f extends Exception {
        public f(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    public static String a(byte[] bArr, int i, int i2) throws np1 {
        if (i2 == 0) {
            return "";
        }
        return a.a(bArr, i, i2);
    }

    public static abstract class c {
        public abstract int a(String str, byte[] bArr, int i, int i2);

        public abstract String a(byte[] bArr, int i, int i2) throws np1;

        public abstract boolean a();

        public int b(String str, byte[] bArr, int i, int i2) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            if (bytes.length - i <= i2) {
                System.arraycopy(bytes, 0, bArr, i, bytes.length);
                return i + bytes.length;
            }
            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        
            if (r2 < r0) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        
            throw new java.lang.IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) r2) + 4294967296L));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int a(java.lang.String r6) {
            /*
                r5 = this;
                int r0 = r6.length()
                r1 = 0
            L5:
                if (r1 >= r0) goto L12
                char r2 = r6.charAt(r1)
                r3 = 128(0x80, float:1.8E-43)
                if (r2 >= r3) goto L12
                int r1 = r1 + 1
                goto L5
            L12:
                r2 = r0
            L13:
                if (r1 >= r0) goto L33
                char r3 = r6.charAt(r1)
                r4 = 2048(0x800, float:2.87E-42)
                if (r3 >= r4) goto L25
                int r3 = 127 - r3
                int r3 = r3 >>> 31
                int r2 = r2 + r3
                int r1 = r1 + 1
                goto L13
            L25:
                int r6 = ads_mobile_sdk.hx3.m272$$Nest$sma(r6, r1)     // Catch: ads_mobile_sdk.hx3.f -> L2b
                int r2 = r2 + r6
                goto L33
            L2b:
                java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.UTF_8
                byte[] r6 = r6.getBytes(r0)
                int r6 = r6.length
                return r6
            L33:
                if (r2 < r0) goto L36
                return r2
            L36:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                long r0 = (long) r2
                r2 = 4294967296(0x100000000, double:2.121995791E-314)
                long r0 = r0 + r2
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "UTF-8 length does not fit in int: "
                r2.append(r3)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hx3.c.a(java.lang.String):int");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(String str, int i) throws f {
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(str, i) < 65536) {
                        throw new f(i, length);
                    }
                    i++;
                }
            }
            i++;
        }
        return i2;
    }

    public static final class b extends c {
        @Override // ads_mobile_sdk.hx3.c
        public boolean a() {
            return false;
        }

        @Override // ads_mobile_sdk.hx3.c
        public String a(byte[] bArr, int i, int i2) throws np1 {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (!a.b(b)) {
                        break;
                    }
                    i++;
                    a.a(b, cArr, i4);
                    i4++;
                }
                int i5 = i4;
                while (i < i3) {
                    int i6 = i + 1;
                    byte b2 = bArr[i];
                    if (a.b(b2)) {
                        a.a(b2, cArr, i5);
                        i5++;
                        i = i6;
                        while (i < i3) {
                            byte b3 = bArr[i];
                            if (!a.b(b3)) {
                                break;
                            }
                            i++;
                            a.a(b3, cArr, i5);
                            i5++;
                        }
                    } else if (a.d(b2)) {
                        if (i6 < i3) {
                            i += 2;
                            a.a(b2, bArr[i6], cArr, i5);
                            i5++;
                        } else {
                            throw np1.d();
                        }
                    } else if (a.c(b2)) {
                        if (i6 < i3 - 1) {
                            int i7 = i + 2;
                            i += 3;
                            a.a(b2, bArr[i6], bArr[i7], cArr, i5);
                            i5++;
                        } else {
                            throw np1.d();
                        }
                    } else if (i6 < i3 - 2) {
                        byte b4 = bArr[i6];
                        int i8 = i + 3;
                        byte b5 = bArr[i + 2];
                        i += 4;
                        a.a(b2, b4, b5, bArr[i8], cArr, i5);
                        i5 += 2;
                    } else {
                        throw np1.d();
                    }
                }
                return new String(cArr, 0, i5);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        @Override // ads_mobile_sdk.hx3.c
        public int a(String str, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            char cCharAt;
            int length = str.length();
            int i5 = i + i2;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (cCharAt = str.charAt(i6)) < 128) {
                bArr[i4] = (byte) cCharAt;
                i6++;
            }
            if (i6 == length) {
                return i + length;
            }
            int i7 = i + i6;
            while (i6 < length) {
                char cCharAt2 = str.charAt(i6);
                if (cCharAt2 < 128 && i7 < i5) {
                    bArr[i7] = (byte) cCharAt2;
                    i7++;
                } else if (cCharAt2 < 2048 && i7 <= i5 - 2) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) ((cCharAt2 >>> 6) | 960);
                    i7 += 2;
                    bArr[i8] = (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i7 > i5 - 3) {
                        if (i7 <= i5 - 4) {
                            i6++;
                            if (i6 != str.length()) {
                                char cCharAt3 = str.charAt(i6);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                                    bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                    int i9 = i7 + 3;
                                    bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                    i7 += 4;
                                    bArr[i9] = (byte) ((codePoint & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                }
                            }
                            return b(str, bArr, i, i2);
                        }
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i3 = i6 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i3)))) {
                            return b(str, bArr, i, i2);
                        }
                        throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                    }
                    bArr[i7] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i10 = i7 + 2;
                    bArr[i7 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                    i7 += 3;
                    bArr[i10] = (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                }
                i6++;
            }
            return i7;
        }
    }

    public static boolean a(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    private static c a() {
        if (gi.b()) {
            return new b();
        }
        try {
            if (System.getenv("PROTOBUF_FORCE_MOBILE_UTF8_PROCESSOR_FOR_TESTING") != null) {
                return new b();
            }
        } catch (SecurityException unused) {
        }
        if (e.c()) {
            return new e();
        }
        return new d();
    }

    public static int a(String str) {
        return a.a(str);
    }

    public static int a(String str, byte[] bArr, int i, int i2) {
        return a.a(str, bArr, i, i2);
    }

    public static class d extends c {
        @Override // ads_mobile_sdk.hx3.c
        public boolean a() {
            return true;
        }

        @Override // ads_mobile_sdk.hx3.c
        public int a(String str, byte[] bArr, int i, int i2) {
            return b(str, bArr, i, i2);
        }

        @Override // ads_mobile_sdk.hx3.c
        public String a(byte[] bArr, int i, int i2) throws np1 {
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(bArr, i, i2, charset);
            if (str.indexOf(65533) >= 0 && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i, i2 + i))) {
                throw np1.d();
            }
            return str;
        }
    }

    public static class a {
        public static char a(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        public static boolean a(byte b) {
            return b > -65;
        }

        public static char b(int i) {
            return (char) ((i & IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE) + 56320);
        }

        public static boolean b(byte b) {
            return b >= 0;
        }

        public static boolean c(byte b) {
            return b < -16;
        }

        public static boolean d(byte b) {
            return b < -32;
        }

        public static int e(byte b) {
            return b & 63;
        }

        public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws np1 {
            if (!a(b2)) {
                if ((((b2 + 112) + (b << 28)) >> 30) == 0 && !a(b3) && !a(b4)) {
                    int iE = ((b & 7) << 18) | (e(b2) << 12) | (e(b3) << 6) | e(b4);
                    cArr[i] = a(iE);
                    cArr[i + 1] = b(iE);
                    return;
                }
            }
            throw np1.d();
        }

        public static void a(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        public static void a(byte b, byte b2, byte b3, char[] cArr, int i) throws np1 {
            if (!a(b2) && ((b != -32 || b2 >= -96) && ((b != -19 || b2 < -96) && !a(b3)))) {
                cArr[i] = (char) (((b & 15) << 12) | (e(b2) << 6) | e(b3));
                return;
            }
            throw np1.d();
        }

        public static void a(byte b, byte b2, char[] cArr, int i) throws np1 {
            if (b >= -62 && !a(b2)) {
                cArr[i] = (char) (((b & 31) << 6) | e(b2));
                return;
            }
            throw np1.d();
        }
    }
}
