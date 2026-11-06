package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.79, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass79 implements GS {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public AnonymousClass79(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2924nV
    public final void ADi() {
        AbstractC2995oh.A00(new GO(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2924nV
    public final void ADm() {
        AbstractC2995oh.A00(new GP(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2924nV
    public final void AEr(C2947nt c2947nt) {
        AbstractC2995oh.A00(new GR(this, c2947nt));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2924nV
    public final void AFp() {
        AbstractC2995oh.A00(new GN(this));
    }

    @Override // com.facebook.ads.redexgen.X.GS
    public final void AFu() {
        AbstractC2995oh.A00(new GQ(this));
    }
}
