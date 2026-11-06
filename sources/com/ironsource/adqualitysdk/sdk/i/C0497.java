package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0497 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0361 f2309;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ String f2310;

    public C0497(C0361 c0361, String str) {
        this.f2309 = c0361;
        this.f2310 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        C0512 c0512;
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        String strDecrypt = StringFog.decrypt("lmiWv8vQ\n", "5Qf50qex+GQ=\n");
        String str = this.f2310;
        C0893 c0893 = (C0893) abstractC0885M1491;
        if (strDecrypt != null) {
            c0512 = (C0512) c0893.mo1506().get(strDecrypt);
        } else {
            c0893.getClass();
            c0512 = null;
        }
        if (c0512 == null || !c0512.m1294(str)) {
            return;
        }
        C0204 c0204 = this.f2309.f1971;
        String str2 = C0204.f1347;
        c0204.m1182(true);
    }
}
