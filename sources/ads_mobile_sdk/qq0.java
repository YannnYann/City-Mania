package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class qq0 extends SuspendLambda implements Function2 {
    public i11 a;
    public tq0 b;
    public String c;
    public String d;
    public String e;
    public String f;
    public rq0 g;
    public m11 h;
    public g11 i;
    public g11 j;
    public m11 k;
    public g11 l;
    public i11 m;
    public int n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ rq0 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qq0(rq0 rq0Var, Continuation continuation) {
        super(2, continuation);
        this.q = rq0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        qq0 qq0Var = new qq0(this.q, continuation);
        qq0Var.p = obj;
        return qq0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        qq0 qq0Var = new qq0(this.q, (Continuation) obj2);
        qq0Var.p = (CoroutineScope) obj;
        return qq0Var.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Path cross not found for [B:45:0x01de, B:47:0x01e4], limit reached: 90 */
    /* JADX WARN: Path cross not found for [B:47:0x01e4, B:45:0x01de], limit reached: 90 */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0348  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0225 -> B:56:0x022f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instruction units count: 905
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qq0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
