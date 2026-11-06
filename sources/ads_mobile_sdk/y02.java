package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class y02 extends SuspendLambda implements Function2 {
    public s02 a;
    public rr3 b;
    public rr3 c;
    public int d;
    public final /* synthetic */ g12 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ s02 g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y02(this.g, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0096 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:31:0x008f, B:33:0x0096, B:35:0x009a, B:37:0x009e, B:40:0x00a4, B:42:0x00a8, B:44:0x00ac, B:46:0x00b0, B:47:0x00b1, B:48:0x00b6, B:49:0x00b7, B:50:0x00be, B:51:0x00bf, B:52:0x00c6, B:53:0x00c7), top: B:58:0x008f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7 A[Catch: all -> 0x00a2, TRY_LEAVE, TryCatch #0 {all -> 0x00a2, blocks: (B:31:0x008f, B:33:0x0096, B:35:0x009a, B:37:0x009e, B:40:0x00a4, B:42:0x00a8, B:44:0x00ac, B:46:0x00b0, B:47:0x00b1, B:48:0x00b6, B:49:0x00b7, B:50:0x00be, B:51:0x00bf, B:52:0x00c6, B:53:0x00c7), top: B:58:0x008f }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.y02.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = g12Var;
        this.f = jsonObject;
        this.g = s02Var;
    }
}
