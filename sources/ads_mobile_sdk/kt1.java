package ads_mobile_sdk;

import android.os.Bundle;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kt1 implements r41 {
    public final ls0 a;
    public final i2 b;

    public kt1(ls0 firebaseAnalyticsAdapter, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = firebaseAnalyticsAdapter;
        this.b = adConfiguration;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_LOG_SCION_EVENT;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str;
        String str2 = (String) map.get(C3522b4.i.j0);
        if (str2 != null && (str = (String) map.get("eventId")) != null) {
            is0 is0Var = is0.b;
            if (!Intrinsics.areEqual(str2, "_ac")) {
                is0Var = is0.c;
                if (!Intrinsics.areEqual(str2, "_ai")) {
                    return Unit.INSTANCE;
                }
            }
            ls0 ls0Var = this.a;
            Bundle bundle = this.b.q;
            ls0Var.getClass();
            Unit unitA = ls0.a(ls0Var, is0Var, bundle, str);
            return unitA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
