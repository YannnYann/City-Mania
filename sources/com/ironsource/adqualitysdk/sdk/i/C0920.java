package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.vast.model.StaticResource;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹸ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0920 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f3509;

    public C0920(C0049 c0049) {
        this.f3509 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f3509;
        StaticResource staticResource = (StaticResource) arrayList.get(0);
        c0049.getClass();
        return staticResource.uri;
    }
}
