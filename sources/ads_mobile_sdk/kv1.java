package ads_mobile_sdk;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class kv1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kv1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View adView = (View) obj;
        Intrinsics.checkNotNullParameter(adView, "adView");
        qv1 qv1Var = this.a;
        qv1Var.getClass();
        Intrinsics.checkNotNullParameter(adView, "<set-?>");
        qv1Var.b = adView;
        return Unit.INSTANCE;
    }
}
