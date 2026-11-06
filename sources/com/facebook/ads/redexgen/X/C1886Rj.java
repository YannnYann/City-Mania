package com.facebook.ads.redexgen.X;

import android.net.Uri;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1886Rj implements X7, Ub {
    public static String[] A0E = {"XaDD5PgyAmJ", "8zmS63z", "j8ciNHuCepgrbIigmG1k2aMiHO0R8", "k8mv2Mp", "LdWYTg8T9Rti", "vTCnbQfzDGS3p1oDNxDazVjLN5", "FIxjTRthEwDZ", ""};
    public long A00;
    public NX A01;
    public ZP A02;
    public boolean A04;
    public final Uri A06;
    public final C1756Lx A07;
    public final AnonymousClass99 A08;
    public final InterfaceC1977Uz A09;
    public final InterfaceC2069Yw A0A;
    public volatile boolean A0C;
    public final /* synthetic */ C8p A0D;
    public final ZH A0B = new ZH();
    public boolean A03 = true;
    public final long A05 = Uc.A00();

    public C1886Rj(C8p c8p, Uri uri, TE te, InterfaceC1977Uz interfaceC1977Uz, InterfaceC2069Yw interfaceC2069Yw, C1756Lx c1756Lx) {
        this.A0D = c8p;
        this.A06 = uri;
        this.A08 = new AnonymousClass99(te);
        this.A09 = interfaceC1977Uz;
        this.A0A = interfaceC2069Yw;
        this.A07 = c1756Lx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(long j, long j2) {
        this.A0B.A00 = j;
        this.A00 = j2;
        this.A03 = true;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.X.X7
    public final void A5N() {
        this.A0C = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a0 A[Catch: all -> 0x012b, TryCatch #1 {all -> 0x012b, blocks: (B:7:0x000c, B:9:0x002d, B:10:0x0034, B:12:0x0044, B:17:0x0067, B:18:0x0087, B:20:0x00a0, B:21:0x00a5, B:23:0x00a9, B:25:0x00b5, B:27:0x00b9, B:28:0x00be, B:30:0x00d7, B:39:0x011f, B:40:0x0124), top: B:53:0x000c, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9 A[Catch: all -> 0x012b, TryCatch #1 {all -> 0x012b, blocks: (B:7:0x000c, B:9:0x002d, B:10:0x0034, B:12:0x0044, B:17:0x0067, B:18:0x0087, B:20:0x00a0, B:21:0x00a5, B:23:0x00a9, B:25:0x00b5, B:27:0x00b9, B:28:0x00be, B:30:0x00d7, B:39:0x011f, B:40:0x0124), top: B:53:0x000c, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b3 A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.X7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void ABZ() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1886Rj.ABZ():void");
    }

    @Override // com.facebook.ads.redexgen.X.Ub
    public final void AF8(C1769Mk c1769Mk) {
        long jMax;
        if (this.A04) {
            jMax = Math.max(this.A0D.A03(true), this.A00);
        } else {
            jMax = this.A00;
        }
        int iA07 = c1769Mk.A07();
        ZP zp = (ZP) AbstractC1747Ln.A01(this.A02);
        zp.AK9(c1769Mk, iA07);
        zp.AKC(jMax, 1, iA07, 0, null);
        this.A04 = true;
    }
}
