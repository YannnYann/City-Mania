package ads_mobile_sdk;

import android.view.View;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class qu0 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ bv0 d;
    public final /* synthetic */ g32 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ JsonObject g;
    public final /* synthetic */ String h;
    public final /* synthetic */ View i;
    public final /* synthetic */ boolean j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qu0(bv0 bv0Var, g32 g32Var, JsonObject jsonObject, JsonObject jsonObject2, String str, View view, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = bv0Var;
        this.e = g32Var;
        this.f = jsonObject;
        this.g = jsonObject2;
        this.h = str;
        this.i = view;
        this.j = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qu0(this.d, this.e, this.f, this.g, this.h, this.i, this.j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((qu0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x026c A[Catch: all -> 0x0278, TryCatch #11 {all -> 0x0278, blocks: (B:105:0x0265, B:107:0x026c, B:109:0x0270, B:111:0x0274, B:114:0x027b, B:116:0x027f, B:118:0x0283, B:120:0x0287, B:121:0x0288, B:122:0x028d, B:123:0x028e, B:124:0x0295, B:125:0x0296, B:126:0x029d, B:127:0x029e), top: B:229:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x029e A[Catch: all -> 0x0278, TRY_LEAVE, TryCatch #11 {all -> 0x0278, blocks: (B:105:0x0265, B:107:0x026c, B:109:0x0270, B:111:0x0274, B:114:0x027b, B:116:0x027f, B:118:0x0283, B:120:0x0287, B:121:0x0288, B:122:0x028d, B:123:0x028e, B:124:0x0295, B:125:0x0296, B:126:0x029d, B:127:0x029e), top: B:229:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02d2 A[Catch: all -> 0x02d8, TryCatch #12 {all -> 0x02d8, blocks: (B:137:0x02cc, B:139:0x02d2, B:142:0x02db), top: B:230:0x02cc }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ee A[Catch: all -> 0x02fa, TryCatch #14 {all -> 0x02fa, blocks: (B:149:0x02e7, B:151:0x02ee, B:153:0x02f2, B:155:0x02f6, B:158:0x02fd, B:160:0x0301, B:162:0x0305, B:164:0x0309, B:165:0x030a, B:166:0x030f, B:167:0x0310, B:168:0x0317, B:169:0x0318, B:170:0x031f, B:171:0x0320), top: B:233:0x02e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0320 A[Catch: all -> 0x02fa, TRY_LEAVE, TryCatch #14 {all -> 0x02fa, blocks: (B:149:0x02e7, B:151:0x02ee, B:153:0x02f2, B:155:0x02f6, B:158:0x02fd, B:160:0x0301, B:162:0x0305, B:164:0x0309, B:165:0x030a, B:166:0x030f, B:167:0x0310, B:168:0x0317, B:169:0x0318, B:170:0x031f, B:171:0x0320), top: B:233:0x02e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0251 A[Catch: all -> 0x0257, TryCatch #10 {all -> 0x0257, blocks: (B:95:0x024b, B:97:0x0251, B:100:0x025a), top: B:227:0x024b }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 875
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qu0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
