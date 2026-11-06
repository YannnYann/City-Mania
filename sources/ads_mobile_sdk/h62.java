package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class h62 extends SuspendLambda implements Function1 {
    public Object a;
    public Object b;
    public Closeable c;
    public Object d;
    public rr3 e;
    public rr3 f;
    public int g;
    public final /* synthetic */ j62 h;
    public final /* synthetic */ eo2 i;
    public final /* synthetic */ JsonObject j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new h62(this.i, this.h, this.j, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((h62) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0186, code lost:
    
        if (r3 == r0) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0218 A[Catch: all -> 0x01f2, TRY_LEAVE, TryCatch #0 {all -> 0x01f2, blocks: (B:95:0x01df, B:97:0x01e6, B:99:0x01ea, B:101:0x01ee, B:104:0x01f5, B:106:0x01f9, B:108:0x01fd, B:110:0x0201, B:111:0x0202, B:112:0x0207, B:113:0x0208, B:114:0x020f, B:115:0x0210, B:116:0x0217, B:117:0x0218), top: B:122:0x01df }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cc A[Catch: all -> 0x006d, TRY_LEAVE, TryCatch #8 {all -> 0x006d, blocks: (B:57:0x0189, B:51:0x0141, B:53:0x0148, B:54:0x0174, B:20:0x0066, B:33:0x00c6, B:35:0x00cc, B:38:0x00d5, B:40:0x00d9, B:91:0x01d7, B:92:0x01dc), top: B:136:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d5 A[Catch: all -> 0x006d, TRY_ENTER, TryCatch #8 {all -> 0x006d, blocks: (B:57:0x0189, B:51:0x0141, B:53:0x0148, B:54:0x0174, B:20:0x0066, B:33:0x00c6, B:35:0x00cc, B:38:0x00d5, B:40:0x00d9, B:91:0x01d7, B:92:0x01dc), top: B:136:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0134 A[Catch: all -> 0x013b, TRY_LEAVE, TryCatch #6 {all -> 0x013b, blocks: (B:45:0x012e, B:47:0x0134), top: B:132:0x012e }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0148 A[Catch: all -> 0x006d, TryCatch #8 {all -> 0x006d, blocks: (B:57:0x0189, B:51:0x0141, B:53:0x0148, B:54:0x0174, B:20:0x0066, B:33:0x00c6, B:35:0x00cc, B:38:0x00d5, B:40:0x00d9, B:91:0x01d7, B:92:0x01dc), top: B:136:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0174 A[Catch: all -> 0x006d, TryCatch #8 {all -> 0x006d, blocks: (B:57:0x0189, B:51:0x0141, B:53:0x0148, B:54:0x0174, B:20:0x0066, B:33:0x00c6, B:35:0x00cc, B:38:0x00d5, B:40:0x00d9, B:91:0x01d7, B:92:0x01dc), top: B:136:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x019a A[Catch: all -> 0x01a6, TryCatch #3 {all -> 0x01a6, blocks: (B:62:0x0193, B:64:0x019a, B:66:0x019e, B:68:0x01a2, B:71:0x01a9, B:73:0x01ad, B:75:0x01b1, B:77:0x01b5, B:78:0x01b6, B:79:0x01bb, B:80:0x01bc, B:81:0x01c3, B:82:0x01c4, B:83:0x01cb, B:84:0x01cc), top: B:127:0x0193 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cc A[Catch: all -> 0x01a6, TRY_LEAVE, TryCatch #3 {all -> 0x01a6, blocks: (B:62:0x0193, B:64:0x019a, B:66:0x019e, B:68:0x01a2, B:71:0x01a9, B:73:0x01ad, B:75:0x01b1, B:77:0x01b5, B:78:0x01b6, B:79:0x01bb, B:80:0x01bc, B:81:0x01c3, B:82:0x01c4, B:83:0x01cb, B:84:0x01cc), top: B:127:0x0193 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e6 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:95:0x01df, B:97:0x01e6, B:99:0x01ea, B:101:0x01ee, B:104:0x01f5, B:106:0x01f9, B:108:0x01fd, B:110:0x0201, B:111:0x0202, B:112:0x0207, B:113:0x0208, B:114:0x020f, B:115:0x0210, B:116:0x0217, B:117:0x0218), top: B:122:0x01df }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 543
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h62.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h62(eo2 eo2Var, j62 j62Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.h = j62Var;
        this.i = eo2Var;
        this.j = jsonObject;
    }
}
