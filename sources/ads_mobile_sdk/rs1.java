package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rs1 implements qs1 {
    public final ex0 a;
    public final AtomicInteger b;
    public volatile int c;

    public rs1(ex0 flags, Context context, cn0 deviceTierManager) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = flags;
        this.b = new AtomicInteger(0);
    }
}
