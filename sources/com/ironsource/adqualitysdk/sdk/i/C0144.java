package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.vast.model.VastScenario;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0144 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f1097;

    public C0144(C0049 c0049) {
        this.f1097 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f1097;
        VastScenario vastScenario = (VastScenario) arrayList.get(0);
        c0049.getClass();
        return vastScenario.vastCompanionScenario;
    }
}
