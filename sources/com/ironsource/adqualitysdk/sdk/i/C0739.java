package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ẓ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0739 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f3024;

    public C0739(C0622 c0622) {
        this.f3024 = c0622;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0448 c0448 = this.f3024.f2621;
        String strDecrypt = StringFog.decrypt("pfD/VuHdJSW07sQ=\n", "0YCgJYSuVno=\n");
        c0448.getClass();
        AbstractC0272.m1211(new C0450(c0448, strDecrypt));
        this.f3024.m1403(StringFog.decrypt("JIQF8msRLyU1mj4=\n", "UPRagQ5iXHo=\n"), new JSONObject());
    }
}
