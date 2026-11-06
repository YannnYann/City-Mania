package com.ironsource.mediationsdk;

import android.content.Context;
import com.ironsource.A2;
import com.ironsource.C3849t2;
import com.ironsource.InterfaceC3538c2;
import com.ironsource.mediationsdk.e;
import java.net.URL;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements g {
    private final A2 a;
    private final String b;

    public f(A2 settings, String sessionId) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.a = settings;
        this.b = sessionId;
    }

    @Override // com.ironsource.mediationsdk.g
    public e.a a(Context context, h auctionRequestParams, InterfaceC3538c2 auctionListener) throws JSONException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(auctionRequestParams, "auctionRequestParams");
        Intrinsics.checkNotNullParameter(auctionListener, "auctionListener");
        JSONObject jSONObjectA = a(context, auctionRequestParams);
        String strA = this.a.a(auctionRequestParams.t());
        return auctionRequestParams.t() ? new C3849t2(auctionListener, new URL(strA), jSONObjectA, auctionRequestParams.u(), this.a) : new e.a(auctionListener, new URL(strA), jSONObjectA, auctionRequestParams.u(), this.a);
    }

    @Override // com.ironsource.mediationsdk.g
    public boolean b() {
        return this.a.g() > 0;
    }

    @Override // com.ironsource.mediationsdk.g
    public boolean a() {
        return this.a.n();
    }

    private final JSONObject a(Context context, h hVar) throws JSONException {
        JSONObject jSONObjectA = d.b().a(hVar);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "enrichTokenOneFlow(...)");
        return jSONObjectA;
    }
}
