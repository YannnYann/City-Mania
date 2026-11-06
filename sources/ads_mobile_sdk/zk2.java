package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import java.io.Serializable;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zk2 extends SuspendLambda implements Function2 {
    public Serializable a;
    public Pair b;
    public int c;
    public final /* synthetic */ al2 d;
    public final /* synthetic */ j53 e;
    public final /* synthetic */ om2 f;
    public final /* synthetic */ AdRequest g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zk2(al2 al2Var, j53 j53Var, om2 om2Var, AdRequest adRequest, int i, Continuation continuation) {
        super(2, continuation);
        this.d = al2Var;
        this.e = j53Var;
        this.f = om2Var;
        this.g = adRequest;
        this.h = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zk2(this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zk2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0147, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r2, r3, r16) == r7) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0130  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 410
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zk2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
