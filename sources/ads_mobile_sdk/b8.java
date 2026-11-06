package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class b8 extends nc1 {
    public final r6 c;
    public final ex0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b8(r6 adQualityDataManager, ex0 flags) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(adQualityDataManager, "adQualityDataManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = adQualityDataManager;
        this.d = flags;
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:ad_quality_metrics:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:ad_quality_metrics:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            q7 q7Var = (q7) this.c;
            BuildersKt__Builders_commonKt.launch$default(q7Var.d, null, null, new i7(q7Var, null), 3, null);
        }
        return new q01(Unit.INSTANCE);
    }
}
