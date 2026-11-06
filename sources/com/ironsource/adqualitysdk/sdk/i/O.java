package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.AppNode;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class O implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f150;

    public O(V v) {
        this.f150 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        V v = this.f150;
        AppNode appNode = (AppNode) arrayList.get(0);
        v.getClass();
        return appNode.getAppId();
    }
}
