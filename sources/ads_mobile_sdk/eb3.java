package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class eb3 extends yr {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eb3(xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
    }

    public final long a() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:js_eng_full_load:timeout_millis", wm2.a(60, DurationUnit.SECONDS, "gads:js_eng_full_load:timeout_millis", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final String c() {
        Intrinsics.checkNotNullParameter("gads:sdk_core_constants:experiment_id", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        return (String) a("gads:sdk_core_constants:experiment_id", "", yr.o);
    }

    public final List b() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"/noop", "/updateActiveView", "/trackActiveViewUnit", "/jsLoaded", "/impressionRecorded", "/refresh", "/requestReload", "/navigation", "/closeStoreOverlay", "/instrument"});
        Intrinsics.checkNotNullParameter("gads:missing_gmsg_handlers_to_ignore", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:missing_gmsg_handlers_to_ignore", defaultValue, yr.g);
    }
}
