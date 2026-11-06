package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableJob;

/* JADX INFO: loaded from: classes.dex */
public final class z60 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ k70 c;
    public final /* synthetic */ Long d;
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ CompletableJob f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z60(boolean z, k70 k70Var, Long l, AtomicReference atomicReference, CompletableJob completableJob, Continuation continuation) {
        super(1, continuation);
        this.b = z;
        this.c = k70Var;
        this.d = l;
        this.e = atomicReference;
        this.f = completableJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new z60(this.b, this.c, this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((z60) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0092, code lost:
    
        if (r10 != r0) goto L37;
     */
    /* JADX WARN: Finally extract failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.z60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
