package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
public final class ms3 extends b43 {
    public final ja1 k;
    public double l;
    public Map m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms3(dw2 consentManagerProvider, e01 httpClient, ex0 flags, zw3 userAgentProvider, ja1 initializationConfigWrapper) {
        super(consentManagerProvider, httpClient, flags, userAgentProvider);
        Intrinsics.checkNotNullParameter(consentManagerProvider, "consentManagerProvider");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.k = initializationConfigWrapper;
        this.m = MapsKt__MapsKt.emptyMap();
    }

    @Override // ads_mobile_sdk.b43
    public final long b() {
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Duration.Companion companion = Duration.Companion;
        return ((Duration) ex0Var.a("gads:cui_monitoring_interval_ms", wm2.a(5, DurationUnit.MINUTES, "gads:cui_monitoring_interval_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    @Override // ads_mobile_sdk.b43
    public final boolean a() {
        boolean z;
        synchronized (this) {
            try {
                Iterator it = this.j.iterator();
                int length = 0;
                while (it.hasNext()) {
                    length += ((os3) it.next()).b.length;
                }
                ex0 ex0Var = this.c;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:cui_buffer_size", C3522b4.i.W);
                z = length >= ((Number) ex0Var.a("gads:cui_buffer_size", 1000, yr.f)).intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // ads_mobile_sdk.b43
    public final Object a(Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new ls3(this, null), continuation);
        return objCoroutineScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }
}
