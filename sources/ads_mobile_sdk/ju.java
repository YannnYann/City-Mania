package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ju extends SuspendLambda implements Function1 {
    public ou a;
    public rr3 b;
    public Closeable c;
    public Object d;
    public Mutex e;
    public int f;
    public final /* synthetic */ ou g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ju(ou ouVar, Continuation continuation) {
        super(1, continuation);
        this.g = ouVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ju(this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new ju(this.g, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x014b: MOVE (r8 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:66:0x014a */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x014a: MOVE (r7 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:66:0x014a */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01f1 A[Catch: all -> 0x01cb, TRY_LEAVE, TryCatch #19 {all -> 0x01cb, blocks: (B:97:0x01b8, B:99:0x01bf, B:101:0x01c3, B:103:0x01c7, B:106:0x01ce, B:108:0x01d2, B:110:0x01d6, B:112:0x01da, B:113:0x01db, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9, B:118:0x01f0, B:119:0x01f1), top: B:227:0x01b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0249 A[Catch: all -> 0x0271, TryCatch #6 {all -> 0x0271, blocks: (B:134:0x0244, B:136:0x0249, B:140:0x0274), top: B:210:0x0244, outer: #25 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02c5 A[Catch: all -> 0x0029, TryCatch #4 {all -> 0x0029, blocks: (B:7:0x0023, B:158:0x02b2, B:160:0x02c5, B:161:0x02c8, B:172:0x02e7, B:173:0x02ea, B:153:0x0297, B:19:0x004a, B:130:0x0228, B:157:0x02ae), top: B:206:0x000c, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02d6 A[Catch: all -> 0x02de, TRY_LEAVE, TryCatch #24 {all -> 0x02de, blocks: (B:163:0x02d1, B:165:0x02d6), top: B:233:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02f3 A[Catch: all -> 0x02ff, TryCatch #13 {all -> 0x02ff, blocks: (B:175:0x02ec, B:177:0x02f3, B:179:0x02f7, B:181:0x02fb, B:184:0x0302, B:186:0x0306, B:188:0x030a, B:190:0x030e, B:191:0x030f, B:192:0x0314, B:193:0x0315, B:194:0x031c, B:195:0x031d, B:196:0x0324, B:197:0x0325), top: B:220:0x02ec }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0325 A[Catch: all -> 0x02ff, TRY_LEAVE, TryCatch #13 {all -> 0x02ff, blocks: (B:175:0x02ec, B:177:0x02f3, B:179:0x02f7, B:181:0x02fb, B:184:0x0302, B:186:0x0306, B:188:0x030a, B:190:0x030e, B:191:0x030f, B:192:0x0314, B:193:0x0315, B:194:0x031c, B:195:0x031d, B:196:0x0324, B:197:0x0325), top: B:220:0x02ec }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0110 A[Catch: all -> 0x0138, TryCatch #10 {all -> 0x0138, blocks: (B:57:0x010b, B:59:0x0110, B:63:0x013b), top: B:218:0x010b }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0196 A[Catch: all -> 0x0067, TryCatch #2 {all -> 0x0067, blocks: (B:24:0x0061, B:85:0x0183, B:87:0x0196, B:88:0x0199, B:95:0x01b4, B:96:0x01b7, B:80:0x0167, B:36:0x008c, B:48:0x00ee, B:49:0x00f0, B:50:0x00f8, B:51:0x00fa, B:53:0x00fd, B:84:0x017f), top: B:206:0x000c, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a7 A[Catch: all -> 0x0149, TRY_LEAVE, TryCatch #17 {all -> 0x0149, blocks: (B:90:0x01a2, B:92:0x01a7, B:64:0x0144, B:69:0x0152, B:70:0x0155), top: B:206:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01bf A[Catch: all -> 0x01cb, TryCatch #19 {all -> 0x01cb, blocks: (B:97:0x01b8, B:99:0x01bf, B:101:0x01c3, B:103:0x01c7, B:106:0x01ce, B:108:0x01d2, B:110:0x01d6, B:112:0x01da, B:113:0x01db, B:114:0x01e0, B:115:0x01e1, B:116:0x01e8, B:117:0x01e9, B:118:0x01f0, B:119:0x01f1), top: B:227:0x01b8 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 830
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ju.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
