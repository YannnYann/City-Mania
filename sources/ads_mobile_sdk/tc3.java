package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class tc3 implements r41 {
    public final fi2 a;

    public tc3(fi2 paidLifecycleWrapper) {
        Intrinsics.checkNotNullParameter(paidLifecycleWrapper, "paidLifecycleWrapper");
        this.a = paidLifecycleWrapper;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_SET_PAIDV2_PERSONALIZATION_ENABLED;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("enabled");
        if (!StringsKt__StringsJVMKt.equals(str, "true", true) && !StringsKt__StringsJVMKt.equals(str, "false", true)) {
            return Unit.INSTANCE;
        }
        fi2 fi2Var = this.a;
        boolean z = Boolean.parseBoolean(str);
        fi2Var.getClass();
        try {
            Object value = fi2Var.e.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            w41 w41Var = (w41) ((v41) value);
            w41Var.getClass();
            synchronized (w41.class) {
                w41Var.a.a(Boolean.valueOf(z), "paidv2_user_option");
            }
        } catch (Exception e) {
            xs3.a("Exception while setting GpidV2 UserOption", e, 4);
        }
        return Unit.INSTANCE;
    }
}
