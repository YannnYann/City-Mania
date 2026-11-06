package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class qt0 implements zr1 {
    public final /* synthetic */ zy a;

    public qt0(zy zyVar) {
        this.a = zyVar;
    }

    @Override // ads_mobile_sdk.zr1
    public final Object a(Object obj, or1 or1Var) {
        Object objA = ((a04) obj).a(new pt0(this.a, null), or1Var);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
