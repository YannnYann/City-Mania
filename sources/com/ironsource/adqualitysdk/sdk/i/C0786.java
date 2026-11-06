package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.⁔, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0786 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0785 f3123;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0876 f3124;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0387 f3125;

    public C0786(C0785 c0785, InterfaceC0387 interfaceC0387, C0876 c0876) {
        this.f3123 = c0785;
        this.f3125 = interfaceC0387;
        this.f3124 = c0876;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        InterfaceC0387 interfaceC0387 = this.f3125;
        C0876 c0876 = this.f3124;
        C0767 c0767 = this.f3123.f3122;
        synchronized (c0767) {
            z = c0767.f3097;
        }
        if (!z) {
            m1450(interfaceC0387, c0876);
            return;
        }
        try {
            C0571 c0571M1514 = AbstractC0890.m1514(c0876.f3364, c0876.f3363, c0876.f3362, c0876.f3361, c0876.f3360);
            if (c0571M1514 == null) {
                AbstractC0272.m1210(new C0843(c0571M1514, interfaceC0387));
                return;
            }
            String str = c0571M1514.f2517;
            AbstractC0182.m1148(StringFog.decrypt("nPKJBIQL7CCz+ZwUjgs=\n", "0pf9c+t5h20=\n"), StringFog.decrypt("VjCjoRgfv05yPLLyCh++XmIvuO8KWuxdYzC6oQpavk10Lff2EEukG3U+o+BDHw==\n", "EV/XgXk/zDs=\n") + str);
            AbstractC0272.m1210(new C0844(c0571M1514, interfaceC0387));
        } catch (Exception e) {
            interfaceC0387.mo1262(null, StringFog.decrypt("q6ITVOFYpgyR7AFT41mmG4u/BlngHfQdj7kXRfkd\n", "/sxyNo09hng=\n") + e.getLocalizedMessage());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1450(InterfaceC0387 interfaceC0387, C0876 c0876) {
        C0767 c0767 = this.f3123.f3122;
        C0831 c0831 = new C0831(this, interfaceC0387, c0876);
        synchronized (c0767) {
            c0767.f3096.add(c0831);
        }
    }
}
