package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.SortedMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class vn implements ox0 {
    public final tx a;
    public final ex0 b;
    public final Object c;
    public int d;
    public int e;
    public int f;
    public final SortedMap g;
    public Long h;
    public final Object i;
    public int j;
    public final LinkedHashMap k;
    public final LinkedHashMap l;
    public final Object m;
    public boolean n;
    public long o;

    public final w91 a(String str, Set requestTypes) {
        Intrinsics.checkNotNullParameter(requestTypes, "requestTypes");
        synchronized (this.i) {
            int i = this.j;
            this.j = i + 1;
            if (requestTypes.isEmpty()) {
                return new w91(Integer.valueOf(i), null, null);
            }
            String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.sorted(requestTypes), ",", null, null, 0, null, null, 62, null);
            Integer num = (Integer) this.k.get(strJoinToString$default);
            int iIntValue = num != null ? num.intValue() : 0;
            this.k.put(strJoinToString$default, Integer.valueOf(iIntValue + 1));
            if (str == null) {
                return new w91(Integer.valueOf(i), Integer.valueOf(iIntValue), null);
            }
            String str2 = str + "|" + strJoinToString$default;
            Integer num2 = (Integer) this.l.get(str2);
            int iIntValue2 = num2 != null ? num2.intValue() : 0;
            this.l.put(str2, Integer.valueOf(iIntValue2 + 1));
            return new w91(Integer.valueOf(i), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2));
        }
    }

    public vn(ex0 flags, tx clock) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = clock;
        this.b = flags;
        this.c = new Object();
        this.d = -1;
        this.f = -1;
        this.g = MapsKt__MapsJVMKt.sortedMapOf(new Pair[0]);
        this.i = new Object();
        this.k = new LinkedHashMap();
        this.l = new LinkedHashMap();
        this.m = new Object();
        this.o = Duration.Companion.m2911getZEROUwyO8pc();
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) {
        synchronized (this.m) {
            if (this.n) {
                return Unit.INSTANCE;
            }
            if (Duration.m2871compareToLRDsOJo(j, this.o) < 0) {
                return Unit.INSTANCE;
            }
            this.n = true;
            this.o = j;
            return Unit.INSTANCE;
        }
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) {
        synchronized (this.m) {
            if (!this.n) {
                return Unit.INSTANCE;
            }
            if (Duration.m2871compareToLRDsOJo(j, this.o) < 0) {
                return Unit.INSTANCE;
            }
            boolean z = false;
            this.n = false;
            ex0 ex0Var = this.b;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:reset_session_counters_on_app_foreground:enabled", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:reset_session_counters_on_app_foreground:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                long jM2896minusLRDsOJo = Duration.m2896minusLRDsOJo(j, this.o);
                ex0 ex0Var2 = this.b;
                ex0Var2.getClass();
                long duration = DurationKt.toDuration(5, DurationUnit.MINUTES);
                Intrinsics.checkNotNullParameter("gads:app_activity_tracker:app_session_timeout_ms", C3522b4.i.W);
                if (Duration.m2871compareToLRDsOJo(jM2896minusLRDsOJo, ((Duration) ex0Var2.a("gads:app_activity_tracker:app_session_timeout_ms", Duration.m2870boximpl(duration), yr.j)).m2906unboximpl()) > 0) {
                    z = true;
                }
            }
            this.o = j;
            Unit unit = Unit.INSTANCE;
            if (!z) {
                return unit;
            }
            synchronized (this.c) {
                this.h = null;
                this.f = -1;
            }
            return unit;
        }
    }
}
