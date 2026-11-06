package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class tu0 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ bv0 d;
    public final /* synthetic */ g32 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tu0(bv0 bv0Var, g32 g32Var, JsonObject jsonObject, String str, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = bv0Var;
        this.e = g32Var;
        this.f = jsonObject;
        this.g = str;
        this.h = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tu0(this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((tu0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01bf A[Catch: all -> 0x019a, TRY_LEAVE, TryCatch #5 {all -> 0x019a, blocks: (B:87:0x0187, B:89:0x018e, B:91:0x0192, B:93:0x0196, B:96:0x019c, B:98:0x01a0, B:100:0x01a4, B:102:0x01a8, B:103:0x01a9, B:104:0x01ae, B:105:0x01af, B:106:0x01b6, B:107:0x01b7, B:108:0x01be, B:109:0x01bf), top: B:123:0x0187 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe A[Catch: all -> 0x002d, TryCatch #7 {all -> 0x002d, blocks: (B:14:0x0028, B:37:0x00f8, B:39:0x00fe, B:40:0x0103), top: B:126:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0115 A[Catch: all -> 0x0121, TryCatch #0 {all -> 0x0121, blocks: (B:45:0x010e, B:47:0x0115, B:49:0x0119, B:51:0x011d, B:54:0x0123, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:61:0x0130, B:62:0x0135, B:63:0x0136, B:64:0x013d, B:65:0x013e, B:66:0x0145, B:67:0x0146), top: B:114:0x010e }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0146 A[Catch: all -> 0x0121, TRY_LEAVE, TryCatch #0 {all -> 0x0121, blocks: (B:45:0x010e, B:47:0x0115, B:49:0x0119, B:51:0x011d, B:54:0x0123, B:56:0x0127, B:58:0x012b, B:60:0x012f, B:61:0x0130, B:62:0x0135, B:63:0x0136, B:64:0x013d, B:65:0x013e, B:66:0x0145, B:67:0x0146), top: B:114:0x010e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0176 A[Catch: all -> 0x0019, TryCatch #4 {all -> 0x0019, blocks: (B:7:0x0014, B:77:0x0170, B:79:0x0176, B:80:0x017b), top: B:121:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x018e A[Catch: all -> 0x019a, TryCatch #5 {all -> 0x019a, blocks: (B:87:0x0187, B:89:0x018e, B:91:0x0192, B:93:0x0196, B:96:0x019c, B:98:0x01a0, B:100:0x01a4, B:102:0x01a8, B:103:0x01a9, B:104:0x01ae, B:105:0x01af, B:106:0x01b6, B:107:0x01b7, B:108:0x01be, B:109:0x01bf), top: B:123:0x0187 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 454
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tu0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
