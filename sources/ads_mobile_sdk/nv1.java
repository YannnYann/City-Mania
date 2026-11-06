package ads_mobile_sdk;

import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class nv1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nv1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(unifiedNativeAdMapper, "unifiedNativeAdMapper");
        qv1 qv1Var = this.a;
        wv3 wv3Var = new wv3(unifiedNativeAdMapper);
        qv1Var.getClass();
        Intrinsics.checkNotNullParameter(wv3Var, "<set-?>");
        qv1Var.c = wv3Var;
        return Unit.INSTANCE;
    }
}
