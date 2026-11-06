package ads_mobile_sdk;

import android.app.Activity;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zn2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public PictureInPictureAdPosition c;
    public rr3 d;
    public Closeable e;
    public ViewGroup f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public int k;
    public final /* synthetic */ ao2 l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Activity n;
    public final /* synthetic */ PictureInPictureAdPosition o;
    public final /* synthetic */ boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn2(ao2 ao2Var, int i, Activity activity, PictureInPictureAdPosition pictureInPictureAdPosition, boolean z, Continuation continuation) {
        super(2, continuation);
        this.l = ao2Var;
        this.m = i;
        this.n = activity;
        this.o = pictureInPictureAdPosition;
        this.p = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zn2(this.l, this.m, this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zn2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x038a A[Catch: all -> 0x0396, TryCatch #7 {all -> 0x0396, blocks: (B:114:0x0383, B:116:0x038a, B:118:0x038e, B:120:0x0392, B:123:0x0399, B:125:0x039d, B:127:0x03a1, B:129:0x03a5, B:130:0x03a6, B:131:0x03ab, B:132:0x03ac, B:133:0x03b3, B:134:0x03b4, B:135:0x03bb, B:136:0x03bc), top: B:254:0x0383 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03bc A[Catch: all -> 0x0396, TRY_LEAVE, TryCatch #7 {all -> 0x0396, blocks: (B:114:0x0383, B:116:0x038a, B:118:0x038e, B:120:0x0392, B:123:0x0399, B:125:0x039d, B:127:0x03a1, B:129:0x03a5, B:130:0x03a6, B:131:0x03ab, B:132:0x03ac, B:133:0x03b3, B:134:0x03b4, B:135:0x03bb, B:136:0x03bc), top: B:254:0x0383 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0434 A[Catch: all -> 0x0490, TryCatch #4 {all -> 0x0490, blocks: (B:167:0x0473, B:170:0x047d, B:172:0x0485, B:175:0x0493, B:177:0x0499, B:156:0x042e, B:158:0x0434, B:161:0x0440, B:163:0x0448, B:179:0x04ac, B:180:0x04c0, B:183:0x0539, B:191:0x054b, B:194:0x055c, B:196:0x0565, B:197:0x056c, B:199:0x05ab, B:184:0x053e, B:186:0x0542, B:193:0x0551), top: B:250:0x0473 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x047d A[Catch: all -> 0x0490, TryCatch #4 {all -> 0x0490, blocks: (B:167:0x0473, B:170:0x047d, B:172:0x0485, B:175:0x0493, B:177:0x0499, B:156:0x042e, B:158:0x0434, B:161:0x0440, B:163:0x0448, B:179:0x04ac, B:180:0x04c0, B:183:0x0539, B:191:0x054b, B:194:0x055c, B:196:0x0565, B:197:0x056c, B:199:0x05ab, B:184:0x053e, B:186:0x0542, B:193:0x0551), top: B:250:0x0473 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x04c0 A[Catch: all -> 0x0490, TryCatch #4 {all -> 0x0490, blocks: (B:167:0x0473, B:170:0x047d, B:172:0x0485, B:175:0x0493, B:177:0x0499, B:156:0x042e, B:158:0x0434, B:161:0x0440, B:163:0x0448, B:179:0x04ac, B:180:0x04c0, B:183:0x0539, B:191:0x054b, B:194:0x055c, B:196:0x0565, B:197:0x056c, B:199:0x05ab, B:184:0x053e, B:186:0x0542, B:193:0x0551), top: B:250:0x0473 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0616 A[Catch: all -> 0x0622, TryCatch #0 {all -> 0x0622, blocks: (B:216:0x060f, B:218:0x0616, B:220:0x061a, B:222:0x061e, B:225:0x0625, B:227:0x0629, B:229:0x062d, B:231:0x0631, B:232:0x0632, B:233:0x0637, B:234:0x0638, B:235:0x063f, B:236:0x0640, B:237:0x0647, B:238:0x0648), top: B:243:0x060f }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0648 A[Catch: all -> 0x0622, TRY_LEAVE, TryCatch #0 {all -> 0x0622, blocks: (B:216:0x060f, B:218:0x0616, B:220:0x061a, B:222:0x061e, B:225:0x0625, B:227:0x0629, B:229:0x062d, B:231:0x0631, B:232:0x0632, B:233:0x0637, B:234:0x0638, B:235:0x063f, B:236:0x0640, B:237:0x0647, B:238:0x0648), top: B:243:0x060f }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01b2 A[Catch: all -> 0x0212, TryCatch #5 {all -> 0x0212, blocks: (B:70:0x01f5, B:73:0x01ff, B:75:0x0207, B:78:0x0216, B:80:0x021c, B:59:0x01ac, B:61:0x01b2, B:64:0x01be, B:66:0x01c6, B:82:0x0231, B:83:0x0245, B:86:0x02bf, B:94:0x02d1, B:97:0x02e2, B:99:0x02eb, B:100:0x02f2, B:102:0x0328, B:87:0x02c4, B:89:0x02c8, B:96:0x02d7), top: B:251:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ff A[Catch: all -> 0x0212, TryCatch #5 {all -> 0x0212, blocks: (B:70:0x01f5, B:73:0x01ff, B:75:0x0207, B:78:0x0216, B:80:0x021c, B:59:0x01ac, B:61:0x01b2, B:64:0x01be, B:66:0x01c6, B:82:0x0231, B:83:0x0245, B:86:0x02bf, B:94:0x02d1, B:97:0x02e2, B:99:0x02eb, B:100:0x02f2, B:102:0x0328, B:87:0x02c4, B:89:0x02c8, B:96:0x02d7), top: B:251:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0245 A[Catch: all -> 0x0212, TryCatch #5 {all -> 0x0212, blocks: (B:70:0x01f5, B:73:0x01ff, B:75:0x0207, B:78:0x0216, B:80:0x021c, B:59:0x01ac, B:61:0x01b2, B:64:0x01be, B:66:0x01c6, B:82:0x0231, B:83:0x0245, B:86:0x02bf, B:94:0x02d1, B:97:0x02e2, B:99:0x02eb, B:100:0x02f2, B:102:0x0328, B:87:0x02c4, B:89:0x02c8, B:96:0x02d7), top: B:251:0x01f5 }] */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v61, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v71, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v79 */
    /* JADX WARN: Type inference failed for: r3v80 */
    /* JADX WARN: Type inference failed for: r3v81 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v83 */
    /* JADX WARN: Type inference failed for: r3v84 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [ads_mobile_sdk.rr3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v36, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v49 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:166:0x0471 -> B:250:0x0473). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x01ef -> B:251:0x01f5). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instruction units count: 1615
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zn2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
