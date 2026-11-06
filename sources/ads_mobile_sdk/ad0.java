package ads_mobile_sdk;

import android.content.Context;
import androidx.browser.customtabs.CustomTabsClient;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ad0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ bd0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad0(bd0 bd0Var, Continuation continuation) {
        super(2, continuation);
        this.a = bd0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ad0(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ad0(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String packageName;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zc0 zc0Var = this.a.c;
        zc0Var.g.getAndSet(true);
        Context context = zc0Var.a;
        if (zc0Var.f == null && (packageName = CustomTabsClient.getPackageName(context, null)) != null && !Intrinsics.areEqual(packageName, context.getPackageName())) {
            CustomTabsClient.bindCustomTabsService(context, packageName, zc0Var);
        }
        return Unit.INSTANCE;
    }
}
