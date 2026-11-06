package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class iu extends gu {
    public final Deferred c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iu(Deferred deferred, tx clock, long j) {
        super(clock, j, 0);
        Intrinsics.checkNotNullParameter(deferred, "deferred");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.c = deferred;
    }
}
