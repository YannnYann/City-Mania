package ads_mobile_sdk;

import android.net.Uri;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a63 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ c63 b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ i2 d;
    public final /* synthetic */ zy e;
    public final /* synthetic */ v3 f;
    public final /* synthetic */ Boolean g;
    public final /* synthetic */ ks3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a63(c63 c63Var, Uri uri, i2 i2Var, zy zyVar, v3 v3Var, Boolean bool, ks3 ks3Var, Continuation continuation) {
        super(2, continuation);
        this.b = c63Var;
        this.c = uri;
        this.d = i2Var;
        this.e = zyVar;
        this.f = v3Var;
        this.g = bool;
        this.h = ks3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a63(this.b, this.c, this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a63) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c63 c63Var = this.b;
            Uri uri = this.c;
            ga2 ga2Var = this.d.x0;
            Intrinsics.checkNotNull(ga2Var);
            ha2 ha2Var = ga2Var.a;
            Duration.Companion companion = Duration.Companion;
            long duration = DurationKt.toDuration(0, DurationUnit.MILLISECONDS);
            String str = this.e.h;
            c63 c63Var2 = this.b;
            Map mapA = c63Var2.g.a(this.c);
            v3 v3Var = this.f;
            i2 i2Var = this.d;
            Boolean bool = this.g;
            ks3 ks3Var = this.h;
            this.a = 1;
            if (c63Var.a(uri, ha2Var, 1, duration, str, mapA, v3Var, i2Var, bool, ks3Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
