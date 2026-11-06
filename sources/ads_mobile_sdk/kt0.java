package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class kt0 implements zr1 {
    public final /* synthetic */ g33 a;

    public kt0(g33 g33Var) {
        this.a = g33Var;
    }

    @Override // ads_mobile_sdk.zr1
    public final Object a(Object obj, or1 or1Var) {
        Object objA = ((a04) obj).a(new jt0(this.a, null), or1Var);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
