package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.ad.VastParsingResult;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʸ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0147 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f1107;

    public C0147(C0049 c0049) {
        this.f1107 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f1107;
        VastParsingResult vastParsingResult = (VastParsingResult) arrayList.get(0);
        c0049.getClass();
        return vastParsingResult.vastScenario;
    }
}
