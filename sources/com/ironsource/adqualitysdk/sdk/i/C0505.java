package com.ironsource.adqualitysdk.sdk.i;

import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0505 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2329;

    public C0505(C0398 c0398) {
        this.f2329 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2329;
        AppLovinBroadcastManager appLovinBroadcastManager = (AppLovinBroadcastManager) arrayList.get(0);
        AppLovinBroadcastManager.Receiver receiver = (AppLovinBroadcastManager.Receiver) arrayList.get(1);
        IntentFilter intentFilter = (IntentFilter) arrayList.get(2);
        c0398.getClass();
        appLovinBroadcastManager.registerReceiver(receiver, intentFilter);
        return null;
    }
}
