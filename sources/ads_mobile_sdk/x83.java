package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class x83 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ b93 b;
    public final /* synthetic */ BaseRequest c;
    public final /* synthetic */ j53 d;
    public final /* synthetic */ AdSize e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x83(b93 b93Var, BaseRequest baseRequest, j53 j53Var, AdSize adSize, Continuation continuation) {
        super(1, continuation);
        this.b = b93Var;
        this.c = baseRequest;
        this.d = j53Var;
        this.e = adSize;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new x83(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((x83) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0111, code lost:
    
        if (r2 == r1) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0178, code lost:
    
        if (kotlinx.coroutines.AwaitKt.joinAll(r6, r19) != r1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x017a, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013b A[LOOP:0: B:43:0x0135->B:45:0x013b, LOOP_END] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.x83.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
