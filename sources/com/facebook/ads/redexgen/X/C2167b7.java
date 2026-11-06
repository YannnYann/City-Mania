package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2167b7 {
    public static byte[] A03;
    public static String[] A04 = {"zNK", "vIvWglcnQ7qKFb0Rok0hx", "c1ukHyGfRSnoNQd5OEd6G0pJfqf7lC", "iP7assWOFbLL7DDJmweoic8YvcJmysXt", "uXxcjU8o62g", "FqikrlfUwRV", "1rV7ujrtkRGNIaUMcxQUSxZM0OyLCHMu", "p4"};
    public static final C2004We A05;
    public static final C2004We A06;
    public int A01;
    public final List<C2164b4> A02 = new ArrayList();
    public int A00 = 0;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{100, 67, 91, 76, 65, 68, 73, 13, 126, 104, 107, 13, 67, 76, 64, 72, 85, 106, 105, 113, 75, 105, 114, 111, 105, 104, 89, 66, 103, 114, 103, 32, 6, 3, 22, 1, 44, 32, 31, 28, 4, 62, 28, 7, 26, 28, 29, 44, 49, 52, 62, 43, 13, 8, 29, 10, 39, 43, 20, 23, 15, 53, 23, 12, 17, 23, 22, 39, 60, 25, 12, 25, 68, 98, 103, 114, 101, 72, 68, 123, 120, 96, 90, 120, 99, 126, 120, 121, 72, 83, 114, 113, 123, 126, 116, 124, 114, 101, 126, 121, 112, 72, 88, 121, 112, 86, 83, 70, 81, 124, 112, 79, 76, 84, 110, 76, 87, 74, 76, 77, 124, 102, 71, 74, 87, 124, 103, 66, 87, 66};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(Q9 q9, List<Metadata.Entry> list) throws IOException {
        long jA9Q = q9.A9Q();
        int iA90 = (int) ((q9.A90() - q9.A9Q()) - ((long) this.A01));
        C1769Mk c1769Mk = new C1769Mk(iA90);
        q9.readFully(c1769Mk.A0l(), 0, iA90);
        for (int i = 0; i < this.A02.size(); i++) {
            C2164b4 c2164b4 = this.A02.get(i);
            c1769Mk.A0f((int) (c2164b4.A02 - jA9Q));
            c1769Mk.A0g(4);
            int iA0E = c1769Mk.A0E();
            if (A04[3].charAt(11) != 'L') {
                throw new RuntimeException();
            }
            A04[2] = "xMc6j4gz3ok9CZcN6alkrEQubRj6HZ";
            int iA00 = A00(c1769Mk.A0W(iA0E));
            int i2 = c2164b4.A01 - (iA0E + 8);
            switch (iA00) {
                case 2192:
                    list.add(A01(c1769Mk, i2));
                    break;
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    static {
        A03();
        A06 = C2004We.A02(':');
        A05 = C2004We.A02('*');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(java.lang.String r3) throws com.facebook.ads.redexgen.X.L9 {
        /*
            int r0 = r3.hashCode()
            switch(r0) {
                case -1711564334: goto L62;
                case -1332107749: goto L50;
                case -1251387154: goto L3e;
                case -830665521: goto L2c;
                case 1760745220: goto L1a;
                default: goto L7;
            }
        L7:
            r0 = -1
        L8:
            switch(r0) {
                case 0: goto L80;
                case 1: goto L7d;
                case 2: goto L7a;
                case 3: goto L77;
                case 4: goto L74;
                default: goto Lb;
            }
        Lb:
            r2 = 0
            r1 = 16
            r0 = 74
            java.lang.String r1 = A02(r2, r1, r0)
            r0 = 0
            com.facebook.ads.redexgen.X.L9 r0 = com.facebook.ads.redexgen.X.L9.A01(r1, r0)
            throw r0
        L1a:
            r2 = 31
            r1 = 20
            r0 = 20
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L8
        L2c:
            r2 = 72
            r1 = 32
            r0 = 112(0x70, float:1.57E-43)
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 4
            goto L8
        L3e:
            r2 = 51
            r1 = 21
            r0 = 31
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L8
        L50:
            r2 = 104(0x68, float:1.46E-43)
            r1 = 26
            r0 = 68
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 3
            goto L8
        L62:
            r2 = 16
            r1 = 15
            r0 = 97
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        L74:
            r0 = 2820(0xb04, float:3.952E-42)
            return r0
        L77:
            r0 = 2819(0xb03, float:3.95E-42)
            return r0
        L7a:
            r0 = 2817(0xb01, float:3.947E-42)
            return r0
        L7d:
            r0 = 2816(0xb00, float:3.946E-42)
            return r0
        L80:
            r0 = 2192(0x890, float:3.072E-42)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2167b7.A00(java.lang.String):int");
    }

    public static SlowMotionData A01(C1769Mk c1769Mk, int i) throws L9 {
        List<SlowMotionData.Segment> segments = new ArrayList<>();
        String dataString = c1769Mk.A0W(i);
        List<String> listA06 = A05.A06(dataString);
        for (int i2 = 0; i2 < listA06.size(); i2++) {
            List<String> listA062 = A06.A06(listA06.get(i2));
            if (listA062.size() == 3) {
                try {
                    long j = Long.parseLong(listA062.get(0));
                    long startTimeMs = Long.parseLong(listA062.get(1));
                    segments.add(new SlowMotionData.Segment(j, startTimeMs, 1 << (Integer.parseInt(listA062.get(2)) - 1)));
                } catch (NumberFormatException e) {
                    throw L9.A01(null, e);
                }
            } else {
                throw L9.A01(null, null);
            }
        }
        return new SlowMotionData(segments);
    }

    private void A04(Q9 q9, ZH zh) throws IOException {
        C1769Mk c1769Mk = new C1769Mk(8);
        q9.readFully(c1769Mk.A0l(), 0, 8);
        this.A01 = c1769Mk.A0E() + 8;
        if (c1769Mk.A0C() != 1397048916) {
            zh.A00 = 0L;
        } else {
            zh.A00 = q9.A9Q() - ((long) (this.A01 - 12));
            this.A00 = 2;
        }
    }

    private void A05(Q9 q9, ZH zh) throws IOException {
        long jA90 = q9.A90();
        int i = (this.A01 - 12) - 8;
        C1769Mk c1769Mk = new C1769Mk(i);
        q9.readFully(c1769Mk.A0l(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            c1769Mk.A0g(2);
            int i3 = c1769Mk.A0a();
            switch (i3) {
                case 2192:
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    long streamLength = this.A01;
                    long j = jA90 - streamLength;
                    long streamLength2 = c1769Mk.A0E();
                    int size = c1769Mk.A0E();
                    this.A02.add(new C2164b4(i3, j - streamLength2, size));
                    break;
                default:
                    c1769Mk.A0g(8);
                    break;
            }
        }
        if (this.A02.isEmpty()) {
            zh.A00 = 0L;
            return;
        }
        this.A00 = 3;
        long streamLength3 = this.A02.get(0).A02;
        zh.A00 = streamLength3;
    }

    public final int A07(Q9 q9, ZH zh, List<Metadata.Entry> slowMotionMetadataEntries) throws IOException {
        long j = 0;
        switch (this.A00) {
            case 0:
                long jA90 = q9.A90();
                if (jA90 != -1 && jA90 >= 8) {
                    j = jA90 - 8;
                }
                zh.A00 = j;
                this.A00 = 1;
                return 1;
            case 1:
                A04(q9, zh);
                return 1;
            case 2:
                A05(q9, zh);
                return 1;
            case 3:
                A06(q9, slowMotionMetadataEntries);
                zh.A00 = 0L;
                return 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final void A08() {
        this.A02.clear();
        this.A00 = 0;
    }
}
