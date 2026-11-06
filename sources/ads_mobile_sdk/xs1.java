package ads_mobile_sdk;

import android.webkit.WebSettings;
import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class xs1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ at1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xs1(r31 r31Var, int i, int i2, at1 at1Var, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = i;
        this.c = i2;
        this.d = at1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xs1(this.a, this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xs1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.a(new v14(u14.b, this.b, this.c, 8));
        WebSettings settings = this.a.getSettings();
        ex0 ex0Var = this.d.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_wide_viewport:enabled", C3522b4.i.W);
        Boolean bool = Boolean.FALSE;
        ir irVar = yr.b;
        settings.setUseWideViewPort(((Boolean) ex0Var.a("gads:use_wide_viewport:enabled", bool, irVar)).booleanValue());
        WebSettings settings2 = this.a.getSettings();
        ex0 ex0Var2 = this.d.a;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:load_with_overview_mode:enabled", C3522b4.i.W);
        settings2.setLoadWithOverviewMode(((Boolean) ex0Var2.a("gads:load_with_overview_mode:enabled", bool, irVar)).booleanValue());
        return Unit.INSTANCE;
    }
}
