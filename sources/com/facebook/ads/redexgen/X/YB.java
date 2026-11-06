package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class YB {
    public final Handler A00;
    public final YC A01;

    public YB(Handler handler, YC yc) {
        this.A00 = yc != null ? (Handler) AbstractC1747Ln.A01(handler) : null;
        this.A01 = yc;
    }

    public final void A00(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y7
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A02(i, j);
                }
            });
        }
    }

    public final void A01(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Xy
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A03(i, j);
                }
            });
        }
    }

    public final /* synthetic */ void A02(int i, long j) {
        ((YC) N1.A0f(this.A01)).AEV(i, j);
    }

    public final /* synthetic */ void A03(int i, long j) {
        ((YC) N1.A0f(this.A01)).AEn(i, j);
    }

    @MetaExoPlayerCustomization
    public final void A04(int i, VC vc) {
        if (this.A01 != null) {
            this.A00.post(new YA(this, i, vc));
        }
    }

    public final void A05(final VC vc, final OA oa) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y4
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A06(vc, oa);
                }
            });
        }
    }

    public final /* synthetic */ void A06(VC vc, OA oa) {
        ((YC) N1.A0f(this.A01)).AHe(vc);
        ((YC) N1.A0f(this.A01)).AHf(vc, oa);
    }

    public final void A07(final C1944Tp c1944Tp) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y6
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A08(c1944Tp);
                }
            });
        }
    }

    public final /* synthetic */ void A08(C1944Tp c1944Tp) {
        ((YC) N1.A0f(this.A01)).AHl(c1944Tp);
    }

    public final void A09(final O7 o7) {
        o7.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y8
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A0B(o7);
                }
            });
        }
    }

    public final void A0A(final O7 o7) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y2
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A0C(o7);
                }
            });
        }
    }

    public final /* synthetic */ void A0B(O7 o7) {
        o7.A02();
        ((YC) N1.A0f(this.A01)).AHY(o7);
    }

    public final /* synthetic */ void A0C(O7 o7) {
        ((YC) N1.A0f(this.A01)).AHZ(o7);
    }

    public final void A0D(final Object obj) {
        if (this.A00 != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y3
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A0E(obj, jElapsedRealtime);
                }
            });
        }
    }

    public final /* synthetic */ void A0E(Object obj, long j) {
        ((YC) N1.A0f(this.A01)).AGm(obj, j);
    }

    @MetaExoPlayerCustomization
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y5
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Y1
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0H(str, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A0H(String str, long j, long j2) {
        ((YC) N1.A0f(this.A01)).AHX(str, j, j2);
    }
}
