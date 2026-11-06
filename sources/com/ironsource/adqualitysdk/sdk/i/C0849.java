package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBFetchManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﬥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0849 extends HashMap implements InterfaceC0445 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3307;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0875 f3308;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0849(C0841 c0841, HashMap map, C0875 c0875) {
        super(map);
        this.f3307 = c0841;
        this.f3308 = c0875;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        String str = (String) obj;
        DTBFetchManager dTBFetchManager = (DTBFetchManager) obj2;
        this.f3307.m1187(this, this.f3308, StringFog.decrypt("M6WLOfLLY4c6kKce8NpyhD+Quhfa3nDBB4S9\n", "d/HJf5e/AO8=\n"), str, dTBFetchManager);
        return (DTBFetchManager) super.put(str, dTBFetchManager);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this;
    }
}
