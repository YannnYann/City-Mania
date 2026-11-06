package com.vungle.ads.internal.presenter;

import com.vungle.ads.LinkError;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class u implements com.vungle.ads.internal.ui.m {
    public final /* synthetic */ String a;
    public final /* synthetic */ w b;

    public u(String str, w wVar) {
        this.a = str;
        this.b = wVar;
    }

    @Override // com.vungle.ads.internal.ui.m
    public final void a(boolean z) {
        if (!z) {
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Fail to open ");
            sbA.append(this.a);
            new LinkError(reason, sbA.toString()).setLogEntry$vungle_ads_release(this.b.a()).logErrorNoReturnValue$vungle_ads_release();
        }
        List listB = this.b.c.b("deeplink.click", String.valueOf(z), null);
        if (listB != null) {
            w wVar = this.b;
            Iterator it = listB.iterator();
            while (it.hasNext()) {
                com.vungle.ads.internal.network.p pVar = new com.vungle.ads.internal.network.p((String) it.next());
                pVar.i = "deeplink.click";
                pVar.j = wVar.a();
                wVar.b().a(pVar.a(), false);
            }
        }
    }
}
