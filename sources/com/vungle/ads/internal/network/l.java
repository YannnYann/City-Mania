package com.vungle.ads.internal.network;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements Callback {
    public final /* synthetic */ m a;
    public final /* synthetic */ a b;

    public l(m mVar, a aVar) {
        this.a = mVar;
        this.b = aVar;
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException e) throws Throwable {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            this.b.a(e);
        } catch (Throwable th) {
            h.a(th);
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("OkHttpCall", "Cannot pass failure to callback", th);
        }
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) throws Throwable {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            try {
                this.b.a(this.a.a(response));
            } catch (Throwable th) {
                h.a(th);
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("OkHttpCall", "Cannot pass response to callback", th);
            }
        } catch (Throwable th2) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("[enqueue] Failed to parse response: ");
            sbA.append(th2.getLocalizedMessage());
            com.vungle.ads.internal.util.u.b("OkHttpCall", sbA.toString());
            h.a(th2);
            try {
                this.b.a(th2);
            } catch (Throwable th3) {
                h.a(th3);
                boolean z3 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("OkHttpCall", "Cannot pass failure to callback", th3);
            }
        }
    }
}
