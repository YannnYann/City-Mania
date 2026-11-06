package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0506 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2330;

    public C0506(C0398 c0398) {
        this.f2330 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2330;
        Context context = (Context) arrayList.get(0);
        c0398.getClass();
        return AppLovinBroadcastManager.getInstance(context);
    }
}
