package ads_mobile_sdk;

import com.google.android.gms.ads.mediation.NativeAdMapper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class q83 extends Lambda implements Function1 {
    public final /* synthetic */ u83 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q83(u83 u83Var) {
        super(1);
        this.a = u83Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        NativeAdMapper nativeAdMapper = (NativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(nativeAdMapper, "nativeAdMapper");
        u83 u83Var = this.a;
        t12 t12Var = new t12(nativeAdMapper);
        u83Var.getClass();
        Intrinsics.checkNotNullParameter(t12Var, "<set-?>");
        u83Var.d = t12Var;
        return Unit.INSTANCE;
    }
}
