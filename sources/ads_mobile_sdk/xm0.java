package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return Boolean.valueOf(this.a.e.hasSystemFeature("com.google.android.feature.services_updater") && this.a.e.hasSystemFeature("cn.google.services"));
    }
}
