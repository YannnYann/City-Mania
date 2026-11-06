package ads_mobile_sdk;

import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oa1 implements lm0 {
    public final /* synthetic */ f0 a;
    public final /* synthetic */ Set b;

    public oa1(f0 f0Var, Set set) {
        this.a = f0Var;
        this.b = set;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        f0 f0Var = this.a;
        Set newForegroundStateChangeListeners = this.b;
        f0Var.getClass();
        Intrinsics.checkNotNullParameter(newForegroundStateChangeListeners, "newForegroundStateChangeListeners");
        synchronized (f0Var) {
            f0Var.h.addAll(newForegroundStateChangeListeners);
        }
        return Unit.INSTANCE;
    }
}
