package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0921 implements InterfaceC0904 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0882 f3510;

    public C0921(C0882 c0882) {
        this.f3510 = c0882;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0904
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1535(List list) {
        AbstractC0963 abstractC0963M1479 = this.f3510.m1479(list);
        if ((abstractC0963M1479 instanceof C0648) || (abstractC0963M1479 instanceof C3506s)) {
            return abstractC0963M1479;
        }
        this.f3510.m1487(StringFog.decrypt("WdlfrnBP4bU8wkOqYEirp33TD6lmT6SjecJKomVe4PE=\n", "HKEvyxM7hNE=\n") + abstractC0963M1479);
        throw null;
    }
}
