package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.File;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class MK extends C2366eL {
    public static byte[] A00;
    public static String[] A01 = {"I4nb8GxG61c", "lWcZexrzZyPCwXa97JGbRx7RMJI9gKq1", "aakAI8mh6jqTIwflRhZ8D8Z0ceFTjQl", "vyRM5UEFF9IluSyRJ5unfvLfh1Lz04qO", "nBXQmVWORPT1", "tt93hsDHQxAndY2rD5XDN08ttdcn", "s8Ypc7mSdfoJt0WWWrUbzXXDxRiQzd3", "Gmc"};
    public static final Pattern A02;
    public static final Pattern A03;
    public static final Pattern A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static MK A00(File file, long j, long j2, C2375eU c2375eU) {
        String strA0F;
        long j3 = j2;
        long length = j;
        String name = file.getName();
        if (!name.endsWith(A06(1, 7, 51))) {
            file = A05(file, c2375eU);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = A04.matcher(name);
        if (!matcher.matches() || (strA0F = c2375eU.A0F(Integer.parseInt((String) AbstractC1747Ln.A01(matcher.group(1))))) == null) {
            return null;
        }
        if (length == -1) {
            length = file.length();
        }
        if (length == 0) {
            return null;
        }
        long j4 = Long.parseLong((String) AbstractC1747Ln.A01(matcher.group(2)));
        if (j3 == -9223372036854775807L) {
            j3 = Long.parseLong((String) AbstractC1747Ln.A01(matcher.group(3)));
        }
        return new MK(strA0F, j4, length, j3, file);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr = A01;
            if (strArr[6].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "Ts3WY6eF5JEGJnDZKyxqmKfGkyXOPSQH";
            strArr2[1] = "3uLJhb5CzQdeeBRXFU6Oy1dBtA7VgI52";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{11, 27, 67, 6, 27, 80, 77, 90, 121, 15, 9, 12, 14, 123, 9, 15, 123, 67, 12, 14, 123, 9, 15, 123, 67, 12, 14, 123, 9, 81, 22, 123, 9, 66, 95, 72, 3, 101, 19, 21, 16, 18, 103, 21, 19, 103, 95, 16, 18, 103, 21, 19, 103, 95, 16, 18, 103, 21, 77, 9, 103, 21, 94, 67, 84, 31, 126, 8, 124, 68, 11, 9, 124, 14, 8, 124, 68, 11, 9, 124, 14, 8, 124, 68, 11, 9, 124, 14, 86, 19, 124, 14, 69, 88, 79, 4};
    }

    static {
        A07();
        A02 = Pattern.compile(A06(8, 29, 33), 32);
        A03 = Pattern.compile(A06(37, 29, 61), 32);
        A04 = Pattern.compile(A06(66, 30, 38), 32);
    }

    public MK(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static MK A01(File file, long j, C2375eU c2375eU) {
        return A00(file, j, -9223372036854775807L, c2375eU);
    }

    public static MK A02(String str, long j) {
        return new MK(str, j, -1L, -9223372036854775807L, null);
    }

    public static MK A03(String str, long j, long j2) {
        return new MK(str, j, j2, -9223372036854775807L, null);
    }

    public static File A04(File file, int i, long j, long j2) {
        StringBuilder sbAppend = new StringBuilder().append(i);
        String strA06 = A06(0, 1, 35);
        return new File(file, sbAppend.append(strA06).append(j).append(strA06).append(j2).append(A06(1, 7, 51)).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.File A05(java.io.File r11, com.facebook.ads.redexgen.X.C2375eU r12) {
        /*
            r4 = 0
            java.lang.String r6 = r11.getName()
            java.util.regex.Pattern r0 = com.facebook.ads.redexgen.X.MK.A03
            java.util.regex.Matcher r3 = r0.matcher(r6)
            boolean r0 = r3.matches()
            r5 = 1
            if (r0 == 0) goto L3e
            java.lang.String r4 = r3.group(r5)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.MK.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 1
            r2 = r2[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.MK.A01
            java.lang.String r1 = "ow8kvC"
            r0 = 4
            r2[r0] = r1
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r4)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r4 = com.facebook.ads.redexgen.X.N1.A0l(r0)
        L3a:
            r2 = 0
            if (r4 != 0) goto L6d
            return r2
        L3e:
            java.util.regex.Pattern r3 = com.facebook.ads.redexgen.X.MK.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.MK.A01
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 5
            if (r1 == r0) goto La5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.MK.A01
            java.lang.String r1 = "S7mgE4wgu7RVVt6ksDuDtQLvooCgQXJY"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "YrgFSEXA3Qgd65zP5V28q2MnJWVi9qqT"
            r0 = 1
            r2[r0] = r1
            java.util.regex.Matcher r3 = r3.matcher(r6)
            boolean r0 = r3.matches()
            if (r0 == 0) goto L3a
            java.lang.String r0 = r3.group(r5)
            java.lang.Object r4 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            java.lang.String r4 = (java.lang.String) r4
            goto L3a
        L6d:
            java.io.File r0 = r11.getParentFile()
            java.lang.Object r5 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A02(r0)
            java.io.File r5 = (java.io.File) r5
            int r6 = r12.A0B(r4)
            r0 = 2
            java.lang.String r0 = r3.group(r0)
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            java.lang.String r0 = (java.lang.String) r0
            long r7 = java.lang.Long.parseLong(r0)
            r0 = 3
            java.lang.String r0 = r3.group(r0)
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            java.lang.String r0 = (java.lang.String) r0
            long r9 = java.lang.Long.parseLong(r0)
            java.io.File r1 = A04(r5, r6, r7, r9)
            boolean r0 = r11.renameTo(r1)
            if (r0 != 0) goto La4
            return r2
        La4:
            return r1
        La5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MK.A05(java.io.File, com.facebook.ads.redexgen.X.eU):java.io.File");
    }

    public final MK A0D(File file, long j) {
        AbstractC1747Ln.A08(this.A05);
        return new MK(this.A04, this.A02, this.A01, j, file);
    }
}
