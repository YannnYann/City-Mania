package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w12 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ex0 flags = (ex0) this.a.get();
        dw2 debugGestureDetectorProvider = this.b;
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(debugGestureDetectorProvider, "debugGestureDetectorProvider");
        flags.getClass();
        Intrinsics.checkNotNullParameter("gads:native_ad_inspector_gesture:enabled", C3522b4.i.W);
        if (((Boolean) flags.a("gads:native_ad_inspector_gesture:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            return (nr3) debugGestureDetectorProvider.get();
        }
        return null;
    }

    public w12(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
