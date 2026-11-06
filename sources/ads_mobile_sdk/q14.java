package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class q14 extends Lambda implements Function0 {
    public final /* synthetic */ r14 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q14(r14 r14Var) {
        super(0);
        this.a = r14Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ex0 ex0Var = this.a.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_gma_profile:enabled", C3522b4.i.W);
        Boolean bool = (Boolean) ex0Var.a("gads:use_gma_profile:enabled", Boolean.FALSE, yr.b);
        bool.getClass();
        return bool;
    }
}
