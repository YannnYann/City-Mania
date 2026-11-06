package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xr3 extends Lambda implements Function0 {
    public final /* synthetic */ String a;
    public final /* synthetic */ Throwable b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xr3(String str, Exception exc) {
        super(0);
        this.a = str;
        this.b = exc;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Unsampled trapped exception (" + this.a + "): " + this.b;
    }
}
