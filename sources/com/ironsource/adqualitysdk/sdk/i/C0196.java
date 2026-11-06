package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ς, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0196 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0990 f1288;

    public C0196(C0990 c0990) {
        this.f1288 = c0990;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0990 c0990 = this.f1288;
        AdData adData = (AdData) arrayList.get(0);
        c0990.getClass();
        return adData.getServerData();
    }
}
