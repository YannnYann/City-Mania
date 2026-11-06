package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class if2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Mutex c;
    public vf2 d;
    public int e;
    public final /* synthetic */ Ref$ObjectRef f;
    public final /* synthetic */ vf2 g;
    public final /* synthetic */ String h;
    public final /* synthetic */ Ref$ObjectRef i;
    public final /* synthetic */ x91 j;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ boolean l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if2(Ref$ObjectRef ref$ObjectRef, vf2 vf2Var, String str, Ref$ObjectRef ref$ObjectRef2, x91 x91Var, Ref$ObjectRef ref$ObjectRef3, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f = ref$ObjectRef;
        this.g = vf2Var;
        this.h = str;
        this.i = ref$ObjectRef2;
        this.j = x91Var;
        this.k = ref$ObjectRef3;
        this.l = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new if2(this.f, this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((if2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00c6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
