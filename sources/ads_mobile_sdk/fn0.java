package ads_mobile_sdk;

import android.content.Context;
import com.ironsource.C3522b4;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fn0 implements rh3 {
    public final cn0 a;

    public fn0(Context context, cn0 deviceTierManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = deviceTierManager;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.DEVICE_TIER;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        om0 om0Var;
        Integer numBoxInt = Boxing.boxInt(((mm0) this.a.b.get()).getNumber());
        Integer numBoxInt2 = Boxing.boxInt(this.a.a().getNumber());
        cn0 cn0Var = this.a;
        ex0 ex0Var = cn0Var.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:available_processors_tier:enabled", C3522b4.i.W);
        if (!((Boolean) ex0Var.a("gads:available_processors_tier:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            om0Var = om0.PROCESSOR_TIER_UNKNOWN;
        } else {
            cn0Var.c.set(cn0Var.a(Runtime.getRuntime().availableProcessors()));
            Object obj = cn0Var.c.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            om0Var = (om0) obj;
        }
        return new q01(new en0(numBoxInt, numBoxInt2, Boxing.boxInt(om0Var.getNumber())));
    }
}
