package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.chromium.net.CronetProvider;

/* JADX INFO: loaded from: classes.dex */
public final class w60 extends SuspendLambda implements Function2 {
    public CronetProvider a;
    public AtomicReference b;
    public int c;
    public final /* synthetic */ k70 d;
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ Long f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w60(k70 k70Var, AtomicReference atomicReference, Long l, Continuation continuation) {
        super(2, continuation);
        this.d = k70Var;
        this.e = atomicReference;
        this.f = l;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w60(this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w60) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.w60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
