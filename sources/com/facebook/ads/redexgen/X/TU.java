package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class TU implements MM {
    public static final List<TV> A01 = new ArrayList(50);
    public final Handler A00;

    public TU(Handler handler) {
        this.A00 = handler;
    }

    public static TV A00() {
        TV tv;
        synchronized (A01) {
            tv = A01.isEmpty() ? new TV() : A01.remove(A01.size() - 1);
        }
        return tv;
    }

    public static void A01(TV tv) {
        synchronized (A01) {
            if (A01.size() < 50) {
                A01.add(tv);
            }
        }
    }

    public final boolean A03(Runnable runnable) {
        return this.A00.post(runnable);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final Looper A93() {
        return this.A00.getLooper();
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final boolean AAR(int i) {
        return this.A00.hasMessages(i);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final TV ADX(int i) {
        return A00().A01(this.A00.obtainMessage(i), this);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final TV ADY(int i, int i2, int i3) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3), this);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final TV ADZ(int i, int i2, int i3, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final TV ADa(int i, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, obj), this);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final void AJk(int i) {
        this.A00.removeMessages(i);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final boolean AKS(int i) {
        return this.A00.sendEmptyMessage(i);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final boolean AKT(int i, long j) {
        return this.A00.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.facebook.ads.redexgen.X.MM
    public final boolean AKV(ML ml) {
        return ((TV) ml).A03(this.A00);
    }
}
