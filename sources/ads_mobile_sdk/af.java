package ads_mobile_sdk;

import android.content.Context;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class af extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ jf b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ be d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(jf jfVar, Context context, be beVar, Continuation continuation) {
        super(2, continuation);
        this.b = jfVar;
        this.c = context;
        this.d = beVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new af(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((af) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        jf jfVar = this.b;
        Context context = this.c;
        be beVar = this.d;
        this.a = 1;
        Object objA = jfVar.a(context, beVar, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
