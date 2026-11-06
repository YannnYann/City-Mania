package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.protobuf.RequestExtension;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٺ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0325 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1908;

    public C0325(C0193 c0193) {
        this.f1908 = c0193;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0193 c0193 = this.f1908;
        RequestExtension requestExtension = (RequestExtension) arrayList.get(0);
        c0193.getClass();
        return requestExtension.getSellerId();
    }
}
