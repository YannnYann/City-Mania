package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
public final class ox2 implements FlowCollector {
    public final /* synthetic */ CoroutineContext a;
    public final /* synthetic */ ei1 b;

    public ox2(CoroutineContext coroutineContext, ei1 ei1Var) {
        this.a = coroutineContext;
        this.b = ei1Var;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        sx2 sx2Var = (sx2) obj;
        if (sx2Var instanceof rx2) {
            Object objWithContext = BuildersKt.withContext(this.a, new lx2(this.b, sx2Var, null), continuation);
            return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
        }
        if (sx2Var instanceof qx2) {
            Object objWithContext2 = BuildersKt.withContext(this.a, new nx2(this.b, sx2Var, null), continuation);
            return objWithContext2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
