package ads_mobile_sdk;

import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class qc2 extends Lambda implements Function1 {
    public final /* synthetic */ rc2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qc2(rc2 rc2Var) {
        super(1);
        this.a = rc2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(unifiedNativeAdMapper, "unifiedNativeAdMapper");
        rc2 rc2Var = this.a;
        wv3 wv3Var = new wv3(unifiedNativeAdMapper);
        rc2Var.getClass();
        Intrinsics.checkNotNullParameter(wv3Var, "<set-?>");
        rc2Var.c = wv3Var;
        return Unit.INSTANCE;
    }
}
