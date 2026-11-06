package com.vungle.ads.internal.ui;

import android.content.Intent;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements com.vungle.ads.internal.presenter.y {
    public final /* synthetic */ l a;

    public k(l lVar) {
        this.a = lVar;
    }

    public final Pair a(Intent intent) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(intent, "intent");
        l lVar = this.a;
        try {
            Result.Companion companion = Result.Companion;
            lVar.h.set(true);
            lVar.startActivityForResult(intent, Sdk.SDKError.Reason.AD_NO_FILL_VALUE);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        l lVar2 = this.a;
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl == null) {
            return new Pair(Boolean.TRUE, null);
        }
        lVar2.h.set(false);
        return new Pair(Boolean.FALSE, thM2763exceptionOrNullimpl.getLocalizedMessage());
    }
}
