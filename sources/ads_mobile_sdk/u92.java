package ads_mobile_sdk;

import android.net.Network;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class u92 extends Lambda implements Function0 {
    public final /* synthetic */ long a;
    public final /* synthetic */ Network b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u92(long j, Network network) {
        super(0);
        this.a = j;
        this.b = network;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Network lost at " + Duration.m2903toStringimpl(this.a) + ": " + this.b;
    }
}
