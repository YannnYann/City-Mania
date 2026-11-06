package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class qo2 extends SuspendLambda implements Function2 {
    public ro2 a;
    public String b;
    public rr3 c;
    public rr3 d;
    public Mutex e;
    public int f;
    public final /* synthetic */ ro2 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qo2(ro2 ro2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.g = ro2Var;
        this.h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qo2(this.g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qo2(this.g, this.h, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01d7 A[Catch: all -> 0x01e3, TryCatch #2 {all -> 0x01e3, blocks: (B:103:0x01d0, B:105:0x01d7, B:107:0x01db, B:109:0x01df, B:112:0x01e6, B:114:0x01ea, B:116:0x01ee, B:118:0x01f2, B:119:0x01f3, B:120:0x01f8, B:121:0x01f9, B:122:0x0200, B:123:0x0201, B:124:0x0208, B:125:0x0209), top: B:132:0x01d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0209 A[Catch: all -> 0x01e3, TRY_LEAVE, TryCatch #2 {all -> 0x01e3, blocks: (B:103:0x01d0, B:105:0x01d7, B:107:0x01db, B:109:0x01df, B:112:0x01e6, B:114:0x01ea, B:116:0x01ee, B:118:0x01f2, B:119:0x01f3, B:120:0x01f8, B:121:0x01f9, B:122:0x0200, B:123:0x0201, B:124:0x0208, B:125:0x0209), top: B:132:0x01d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f A[Catch: all -> 0x00ab, TryCatch #5 {all -> 0x00ab, blocks: (B:25:0x008b, B:27:0x008f, B:30:0x009e, B:33:0x00ad, B:35:0x00c3, B:36:0x00c8, B:38:0x00d6, B:39:0x00d9), top: B:137:0x008b, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c3 A[Catch: all -> 0x00ab, TryCatch #5 {all -> 0x00ab, blocks: (B:25:0x008b, B:27:0x008f, B:30:0x009e, B:33:0x00ad, B:35:0x00c3, B:36:0x00c8, B:38:0x00d6, B:39:0x00d9), top: B:137:0x008b, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6 A[Catch: all -> 0x00ab, TryCatch #5 {all -> 0x00ab, blocks: (B:25:0x008b, B:27:0x008f, B:30:0x009e, B:33:0x00ad, B:35:0x00c3, B:36:0x00c8, B:38:0x00d6, B:39:0x00d9), top: B:137:0x008b, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0105 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:47:0x00fe, B:49:0x0105, B:51:0x0109, B:53:0x010d, B:56:0x0114, B:58:0x0118, B:60:0x011c, B:62:0x0120, B:63:0x0121, B:64:0x0126, B:65:0x0127, B:66:0x012e, B:67:0x012f, B:68:0x0136, B:69:0x0137), top: B:130:0x00fe }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0137 A[Catch: all -> 0x0111, TRY_LEAVE, TryCatch #0 {all -> 0x0111, blocks: (B:47:0x00fe, B:49:0x0105, B:51:0x0109, B:53:0x010d, B:56:0x0114, B:58:0x0118, B:60:0x011c, B:62:0x0120, B:63:0x0121, B:64:0x0126, B:65:0x0127, B:66:0x012e, B:67:0x012f, B:68:0x0136, B:69:0x0137), top: B:130:0x00fe }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0160 A[Catch: all -> 0x017c, TryCatch #8 {all -> 0x017c, blocks: (B:79:0x015c, B:81:0x0160, B:84:0x016f, B:87:0x017e, B:89:0x0194, B:90:0x0199, B:92:0x01a7, B:93:0x01aa), top: B:142:0x015c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0194 A[Catch: all -> 0x017c, TryCatch #8 {all -> 0x017c, blocks: (B:79:0x015c, B:81:0x0160, B:84:0x016f, B:87:0x017e, B:89:0x0194, B:90:0x0199, B:92:0x01a7, B:93:0x01aa), top: B:142:0x015c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a7 A[Catch: all -> 0x017c, TryCatch #8 {all -> 0x017c, blocks: (B:79:0x015c, B:81:0x0160, B:84:0x016f, B:87:0x017e, B:89:0x0194, B:90:0x0199, B:92:0x01a7, B:93:0x01aa), top: B:142:0x015c, outer: #1 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 528
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qo2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
