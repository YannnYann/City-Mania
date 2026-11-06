package io.bidmachine.analytics.internal.h;

import io.bidmachine.analytics.internal.a.C4105a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends Lambda implements Function0 {
    final /* synthetic */ C4105a a;
    final /* synthetic */ String b;
    final /* synthetic */ Throwable c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(C4105a c4105a, String str, Throwable th) {
        super(0);
        this.a = c4105a;
        this.b = str;
        this.c = th;
    }

    public final void a() {
        C4125e.a.a(this.a, this.b, this.c);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Object invoke() {
        a();
        return Unit.INSTANCE;
    }
}
