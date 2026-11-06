package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.〳, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0809 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0705 f3156;

    public C0809(C0705 c0705) {
        this.f3156 = c0705;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0705 c0705 = this.f3156;
        InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity = (InneractiveFullscreenAdActivity) arrayList.get(0);
        c0705.getClass();
        return inneractiveFullscreenAdActivity.getLayout();
    }
}
