package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Pz {
    public static String[] A06 = {"KJd4SIX9bFdOLKLE1j6Vag6lDPyxnKMM", "RQBlrOEc0ryI432moAmJKoCYD4hA7KSo", "e7rXMFN", "g7Wk7vPQofzQ3IT20EMjl4", "uRIv26KPiTMcDh", "Kt7e4scKpUDR", "Io8mfv0", "Fj3WcjTMYLJcnKYH"};
    public C1887Rk A00;
    public C1887Rk A01;
    public C1887Rk A02;
    public AbstractC14399l<C1887Rk> A03 = AbstractC14399l.A03();
    public AbstractC1992Vq<C1887Rk, Timeline> A04 = AbstractC1992Vq.A04();
    public final UM A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1887Rk A00(LQ lq, AbstractC14399l<C1887Rk> abstractC14399l, C1887Rk c1887Rk, UM um) {
        Timeline timelineA8H = lq.A8H();
        int iA8D = lq.A8D();
        Object objA0M = timelineA8H.A0N() ? null : timelineA8H.A0M(iA8D);
        int iA07 = (lq.ABL() || timelineA8H.A0N()) ? -1 : timelineA8H.A0H(iA8D, um).A07(N1.A0O(lq.A8F()) - um.A0C());
        for (int i = 0; i < abstractC14399l.size(); i++) {
            C1887Rk c1887Rk2 = abstractC14399l.get(i);
            if (A04(c1887Rk2, objA0M, lq.ABL(), lq.A89(), lq.A8A(), iA07)) {
                return c1887Rk2;
            }
        }
        if (abstractC14399l.isEmpty() && c1887Rk != null) {
            if (A04(c1887Rk, objA0M, lq.ABL(), lq.A89(), lq.A8A(), iA07)) {
                return c1887Rk;
            }
        }
        return null;
    }

    public Pz(UM um) {
        this.A05 = um;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<com.facebook.ads.androidx.media3.exoplayer.source.MediaSource$MediaPeriodId, com.facebook.ads.androidx.media3.common.Timeline> */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A02(com.facebook.ads.androidx.media3.common.Timeline r6) {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Vr r3 = com.facebook.ads.redexgen.X.AbstractC1992Vq.A03()
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.Rk> r0 = r5.A03
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L8b
            com.facebook.ads.redexgen.X.Rk r0 = r5.A01
            r5.A03(r3, r0, r6)
            com.facebook.ads.redexgen.X.Rk r4 = r5.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.Pz.A06
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 11
            if (r1 == r0) goto Lbc
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Pz.A06
            java.lang.String r1 = "SFFeMhCWOx4mkt"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "OeAFK2mj2j4I62wsIHhNmd"
            r0 = 3
            r2[r0] = r1
            com.facebook.ads.redexgen.X.Rk r0 = r5.A01
            boolean r0 = com.facebook.ads.redexgen.X.A6.A01(r4, r0)
            if (r0 != 0) goto L39
            com.facebook.ads.redexgen.X.Rk r0 = r5.A02
            r5.A03(r3, r0, r6)
        L39:
            com.facebook.ads.redexgen.X.Rk r4 = r5.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.Pz.A06
            r0 = 0
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 68
            if (r1 == r0) goto L76
            com.facebook.ads.redexgen.X.Rk r0 = r5.A01
            boolean r0 = com.facebook.ads.redexgen.X.A6.A01(r4, r0)
            if (r0 != 0) goto L61
        L52:
            com.facebook.ads.redexgen.X.Rk r1 = r5.A00
            com.facebook.ads.redexgen.X.Rk r0 = r5.A02
            boolean r0 = com.facebook.ads.redexgen.X.A6.A01(r1, r0)
            if (r0 != 0) goto L61
            com.facebook.ads.redexgen.X.Rk r0 = r5.A00
            r5.A03(r3, r0, r6)
        L61:
            com.facebook.ads.redexgen.X.Vq r3 = r3.A07()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.Pz.A06
            r0 = 1
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 66
            if (r1 == r0) goto Lb2
            r5.A04 = r3
            return
        L76:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Pz.A06
            java.lang.String r1 = "nwjeKqa56zVpsX"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "ZIYXg9JpEESGpw2jJSXeG4"
            r0 = 3
            r2[r0] = r1
            com.facebook.ads.redexgen.X.Rk r0 = r5.A01
            boolean r0 = com.facebook.ads.redexgen.X.A6.A01(r4, r0)
            if (r0 != 0) goto L61
            goto L52
        L8b:
            r1 = 0
        L8c:
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.Rk> r0 = r5.A03
            int r0 = r0.size()
            if (r1 >= r0) goto La2
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.Rk> r0 = r5.A03
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.Rk r0 = (com.facebook.ads.redexgen.X.C1887Rk) r0
            r5.A03(r3, r0, r6)
            int r1 = r1 + 1
            goto L8c
        La2:
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.Rk> r1 = r5.A03
            com.facebook.ads.redexgen.X.Rk r0 = r5.A00
            boolean r0 = r1.contains(r0)
            if (r0 != 0) goto L61
            com.facebook.ads.redexgen.X.Rk r0 = r5.A00
            r5.A03(r3, r0, r6)
            goto L61
        Lb2:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Pz.A06
            java.lang.String r1 = "rKMKb263tcLdpphrkSuVJeufDK83wEO8"
            r0 = 0
            r2[r0] = r1
            r5.A04 = r3
            return
        Lbc:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Pz.A02(com.facebook.ads.androidx.media3.common.Timeline):void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<com.facebook.ads.androidx.media3.exoplayer.source.MediaSource$MediaPeriodId, com.facebook.ads.androidx.media3.common.Timeline> */
    private void A03(C1993Vr<C1887Rk, Timeline> c1993Vr, C1887Rk c1887Rk, Timeline timeline) {
        if (c1887Rk == null) {
            return;
        }
        if (timeline.A0A(c1887Rk.A04) != -1) {
            c1993Vr.A05(c1887Rk, timeline);
            return;
        }
        Timeline existingTimeline = this.A04.get(c1887Rk);
        if (existingTimeline == null) {
            return;
        }
        c1993Vr.A05(c1887Rk, existingTimeline);
    }

    public static boolean A04(C1887Rk c1887Rk, Object obj, boolean z, int i, int i2, int i3) {
        if (c1887Rk.A04.equals(obj)) {
            return (z && c1887Rk.A00 == i && c1887Rk.A01 == i2) || (!z && c1887Rk.A00 == -1 && c1887Rk.A02 == i3);
        }
        return false;
    }

    public final Timeline A05(C1887Rk c1887Rk) {
        return this.A04.get(c1887Rk);
    }

    public final C1887Rk A06() {
        return this.A00;
    }

    public final void A07(LQ lq) {
        this.A00 = A00(lq, this.A03, this.A01, this.A05);
        A02(lq.A8H());
    }
}
