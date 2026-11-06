package com.vungle.ads.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class y extends Lambda implements Function0 {
    public final /* synthetic */ Sdk.SDKError.Reason a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Sdk.SDKError.Builder c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(Sdk.SDKError.Reason reason, String str, Sdk.SDKError.Builder builder) {
        super(0);
        this.a = reason;
        this.b = str;
        this.c = builder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Logging error: ");
        sbA.append(this.a);
        sbA.append(" with message: ");
        sbA.append(this.b);
        sbA.append(", mediation: ");
        sbA.append(this.c.getMediationName());
        return sbA.toString();
    }
}
