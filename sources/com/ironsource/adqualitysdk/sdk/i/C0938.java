package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0938 implements InterfaceC0904 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0882 f3545;

    public C0938(C0882 c0882) {
        this.f3545 = c0882;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0904
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1535(List list) {
        AbstractC0963 abstractC0963M1478 = this.f3545.m1478(list);
        if ((abstractC0963M1478 instanceof C3506s) || (abstractC0963M1478 instanceof C0386)) {
            return abstractC0963M1478;
        }
        this.f3545.m1487(StringFog.decrypt("FkKOqbpUcDhzTJ++sEF3MDYanLmtAGc5MF+XurxENQ==\n", "Uzr+zNkgFVw=\n") + abstractC0963M1478);
        throw null;
    }
}
