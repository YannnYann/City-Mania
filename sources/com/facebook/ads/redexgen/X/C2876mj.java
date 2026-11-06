package com.facebook.ads.redexgen.X;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2876mj {
    public static byte[] A04;
    public static String[] A05 = {"btdqbIGvpTpBfKYFtTSeCpf2zLMSjWuW", "UCnuYN2i8QqDrL1bJqeLO8X", "17NvhMWZ0tgUY276aod4TAiq1Nnn8xCb", "9WADZ8HRW24X4wF7eQLzJL", "a4Ju2aEQ", "O93LY1dStxgWVIx73EEjx", "nsSUaFY8IV5Gr54AyiEebsH", "cDIMEtFnlSMThLiJ5sNUGjpBQHcP5mDb"};
    public int A00;
    public long A01;
    public final RandomAccessFile A02;
    public final long[] A03;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
    
        if (r3 <= 100000) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
    
        if (r3 <= 100000) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007a, code lost:
    
        if (r1.length() < A02((int) r3)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
    
        r3 = new long[(int) r3];
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
    
        if (r2 >= r3.length) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        r3[r2] = r1.readLong();
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
    
        return new com.facebook.ads.redexgen.X.C2876mj(r1, r3, r1.length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bd, code lost:
    
        throw new java.io.IOException(java.lang.String.format(java.util.Locale.US, A05(com.vungle.ads.internal.protos.Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 63, 43), java.lang.Long.valueOf(r3), java.lang.Long.valueOf(r13.length())));
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2876mj A04(java.io.File r13) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2876mj.A04(java.io.File):com.facebook.ads.redexgen.X.mj");
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A04 = new byte[]{-57, -30, -22, -19, -26, -27, -95, -11, -16, -95, -28, -13, -26, -30, -11, -26, -95, -25, -22, -19, -26, -95, -88, -90, -12, -88, 114, -115, -107, -104, -111, -112, 76, -96, -101, 76, -101, -100, -111, -102, 76, -110, -107, -104, -111, 76, 83, 81, -97, 83, -69, -34, -31, -38, -107, -102, -39, -107, -41, -18, -23, -38, -24, -95, -107, -31, -38, -24, -24, -107, -23, -35, -42, -29, -107, -102, -39, -95, -60, -57, -64, 123, -65, -64, -66, -57, -68, -51, -64, -50, 123, -68, 123, -49, -54, -49, -68, -57, 123, -54, -63, 123, -128, -65, 123, -51, -64, -66, -54, -51, -65, 123, -50, -57, -54, -49, -50, -99, -64, -61, -68, 119, -69, -68, -70, -61, -72, -55, -68, -54, 119, -72, 119, -53, -58, -53, -72, -61, 119, -58, -67, 119, 124, -69, 119, -55, -68, -70, -58, -55, -69, 119, -54, -61, -58, -53, -54, -125, 119, -71, -52, -53, 119, -58, -59, -61, -48, 119, -65, -72, -54, 119, 124, -69, 119, -71, -48, -53, -68, -54, 122, -99, -96, -103, 84, -95, -107, -101, -99, -105, 84, 89, -104, 84, -99, -94, -89, -88, -103, -107, -104, 84, -93, -102, 84, 89, -104, -85, -66, -68, -56, -53, -67, 121, 126, -67, 121, -56, -65, -65, -52, -66, -51, 121, -62, -52, 121, 126, -67, -123, 121, -69, -50, -51, 121, -53, -66, -68, -56, -53, -67, 121, 126, -67, 121, -56, -65, -65, -52, -66, -51, 121, -62, -52, 121, 126, -67, -77, -58, -60, -48, -45, -59, -127, -122, -59, -127, -48, -57, -57, -44, -58, -43, -127, -44, -55, -48, -42, -51, -59, -127, -61, -58, -127, -111, -127, -61, -58, -60, -62, -42, -44, -58, -127, -45, -58, -60, -48, -45, -59, -127, -60, -48, -42, -49, -43, -127, -54, -44, -127, -122, -59, -115, -127, -61, -42, -43, -127, -54, -44, -127, -122, -59, -79, -60, -62, -50, -47, -61, 127, -124, -61, 127, -46, -45, -64, -47, -45, -46, 127, -64, -45, 127, -50, -59, -59, -46, -60, -45, 127, -124, -61, -117, 127, -63, -44, -45, 127, -59, -56, -53, -60, 127, -46, -56, -39, -60, 127, -56, -46, 127, -124, -61, -107, -88, -90, -78, -75, -89, 99, 115, 99, -78, -87, -87, -74, -88, -73, 99, -88, -69, -77, -88, -90, -73, -88, -89, 99, -92, -73, 99, 104, -89, 99, -91, -72, -73, 99, -84, -74, 99, -92, -73, 99, 104, -89, -57, -52, -56};
    }

    static {
        A06();
    }

    public C2876mj(RandomAccessFile randomAccessFile, long[] jArr, long j) throws IOException {
        this.A02 = randomAccessFile;
        this.A03 = jArr;
        this.A01 = j;
        for (int i = 0; i < jArr.length && jArr[i] != 0; i++) {
            this.A00++;
        }
        if (this.A00 > 0) {
            long jA01 = A01();
            if (jArr[0] != jA01) {
                throw new IOException(String.format(Locale.US, A05(373, 43, 23), Long.valueOf(jA01), Long.valueOf(jArr[0])));
            }
        }
        for (int i2 = this.A00; i2 < jArr.length; i2++) {
            if (jArr[i2] != 0) {
                throw new IOException(String.format(Locale.US, A05(257, 66, 53), Integer.valueOf(i2), Integer.valueOf(this.A00), Long.valueOf(jArr[i2])));
            }
        }
        for (int i3 = 1; i3 < this.A00; i3++) {
            if (jArr[i3 - 1] > jArr[i3]) {
                throw new IOException(String.format(Locale.US, A05(207, 50, 45), Integer.valueOf(i3 - 1), Long.valueOf(jArr[i3 - 1]), Integer.valueOf(i3), Long.valueOf(jArr[i3])));
            }
        }
        if (this.A00 > 0 && jArr[this.A00 - 1] > j) {
            throw new IOException(String.format(Locale.US, A05(323, 50, 51), Integer.valueOf(this.A00 - 1), Long.valueOf(jArr[this.A00 - 1]), Long.valueOf(j)));
        }
    }

    public static long A00() {
        return 16L;
    }

    private final long A01() {
        return A00() + ((long) (this.A03.length * 8));
    }

    public static long A02(int i) {
        return A00() + ((long) (i * 8));
    }

    public static C2876mj A03(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, A05(416, 3, 41));
        try {
            randomAccessFile.writeLong(-360011992771067903L);
            randomAccessFile.writeLong(C2877mk.A03);
            randomAccessFile.write(new byte[C2877mk.A03 * 8]);
            randomAccessFile.getFD().sync();
            return new C2876mj(randomAccessFile, new long[C2877mk.A03], randomAccessFile.length());
        } catch (IOException unused) {
            A07(randomAccessFile);
            throw new IOException(String.format(Locale.US, A05(0, 26, 85), file.getCanonicalPath()));
        }
    }

    public static void A07(Closeable closeable) {
        try {
            closeable.close();
        } catch (Exception unused) {
        }
    }
}
