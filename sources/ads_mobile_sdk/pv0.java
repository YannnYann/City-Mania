package ads_mobile_sdk;

import android.view.View;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class pv0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ rv0 b;
    public final /* synthetic */ View c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pv0(rv0 rv0Var, View view, Continuation continuation) {
        super(2, continuation);
        this.b = rv0Var;
        this.c = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new pv0(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new pv0(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x010e, code lost:
    
        if (((java.util.List) r12.a("gads:swipeable_interstitial_obscuration_check_required_admob_wp", r13, ads_mobile_sdk.yr.g)).contains(r9) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x018b, code lost:
    
        if (r18.b.f() != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01da, code lost:
    
        if (r2.a(true, (kotlin.coroutines.Continuation) r18) == r1) goto L96;
     */
    /* JADX WARN: Path cross not found for [B:58:0x00ef, B:61:0x0112], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:61:0x0112, B:58:0x00ef], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:63:0x011f, B:71:0x0143], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:82:0x0185, B:61:0x0112], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:84:0x018d, B:53:0x00dd], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:84:0x018d, B:56:0x00e5], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:87:0x0198, B:44:0x00c0], limit reached: 93 */
    /* JADX WARN: Path cross not found for [B:87:0x0198, B:48:0x00ce], limit reached: 93 */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x0209 -> B:13:0x002c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pv0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
