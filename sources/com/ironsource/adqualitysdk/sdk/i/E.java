package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.Repository;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class E implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f95;

    public E(J j) {
        this.f95 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        J j = this.f95;
        Repository repository = (Repository) arrayList.get(0);
        String str = (String) arrayList.get(1);
        j.getClass();
        return (Placement) repository.load(str, Placement.class).get();
    }
}
