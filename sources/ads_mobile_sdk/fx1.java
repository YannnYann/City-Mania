package ads_mobile_sdk;

import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class fx1 extends rr3 {
    public final uj2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fx1(s11 cuiName, List tags, UUID rootTraceId, ks3 traceMetaSet, int i, int i2, rr3 rr3Var, boolean z) {
        super(cuiName, traceMetaSet, rootTraceId, rr3Var, System.currentTimeMillis(), z);
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(rootTraceId, "rootTraceId");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        this.g = new uj2(i2, traceMetaSet, cuiName, tags, rootTraceId, rr3Var != null ? rr3Var.c() : -1, i, f(), f() - xl.a, xl.b < 0 ? -1L : f() - xl.b, z, null, null, null, -2048);
    }

    @Override // ads_mobile_sdk.rr3
    public final rr3 a(s11 cuiName, List tags, boolean z) {
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        uj2 uj2Var = this.g;
        return new fx1(cuiName, tags, uj2Var.e, this.a, uj2Var.g + 1, uj2Var.a + 1, this, z);
    }

    @Override // ads_mobile_sdk.rr3
    public final void h() {
        uj2 uj2Var = this.g;
        Duration.Companion companion = Duration.Companion;
        long jCurrentTimeMillis = System.currentTimeMillis();
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        uj2Var.p = Duration.m2896minusLRDsOJo(DurationKt.toDuration(jCurrentTimeMillis, durationUnit), DurationKt.toDuration(this.c, durationUnit));
    }

    @Override // ads_mobile_sdk.rr3
    public final uj2 e() {
        return this.g;
    }
}
