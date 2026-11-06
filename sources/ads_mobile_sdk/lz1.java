package ads_mobile_sdk;

import android.content.Context;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class lz1 extends SuspendLambda implements Function2 {
    public String a;
    public mz1 b;
    public r31 c;
    public String d;
    public String e;
    public Context f;
    public rr3 g;
    public rr3 h;
    public int i;
    public final /* synthetic */ mz1 j;
    public final /* synthetic */ String k;
    public final /* synthetic */ r31 l;
    public final /* synthetic */ String m;
    public final /* synthetic */ String n;
    public final /* synthetic */ Context o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz1(mz1 mz1Var, String str, r31 r31Var, String str2, String str3, Context context, Continuation continuation) {
        super(2, continuation);
        this.j = mz1Var;
        this.k = str;
        this.l = r31Var;
        this.m = str2;
        this.n = str3;
        this.o = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lz1(this.j, this.k, this.l, this.m, this.n, this.o, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((lz1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0250 A[Catch: all -> 0x025c, TryCatch #11 {all -> 0x025c, blocks: (B:115:0x0249, B:117:0x0250, B:119:0x0254, B:121:0x0258, B:124:0x025f, B:126:0x0263, B:128:0x0267, B:130:0x026b, B:131:0x026c, B:132:0x0271, B:133:0x0272, B:134:0x0279, B:135:0x027a, B:136:0x0281, B:137:0x0282), top: B:152:0x0249 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0282 A[Catch: all -> 0x025c, TRY_LEAVE, TryCatch #11 {all -> 0x025c, blocks: (B:115:0x0249, B:117:0x0250, B:119:0x0254, B:121:0x0258, B:124:0x025f, B:126:0x0263, B:128:0x0267, B:130:0x026b, B:131:0x026c, B:132:0x0271, B:133:0x0272, B:134:0x0279, B:135:0x027a, B:136:0x0281, B:137:0x0282), top: B:152:0x0249 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cc A[Catch: all -> 0x005f, Exception -> 0x00e0, TryCatch #5 {Exception -> 0x00e0, blocks: (B:29:0x00c6, B:31:0x00cc, B:34:0x00e4, B:36:0x00e8, B:38:0x0100, B:41:0x0109, B:42:0x011f), top: B:148:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e4 A[Catch: all -> 0x005f, Exception -> 0x00e0, TryCatch #5 {Exception -> 0x00e0, blocks: (B:29:0x00c6, B:31:0x00cc, B:34:0x00e4, B:36:0x00e8, B:38:0x0100, B:41:0x0109, B:42:0x011f), top: B:148:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0150 A[Catch: all -> 0x015c, TryCatch #10 {all -> 0x015c, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:70:0x016b, B:71:0x016c, B:72:0x0171, B:73:0x0172, B:74:0x0179, B:75:0x017a, B:76:0x0181, B:77:0x0182), top: B:151:0x0149 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0182 A[Catch: all -> 0x015c, TRY_LEAVE, TryCatch #10 {all -> 0x015c, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:70:0x016b, B:71:0x016c, B:72:0x0171, B:73:0x0172, B:74:0x0179, B:75:0x017a, B:76:0x0181, B:77:0x0182), top: B:151:0x0149 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01cb A[Catch: all -> 0x0034, Exception -> 0x01df, TryCatch #6 {Exception -> 0x01df, blocks: (B:87:0x01c5, B:89:0x01cb, B:92:0x01e3, B:94:0x01e7, B:96:0x01ff, B:99:0x0208, B:100:0x021e), top: B:149:0x01c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01e3 A[Catch: all -> 0x0034, Exception -> 0x01df, TryCatch #6 {Exception -> 0x01df, blocks: (B:87:0x01c5, B:89:0x01cb, B:92:0x01e3, B:94:0x01e7, B:96:0x01ff, B:99:0x0208, B:100:0x021e), top: B:149:0x01c5 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 649
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lz1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
