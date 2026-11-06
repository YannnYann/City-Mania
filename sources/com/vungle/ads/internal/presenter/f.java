package com.vungle.ads.internal.presenter;

import com.vungle.ads.LinkError;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements com.vungle.ads.internal.ui.m {
    public final /* synthetic */ String a;
    public final /* synthetic */ r b;

    public f(String str, r rVar) {
        this.a = str;
        this.b = rVar;
    }

    @Override // com.vungle.ads.internal.ui.m
    public final void a(boolean z) {
        if (!z) {
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Fail to open ");
            sbA.append(this.a);
            new LinkError(reason, sbA.toString()).setLogEntry$vungle_ads_release(this.b.b()).logErrorNoReturnValue$vungle_ads_release();
        }
        List listB = this.b.b.b("deeplink.click", String.valueOf(z), null);
        if (listB != null) {
            r rVar = this.b;
            Iterator it = listB.iterator();
            while (it.hasNext()) {
                com.vungle.ads.internal.network.p pVar = new com.vungle.ads.internal.network.p((String) it.next());
                pVar.i = "deeplink.click";
                pVar.j = rVar.b();
                rVar.c().a(pVar.a(), false);
            }
        }
    }
}
