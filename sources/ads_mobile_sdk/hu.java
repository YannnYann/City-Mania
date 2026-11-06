package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hu extends gu {
    public final oe3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hu(oe3 result, tx clock, long j) {
        super(clock, j, 0);
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.c = result;
    }
}
