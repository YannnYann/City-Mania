package ads_mobile_sdk;

import java.util.Optional;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g92 implements b24 {
    public final ix1 a;
    public final Optional b;
    public final CoroutineScope c;

    public g92(ix1 mraidAfmaDispatcher, Optional optionalWebView, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = mraidAfmaDispatcher;
        this.b = optionalWebView;
        this.c = uiScope;
    }

    @Override // ads_mobile_sdk.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.b);
        if (r31Var == null) {
            return Unit.INSTANCE;
        }
        gy3 gy3Var = ey3Var.a;
        if (gy3Var == gy3.a || gy3Var == gy3.b) {
            BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new f92(this, r31Var, null), 3, null);
        }
        return Unit.INSTANCE;
    }
}
