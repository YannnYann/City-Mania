package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.TTAdConfig;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ȯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0100 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0037 f910;

    public C0100(C0037 c0037) {
        this.f910 = c0037;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0037 c0037 = this.f910;
        TTAdConfig tTAdConfig = (TTAdConfig) arrayList.get(0);
        c0037.getClass();
        return tTAdConfig.getData();
    }
}
