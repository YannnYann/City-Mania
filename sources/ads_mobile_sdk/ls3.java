package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ls3 extends SuspendLambda implements Function2 {
    public d21 a;
    public Object b;
    public Object c;
    public String d;
    public uj2[] e;
    public uj2 f;
    public ks3 g;
    public ms3 h;
    public h21 i;
    public b21 j;
    public b21 k;
    public h21 l;
    public b21 m;
    public int n;
    public int o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ ms3 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ls3(ms3 ms3Var, Continuation continuation) {
        super(2, continuation);
        this.s = ms3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ls3 ls3Var = new ls3(this.s, continuation);
        ls3Var.r = obj;
        return ls3Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ls3 ls3Var = new ls3(this.s, (Continuation) obj2);
        ls3Var.r = (CoroutineScope) obj;
        return ls3Var.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Path cross not found for [B:56:0x0220, B:60:0x022a], limit reached: 224 */
    /* JADX WARN: Path cross not found for [B:60:0x022a, B:56:0x0220], limit reached: 224 */
    /* JADX WARN: Removed duplicated region for block: B:102:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x05b1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x064b  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x068d  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x06d3  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0778  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x07ed  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x042c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0374 -> B:82:0x038c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instruction units count: 2116
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ls3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
