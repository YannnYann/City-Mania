package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RunnableC2622iX implements Runnable {
    public static Comparator<C2621iW> A04;
    public static byte[] A05;
    public static String[] A06 = {"C", "g", "thIgEQWd9nx", "UJ", "nKFIv9xSQBz", "WKzZJ6F0j2u08DpGCnjDR9E", "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD", "RW"};
    public static final ThreadLocal<RunnableC2622iX> A07;
    public long A00;
    public long A01;
    public ArrayList<C7O> A02 = new ArrayList<>();
    public ArrayList<C2621iW> A03 = new ArrayList<>();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{97, 101, 47, 93, 116, -126, -125, 116, 115, 47, 95, -127, 116, 117, 116, -125, 114, 119, 92, 96, 42, 90, 124, 111, 112, 111, 126, 109, 114};
    }

    static {
        A03();
        A07 = new ThreadLocal<>();
        A04 = new C2620iV();
    }

    private AbstractC2663jE A00(C7O c7o, int i, long j) {
        if (A08(c7o, i)) {
            return null;
        }
        C2653j4 c2653j4 = c7o.A0r;
        try {
            c7o.A1O();
            AbstractC2663jE abstractC2663jEA0J = c2653j4.A0J(i, false, j);
            if (abstractC2663jEA0J != null) {
                if (abstractC2663jEA0J.A0l() && !abstractC2663jEA0J.A0m()) {
                    c2653j4.A0Y(abstractC2663jEA0J.A0H);
                } else {
                    c2653j4.A0e(abstractC2663jEA0J, false);
                }
            }
            return abstractC2663jEA0J;
        } finally {
            c7o.A1v(false);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:20:0x0078 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A02() {
        /*
            r10 = this;
            java.util.ArrayList<com.facebook.ads.redexgen.X.7O> r0 = r10.A02
            int r4 = r0.size()
            r5 = 0
            r3 = 0
        L8:
            r2 = 0
            if (r3 >= r4) goto L26
            java.util.ArrayList<com.facebook.ads.redexgen.X.7O> r0 = r10.A02
            java.lang.Object r1 = r0.get(r3)
            com.facebook.ads.redexgen.X.7O r1 = (com.facebook.ads.redexgen.X.C7O) r1
            int r0 = r1.getWindowVisibility()
            if (r0 != 0) goto L23
            com.facebook.ads.redexgen.X.JA r0 = r1.A02
            r0.A04(r1, r2)
            com.facebook.ads.redexgen.X.JA r0 = r1.A02
            int r0 = r0.A00
            int r5 = r5 + r0
        L23:
            int r3 = r3 + 1
            goto L8
        L26:
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r0 = r10.A03
            r0.ensureCapacity(r5)
            r3 = 0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            r0 = 3
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L44
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L44:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            java.lang.String r1 = "OH"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "7S"
            r0 = 7
            r2[r0] = r1
            r8 = 0
        L51:
            if (r8 >= r4) goto Lb3
            java.util.ArrayList<com.facebook.ads.redexgen.X.7O> r0 = r10.A02
            java.lang.Object r9 = r0.get(r8)
            com.facebook.ads.redexgen.X.7O r9 = (com.facebook.ads.redexgen.X.C7O) r9
            int r0 = r9.getWindowVisibility()
            if (r0 == 0) goto L64
        L61:
            int r8 = r8 + 1
            goto L51
        L64:
            com.facebook.ads.redexgen.X.JA r7 = r9.A02
            int r0 = r7.A01
            int r6 = java.lang.Math.abs(r0)
            int r0 = r7.A02
            int r0 = java.lang.Math.abs(r0)
            int r6 = r6 + r0
            r5 = 0
        L74:
            int r0 = r7.A00
            int r0 = r0 * 2
            if (r5 >= r0) goto L61
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r0 = r10.A03
            int r0 = r0.size()
            if (r3 < r0) goto Laa
            com.facebook.ads.redexgen.X.iW r0 = new com.facebook.ads.redexgen.X.iW
            r0.<init>()
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r1 = r10.A03
            r1.add(r0)
        L8c:
            int[] r2 = r7.A03
            int r1 = r5 + 1
            r2 = r2[r1]
            if (r2 > r6) goto La8
            r1 = 1
        L95:
            r0.A04 = r1
            r0.A02 = r6
            r0.A00 = r2
            r0.A03 = r9
            int[] r1 = r7.A03
            r1 = r1[r5]
            r0.A01 = r1
            int r3 = r3 + 1
            int r5 = r5 + 2
            goto L74
        La8:
            r1 = 0
            goto L95
        Laa:
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r0 = r10.A03
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.iW r0 = (com.facebook.ads.redexgen.X.C2621iW) r0
            goto L8c
        Lb3:
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r1 = r10.A03
            java.util.Comparator<com.facebook.ads.redexgen.X.iW> r0 = com.facebook.ads.redexgen.X.RunnableC2622iX.A04
            java.util.Collections.sort(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RunnableC2622iX.A02():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A04(long r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r0 = r3.A03
            int r0 = r0.size()
            if (r2 >= r0) goto L15
            java.util.ArrayList<com.facebook.ads.redexgen.X.iW> r0 = r3.A03
            java.lang.Object r1 = r0.get(r2)
            com.facebook.ads.redexgen.X.iW r1 = (com.facebook.ads.redexgen.X.C2621iW) r1
            com.facebook.ads.redexgen.X.7O r0 = r1.A03
            if (r0 != 0) goto L16
        L15:
            return
        L16:
            r3.A06(r1, r4)
            r1.A00()
            int r2 = r2 + 1
            goto L1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RunnableC2622iX.A04(long):void");
    }

    private final void A05(long j) {
        A02();
        A04(j);
    }

    private void A06(C2621iW c2621iW, long j) {
        AbstractC2663jE abstractC2663jEA00 = A00(c2621iW.A03, c2621iW.A01, c2621iW.A04 ? Long.MAX_VALUE : j);
        if (abstractC2663jEA00 != null && abstractC2663jEA00.A09 != null && abstractC2663jEA00.A0l() && !abstractC2663jEA00.A0m()) {
            A07(abstractC2663jEA00.A09.get(), j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A07(com.facebook.ads.redexgen.X.C7O r7, long r8) {
        /*
            r6 = this;
            if (r7 != 0) goto L3
            return
        L3:
            boolean r0 = r7.A0C
            if (r0 == 0) goto L26
            com.facebook.ads.redexgen.X.iK r3 = r7.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 17
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            java.lang.String r1 = "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW"
            r0 = 6
            r2[r0] = r1
            int r0 = r3.A06()
            if (r0 == 0) goto L26
            r7.A1R()
        L26:
            com.facebook.ads.redexgen.X.JA r3 = r7.A02
            r0 = 1
            r3.A04(r7, r0)
            int r0 = r3.A00
            if (r0 == 0) goto L76
            r2 = 0
            r1 = 18
            r0 = 7
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.AbstractC2527gy.A01(r0)     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.jB r1 = r7.A0s     // Catch: java.lang.Throwable -> L6e
            com.facebook.ads.redexgen.X.ik r0 = r7.A04     // Catch: java.lang.Throwable -> L6e
            r1.A05(r0)     // Catch: java.lang.Throwable -> L6e
            r4 = 0
        L43:
            int r0 = r3.A00     // Catch: java.lang.Throwable -> L6e
            int r5 = r0 * 2
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            r0 = 6
            r1 = r1[r0]
            r0 = 8
            char r1 = r1.charAt(r0)
            r0 = 73
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RunnableC2622iX.A06
            java.lang.String r1 = "nG"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "TD"
            r0 = 7
            r2[r0] = r1
            if (r4 >= r5) goto L73
            int[] r0 = r3.A03     // Catch: java.lang.Throwable -> L6e
            r0 = r0[r4]     // Catch: java.lang.Throwable -> L6e
            r6.A00(r7, r0, r8)     // Catch: java.lang.Throwable -> L6e
            int r4 = r4 + 2
            goto L43
        L6e:
            r0 = move-exception
            com.facebook.ads.redexgen.X.AbstractC2527gy.A00()
            throw r0
        L73:
            com.facebook.ads.redexgen.X.AbstractC2527gy.A00()
        L76:
            return
        L77:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RunnableC2622iX.A07(com.facebook.ads.redexgen.X.7O, long):void");
    }

    public static boolean A08(C7O c7o, int i) {
        int iA06 = c7o.A01.A06();
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC2663jE abstractC2663jEA0F = C7O.A0F(c7o.A01.A0A(i2));
            int childCount = abstractC2663jEA0F.A03;
            if (childCount == i && !abstractC2663jEA0F.A0m()) {
                return true;
            }
        }
        return false;
    }

    public final void A09(C7O c7o) {
        this.A02.add(c7o);
    }

    public final void A0A(C7O c7o) {
        this.A02.remove(c7o);
    }

    public final void A0B(C7O c7o, int i, int i2) {
        if (c7o.isAttachedToWindow() && this.A01 == 0) {
            this.A01 = c7o.getNanoTime();
            c7o.post(this);
        }
        c7o.A02.A03(i, i2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC2527gy.A01(A01(18, 11, 2));
            if (this.A02.isEmpty()) {
                return;
            }
            int size = this.A02.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                C7O c7o = this.A02.get(i);
                if (c7o.getWindowVisibility() == 0) {
                    jMax = Math.max(c7o.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.A01 = 0L;
                if (A06[5].length() == 17) {
                    throw new RuntimeException();
                }
                A06[5] = "H4nD1dOrFb1";
                AbstractC2527gy.A00();
                return;
            }
            A05(TimeUnit.MILLISECONDS.toNanos(jMax) + this.A00);
        } finally {
            this.A01 = 0L;
            AbstractC2527gy.A00();
        }
    }
}
