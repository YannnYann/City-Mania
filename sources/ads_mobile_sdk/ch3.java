package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ch3 extends Lambda implements Function0 {
    public final /* synthetic */ v01 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ch3(v01 v01Var) {
        super(0);
        this.a = v01Var;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Signal response: " + this.a;
    }
}
