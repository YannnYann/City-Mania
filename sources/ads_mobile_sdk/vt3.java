package ads_mobile_sdk;

import android.os.IInterface;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vt3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vt3(wt3 wt3Var, Continuation continuation) {
        super(2, continuation);
        this.a = wt3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vt3(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vt3(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            IInterface service = this.a.d.getService();
            Intrinsics.checkNotNullExpressionValue(service, "getService(...)");
            String packageName = this.a.b.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            ((m81) ((o81) service)).a(new dl0(packageName), this.a);
        } catch (Throwable th) {
            wt3 wt3Var = this.a;
            j01 j01Var = new j01(th, null, null, 6);
            int i = wt3.$r8$clinit;
            if (!wt3Var.f.getAndSet(true)) {
                wt3Var.h.complete(j01Var);
            }
            ((as3) this.a.c).a("Throwable caught getting trustless token", th);
        }
        return Unit.INSTANCE;
    }
}
