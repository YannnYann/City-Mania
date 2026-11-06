package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class ba2 extends Lambda implements Function0 {
    public final /* synthetic */ long a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba2(long j) {
        super(0);
        this.a = j;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Locked in update at " + Duration.m2903toStringimpl(this.a);
    }
}
