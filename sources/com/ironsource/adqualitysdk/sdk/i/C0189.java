package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.γ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0189 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0187 f1204;

    public C0189(C0187 c0187) {
        this.f1204 = c0187;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0125 c0125 = this.f1204.f1201;
        if (c0125.f1067) {
            C0324 c0324 = c0125.f1066;
            String strDecrypt = StringFog.decrypt("tj71RUEDWqO1dfJARRZdj64o5UNNJVa6\n", "21uRLCB3M8w=\n");
            c0324.getClass();
            c0324.m1239(strDecrypt, new ArrayList());
            this.f1204.f1201.f1067 = false;
        }
    }
}
