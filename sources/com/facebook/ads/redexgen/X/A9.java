package com.facebook.ads.redexgen.X;

import android.util.Log;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class A9 implements YR {
    public int A00;

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AAX(String str, String str2) {
        Log.i(str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AAY(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final boolean ABG(int i) {
        return this.A00 <= i;
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AKq(int i) {
        this.A00 = i;
    }
}
