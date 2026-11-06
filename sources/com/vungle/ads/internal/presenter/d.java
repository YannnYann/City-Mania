package com.vungle.ads.internal.presenter;

import android.content.Context;
import com.vungle.ads.internal.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends Lambda implements Function0 {
    public final /* synthetic */ r a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(r rVar) {
        super(0);
        this.a = rVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context = this.a.a.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "adWidget.context");
        return new o0(context, this.a.b);
    }
}
