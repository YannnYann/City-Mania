package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.AdPayload;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class T implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f190;

    public T(V v) {
        this.f190 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        V v = this.f190;
        AdPayload.AdUnit adUnit = (AdPayload.AdUnit) arrayList.get(0);
        v.getClass();
        return adUnit.getTemplateSettings();
    }
}
