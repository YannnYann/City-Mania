package com.ironsource.adqualitysdk.sdk.i;

import com.qq.e.comm.managers.status.APPStatus;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0999 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0688 f3800;

    public C0999(C0688 c0688) {
        this.f3800 = c0688;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0688 c0688 = this.f3800;
        APPStatus aPPStatus = (APPStatus) arrayList.get(0);
        c0688.getClass();
        return aPPStatus.getAPPID();
    }
}
