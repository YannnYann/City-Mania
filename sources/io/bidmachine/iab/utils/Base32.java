package io.bidmachine.iab.utils;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public class Base32 {
    public static final byte[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

    public static final class b {
        public long a;
        public byte[] b;
        public int c;
        public int d;
        public boolean e;
        public int f;

        public b() {
        }
    }

    public final int a(int i, int i2) {
        int i3 = i - Integer.MIN_VALUE;
        int i4 = i2 - Integer.MIN_VALUE;
        if (i3 < i4) {
            return -1;
        }
        return i3 == i4 ? 0 : 1;
    }

    public String decode(final String encoded) {
        return decode(encoded.getBytes(Charset.forName("UTF-8")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(byte[] r23, int r24, int r25, io.bidmachine.iab.utils.Base32.b r26) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.utils.Base32.a(byte[], int, int, io.bidmachine.iab.utils.Base32$b):void");
    }

    public String decode(final byte[] encodedBytes) {
        if (encodedBytes == null || encodedBytes.length == 0) {
            return new String(encodedBytes);
        }
        b bVar = new b();
        a(encodedBytes, 0, encodedBytes.length, bVar);
        a(encodedBytes, 0, -1, bVar);
        int i = bVar.c;
        byte[] bArr = new byte[i];
        a(bArr, i, bVar);
        return new String(bArr);
    }

    public final byte[] a(int i, b bVar) {
        byte[] bArr = bVar.b;
        if (bArr == null) {
            bVar.b = new byte[Math.max(i, 8192)];
            bVar.c = 0;
            bVar.d = 0;
        } else {
            int i2 = bVar.c + i;
            if (i2 - bArr.length > 0) {
                return a(bVar, i2);
            }
        }
        return bVar.b;
    }

    public final byte[] a(b bVar, int i) {
        int length = bVar.b.length * 2;
        if (a(length, i) < 0) {
            length = i;
        }
        if (a(length, 2147483639) > 0) {
            length = Math.max(i, 2147483639);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = bVar.b;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        bVar.b = bArr;
        return bArr;
    }

    public final void a(byte[] bArr, int i, b bVar) {
        if (bVar.b != null) {
            int iMin = Math.min(a(bVar), i);
            System.arraycopy(bVar.b, bVar.d, bArr, 0, iMin);
            int i2 = bVar.d + iMin;
            bVar.d = i2;
            if (i2 >= bVar.c) {
                bVar.b = null;
            }
        }
    }

    public final int a(b bVar) {
        if (bVar.b != null) {
            return bVar.c - bVar.d;
        }
        return 0;
    }
}
