package com.vungle.ads.internal;

import com.vungle.ads.SdkNotInitialized;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class r2 extends Lambda implements Function0 {
    public final /* synthetic */ u2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r2(u2 u2Var) {
        super(0);
        this.a = u2Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.a.a(new SdkNotInitialized("Network permissions not granted").logError$vungle_ads_release());
        return Unit.INSTANCE;
    }
}
