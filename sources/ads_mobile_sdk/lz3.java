package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class lz3 extends SuspendLambda implements Function2 {
    public r31 a;
    public int b;
    public final /* synthetic */ oz3 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ nr1 e;
    public final /* synthetic */ ks3 f;
    public final /* synthetic */ eo2 g;
    public final /* synthetic */ t91 h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ mb0 j;
    public final /* synthetic */ String k;
    public final /* synthetic */ v14 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz3(oz3 oz3Var, boolean z, nr1 nr1Var, ks3 ks3Var, eo2 eo2Var, t91 t91Var, boolean z2, mb0 mb0Var, String str, v14 v14Var, Continuation continuation) {
        super(2, continuation);
        this.c = oz3Var;
        this.d = z;
        this.e = nr1Var;
        this.f = ks3Var;
        this.g = eo2Var;
        this.h = t91Var;
        this.i = z2;
        this.j = mb0Var;
        this.k = str;
        this.l = v14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lz3(this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((lz3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 672
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lz3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
