package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class p60 extends Lambda implements Function0 {
    public final /* synthetic */ Throwable a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p60(Throwable th) {
        super(0);
        this.a = th;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Non-fatal error closing resources: " + this.a.getMessage();
    }
}
