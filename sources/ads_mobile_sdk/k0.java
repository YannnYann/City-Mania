package ads_mobile_sdk;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {
    public final CoroutineScope a;
    public final ex0 b;
    public final AtomicInteger c;
    public final ConcurrentHashMap d;

    public k0(CoroutineScope backgroundScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = backgroundScope;
        this.b = flags;
        this.c = new AtomicInteger(0);
        this.d = new ConcurrentHashMap();
    }
}
