package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class ll0 implements r41 {
    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_DELAY_PAGE_LOADED;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return true;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        if (map.keySet().contains("start")) {
            g41 g41VarB = r31Var.b();
            g41VarB.l.incrementAndGet();
            g41VarB.d();
            return Unit.INSTANCE;
        }
        if (map.keySet().contains("stop")) {
            g41 g41VarB2 = r31Var.b();
            g41VarB2.l.decrementAndGet();
            g41VarB2.d();
            return Unit.INSTANCE;
        }
        if (map.keySet().contains("cancel")) {
            g41 g41VarB3 = r31Var.b();
            g41VarB3.k.set(true);
            BuildersKt__Builders_commonKt.launch$default(g41VarB3.c, null, null, new y31(g41VarB3, null), 3, null);
            g41VarB3.d();
            Unit unit = Unit.INSTANCE;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return unit;
        }
        return Unit.INSTANCE;
    }
}
