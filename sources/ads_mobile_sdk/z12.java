package ads_mobile_sdk;

import com.google.gson.JsonArray;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
public final class z12 extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ JsonArray c;
    public final /* synthetic */ int d;
    public final /* synthetic */ c22 e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        z12 z12Var = new z12(this.d, this.e, this.c, continuation);
        z12Var.b = obj;
        return z12Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z12) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ProducerScope producerScope = (ProducerScope) this.b;
            int size = this.c.size();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.d; i2++) {
                c22 c22Var = this.e;
                arrayList.add(BuildersKt__Builders_commonKt.launch$default(c22Var.t, null, null, new y12(c22Var, i2, size, this.c, producerScope, null), 3, null));
            }
            this.a = 1;
            if (AwaitKt.joinAll(arrayList, this) == coroutine_suspended) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z12(int i, c22 c22Var, JsonArray jsonArray, Continuation continuation) {
        super(2, continuation);
        this.c = jsonArray;
        this.d = i;
        this.e = c22Var;
    }
}
