package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a43 extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ b43 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a43(b43 b43Var, Continuation continuation) {
        super(2, continuation);
        this.c = b43Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        a43 a43Var = new a43(this.c, continuation);
        a43Var.b = obj;
        return a43Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        a43 a43Var = new a43(this.c, (Continuation) obj2);
        a43Var.b = (CoroutineScope) obj;
        return a43Var.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0073 -> B:11:0x002e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.lang.Object r1 = r9.b
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L2e
        L16:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1e:
            java.lang.Object r1 = r9.b
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L69
        L26:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.b
            r1 = r10
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
        L2e:
            boolean r10 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
            if (r10 == 0) goto L76
            ads_mobile_sdk.b43 r10 = r9.c
            kotlinx.coroutines.selects.SelectImplementation r4 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r5 = r9.getContext()
            r4.<init>(r5)
            long r5 = r10.b()
            long r5 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r5)
            ads_mobile_sdk.y33 r7 = new ads_mobile_sdk.y33
            r8 = 0
            r7.<init>(r8)
            kotlinx.coroutines.selects.OnTimeoutKt.onTimeout(r4, r5, r7)
            kotlinx.coroutines.channels.Channel r10 = r10.i
            kotlinx.coroutines.selects.SelectClause1 r10 = r10.getOnReceive()
            ads_mobile_sdk.z33 r5 = new ads_mobile_sdk.z33
            r5.<init>(r8)
            r4.invoke(r10, r5)
            r9.b = r1
            r9.a = r3
            java.lang.Object r10 = r4.doSelect(r9)
            if (r10 != r0) goto L69
            goto L75
        L69:
            ads_mobile_sdk.b43 r10 = r9.c
            r9.b = r1
            r9.a = r2
            java.lang.Object r10 = r10.a(r9)
            if (r10 != r0) goto L2e
        L75:
            return r0
        L76:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a43.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
