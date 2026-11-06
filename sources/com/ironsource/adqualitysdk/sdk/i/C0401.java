package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ઽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0401 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0211 f2128;

    public C0401(C0211 c0211) {
        this.f2128 = c0211;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0211 c0211 = this.f2128;
        MBridgeIds mBridgeIds = (MBridgeIds) arrayList.get(0);
        c0211.getClass();
        return mBridgeIds.getUnitId();
    }
}
