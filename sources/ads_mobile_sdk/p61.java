package ads_mobile_sdk;

import android.content.Context;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import com.google.android.play.core.hsdp.service.HsdpPrewarmRequest;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes.dex */
public final class p61 {
    public final Context a;
    public final ex0 b;
    public final Lazy c;

    public p61(Context context, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = context;
        this.b = flags;
        this.c = LazyKt__LazyJVMKt.lazy(new k61(this));
    }

    public final void a(String targetAppPackageName) {
        Intrinsics.checkNotNullParameter(targetAppPackageName, "targetAppPackageName");
        synchronized (((HsdpDeepLinkService) this.c.getValue())) {
            ((HsdpDeepLinkService) this.c.getValue()).endSession(targetAppPackageName);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Object a(String str, String str2, Map map, boolean z, vg2 vg2Var) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Duration.Companion companion = Duration.Companion;
        return TimeoutKt.withTimeoutOrNull(Duration.m2881getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:hsdp_open_timeout:ms", wm2.a(60, DurationUnit.SECONDS, "gads:hsdp_open_timeout:ms", C3522b4.i.W), yr.j)).m2906unboximpl()), new m61(this, str, str2, map, z, null), vg2Var);
    }

    public final Object a(HsdpPrewarmRequest hsdpPrewarmRequest, jo2 jo2Var) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Duration.Companion companion = Duration.Companion;
        return TimeoutKt.withTimeoutOrNull(Duration.m2881getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:hsdp_prewarm_timeout:ms", wm2.a(60, DurationUnit.SECONDS, "gads:hsdp_prewarm_timeout:ms", C3522b4.i.W), yr.j)).m2906unboximpl()), new o61(this, hsdpPrewarmRequest, null), jo2Var);
    }
}
