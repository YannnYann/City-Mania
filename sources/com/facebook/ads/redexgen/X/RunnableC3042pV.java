package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3042pV implements Runnable {
    public final /* synthetic */ C1642Hh A00;
    public final /* synthetic */ InterfaceC3081q8 A01;
    public final /* synthetic */ String A02;
    public final /* synthetic */ int[] A03;

    public RunnableC3042pV(int[] iArr, String str, C1642Hh c1642Hh, InterfaceC3081q8 interfaceC3081q8) {
        this.A03 = iArr;
        this.A02 = str;
        this.A00 = c1642Hh;
        this.A01 = interfaceC3081q8;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            int[] iArr = this.A03;
            iArr[0] = iArr[0] + 1000;
            if (this.A03[0] > 600000) {
                AbstractC3043pW.A01.removeCallbacks(this);
                AbstractC3043pW.A02.remove(this.A02);
            } else {
                if (AbstractC3043pW.A08(this.A00.getPackageManager(), this.A02)) {
                    AbstractC3043pW.A01.removeCallbacks(this);
                    AbstractC3043pW.A02.remove(this.A02);
                    this.A01.AGB(this.A02);
                    return;
                }
                AbstractC3043pW.A01.postDelayed(this, 1000L);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
