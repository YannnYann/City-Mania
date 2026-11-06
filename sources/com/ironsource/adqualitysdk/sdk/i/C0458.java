package com.ironsource.adqualitysdk.sdk.i;

import com.tapjoy.TJPlacement;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐠ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0458 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0158 f2209;

    public C0458(C0158 c0158) {
        this.f2209 = c0158;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0158 c0158 = this.f2209;
        TJPlacement tJPlacement = (TJPlacement) arrayList.get(0);
        c0158.getClass();
        return tJPlacement.getListener();
    }
}
