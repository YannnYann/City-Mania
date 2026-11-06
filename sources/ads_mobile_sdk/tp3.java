package ads_mobile_sdk;

import android.view.View;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class tp3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vp3 a;
    public final /* synthetic */ Map b;
    public final /* synthetic */ View c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tp3(vp3 vp3Var, Map map, View view, Continuation continuation) {
        super(2, continuation);
        this.a = vp3Var;
        this.b = map;
        this.c = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tp3(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((tp3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0090 A[Catch: RuntimeException -> 0x0033, LOOP:1: B:27:0x008a->B:29:0x0090, LOOP_END, TryCatch #0 {RuntimeException -> 0x0033, blocks: (B:26:0x0079, B:27:0x008a, B:29:0x0090, B:30:0x009e, B:31:0x00af, B:33:0x00b5), top: B:54:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5 A[Catch: RuntimeException -> 0x0033, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0033, blocks: (B:26:0x0079, B:27:0x008a, B:29:0x0090, B:30:0x009e, B:31:0x00af, B:33:0x00b5), top: B:54:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tp3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
