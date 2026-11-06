package ads_mobile_sdk;

import android.database.sqlite.SQLiteDatabase;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class yb2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ac2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yb2(ac2 ac2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ac2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        yb2 yb2Var = new yb2(this.b, continuation);
        yb2Var.a = obj;
        return yb2Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        yb2 yb2Var = new yb2(this.b, (Continuation) obj2);
        yb2Var.a = (SQLiteDatabase) obj;
        return yb2Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ac2.a(this.b, (SQLiteDatabase) this.a);
        return Unit.INSTANCE;
    }
}
