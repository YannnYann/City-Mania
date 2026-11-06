package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class d62 extends SuspendLambda implements Function1 {
    public Object a;
    public Closeable b;
    public Closeable c;
    public Object d;
    public Object e;
    public rr3 f;
    public int g;
    public final /* synthetic */ JsonObject h;
    public final /* synthetic */ j62 i;
    public final /* synthetic */ eo2 j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        JsonObject jsonObject = this.h;
        return new d62(this.j, this.i, jsonObject, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((d62) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0121 A[Catch: all -> 0x012b, TRY_LEAVE, TryCatch #4 {all -> 0x012b, blocks: (B:37:0x011b, B:39:0x0121, B:44:0x012e, B:46:0x0132, B:105:0x0205, B:106:0x020a), top: B:142:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012e A[Catch: all -> 0x012b, TRY_ENTER, TryCatch #4 {all -> 0x012b, blocks: (B:37:0x011b, B:39:0x0121, B:44:0x012e, B:46:0x0132, B:105:0x0205, B:106:0x020a), top: B:142:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0165 A[Catch: all -> 0x016d, TRY_LEAVE, TryCatch #5 {all -> 0x016d, blocks: (B:51:0x015f, B:53:0x0165), top: B:143:0x015f }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0177 A[Catch: all -> 0x0195, TryCatch #9 {all -> 0x0195, blocks: (B:57:0x0170, B:59:0x0177, B:63:0x0197), top: B:150:0x0170 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0197 A[Catch: all -> 0x0195, TRY_LEAVE, TryCatch #9 {all -> 0x0195, blocks: (B:57:0x0170, B:59:0x0177, B:63:0x0197), top: B:150:0x0170 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c7 A[Catch: all -> 0x01d3, TryCatch #7 {all -> 0x01d3, blocks: (B:75:0x01c0, B:77:0x01c7, B:79:0x01cb, B:81:0x01cf, B:84:0x01d6, B:86:0x01da, B:88:0x01de, B:90:0x01e2, B:91:0x01e3, B:92:0x01e8, B:93:0x01e9, B:94:0x01f0, B:95:0x01f1, B:96:0x01f8, B:97:0x01f9), top: B:147:0x01c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f9 A[Catch: all -> 0x01d3, TRY_LEAVE, TryCatch #7 {all -> 0x01d3, blocks: (B:75:0x01c0, B:77:0x01c7, B:79:0x01cb, B:81:0x01cf, B:84:0x01d6, B:86:0x01da, B:88:0x01de, B:90:0x01e2, B:91:0x01e3, B:92:0x01e8, B:93:0x01e9, B:94:0x01f0, B:95:0x01f1, B:96:0x01f8, B:97:0x01f9), top: B:147:0x01c0 }] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v39, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d62.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d62(eo2 eo2Var, j62 j62Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.h = jsonObject;
        this.i = j62Var;
        this.j = eo2Var;
    }
}
