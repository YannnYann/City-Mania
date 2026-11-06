package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class JT implements InterfaceC2517go {
    private C2518gp A00(InterfaceC2516gn interfaceC2516gn) {
        return (C2518gp) interfaceC2516gn.A7o();
    }

    public final void A01(InterfaceC2516gn interfaceC2516gn) {
        if (!interfaceC2516gn.AA4()) {
            interfaceC2516gn.AL3(0, 0, 0, 0);
            return;
        }
        float fA94 = A94(interfaceC2516gn);
        float fA9U = A9U(interfaceC2516gn);
        float elevation = AbstractC2520gr.A00(fA94, fA9U, interfaceC2516gn.A9T());
        int vPadding = (int) Math.ceil(elevation);
        float elevation2 = AbstractC2520gr.A01(fA94, fA9U, interfaceC2516gn.A9T());
        int iCeil = (int) Math.ceil(elevation2);
        interfaceC2516gn.AL3(vPadding, iCeil, vPadding, iCeil);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final ColorStateList A7b(InterfaceC2516gn interfaceC2516gn) {
        return A00(interfaceC2516gn).A05();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final float A8W(InterfaceC2516gn interfaceC2516gn) {
        return interfaceC2516gn.A7p().getElevation();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final float A94(InterfaceC2516gn interfaceC2516gn) {
        return A00(interfaceC2516gn).A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final float A9A(InterfaceC2516gn interfaceC2516gn) {
        return A9U(interfaceC2516gn) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final float A9B(InterfaceC2516gn interfaceC2516gn) {
        return A9U(interfaceC2516gn) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final float A9U(InterfaceC2516gn interfaceC2516gn) {
        return A00(interfaceC2516gn).A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AAs() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AAu(InterfaceC2516gn interfaceC2516gn, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C2518gp background = new C2518gp(colorStateList, f);
        interfaceC2516gn.AKc(background);
        View view = interfaceC2516gn.A7p();
        view.setClipToOutline(true);
        view.setElevation(f2);
        AKp(interfaceC2516gn, f3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AEQ(InterfaceC2516gn interfaceC2516gn) {
        AKp(interfaceC2516gn, A94(interfaceC2516gn));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AGY(InterfaceC2516gn interfaceC2516gn) {
        AKp(interfaceC2516gn, A94(interfaceC2516gn));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AKb(InterfaceC2516gn interfaceC2516gn, ColorStateList colorStateList) {
        A00(interfaceC2516gn).A08(colorStateList);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AKh(InterfaceC2516gn interfaceC2516gn, float f) {
        interfaceC2516gn.A7p().setElevation(f);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AKp(InterfaceC2516gn interfaceC2516gn, float f) {
        A00(interfaceC2516gn).A07(f, interfaceC2516gn.AA4(), interfaceC2516gn.A9T());
        A01(interfaceC2516gn);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2517go
    public final void AL1(InterfaceC2516gn interfaceC2516gn, float f) {
        A00(interfaceC2516gn).A06(f);
    }
}
