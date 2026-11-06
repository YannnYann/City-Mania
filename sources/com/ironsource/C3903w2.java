package com.ironsource;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.w2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3903w2 implements InterfaceC3921x2 {
    private final String a;
    private final Jd b;

    public C3903w2(String encryptedAuctionResponse, Jd providerName) {
        Intrinsics.checkNotNullParameter(encryptedAuctionResponse, "encryptedAuctionResponse");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.a = encryptedAuctionResponse;
        this.b = providerName;
    }

    @Override // com.ironsource.InterfaceC3921x2
    public Object a() {
        Object objM2760constructorimpl;
        String strC = C3775p5.b().c();
        Intrinsics.checkNotNullExpressionValue(strC, "getMediationKey(...)");
        C3929xa c3929xa = new C3929xa(new J4(this.a, strC));
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(c3929xa.a());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null) {
            return C3867u2.h.a((JSONObject) objM2760constructorimpl, this.b.value());
        }
        C3813r4.d().a(thM2763exceptionOrNullimpl);
        return thM2763exceptionOrNullimpl instanceof IllegalArgumentException ? Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.d()))) : Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.h())));
    }
}
