package ads_mobile_sdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ix0 extends ys3 {
    public final Context a;
    public final ex0 b;
    public final tx c;
    public final CoroutineScope d;
    public SensorManager e;
    public Sensor f;
    public float g;
    public float h;
    public long i;
    public int j;
    public boolean k;
    public boolean l;
    public gx0 m;
    public boolean n;

    public ix0(Context context, ex0 flags, tx clock, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = context;
        this.b = flags;
        this.c = clock;
        this.d = backgroundScope;
        Duration.Companion companion = Duration.Companion;
        clock.getClass();
        this.i = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
    }

    public final void b() {
        synchronized (this) {
            try {
                ex0 ex0Var = this.b;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:inspector:flick_enabled", C3522b4.i.W);
                if (((Boolean) ex0Var.a("gads:inspector:flick_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    SensorManager sensorManager = (SensorManager) this.a.getSystemService(SensorManager.class);
                    Sensor defaultSensor = sensorManager != null ? sensorManager.getDefaultSensor(4) : null;
                    if (!this.n && sensorManager != null && defaultSensor != null) {
                        this.e = sensorManager;
                        this.f = defaultSensor;
                        ex0 ex0Var2 = this.b;
                        ex0Var2.getClass();
                        Duration.Companion companion = Duration.Companion;
                        long duration = DurationKt.toDuration(IronSourceError.ERROR_CAPPING_VALIDATION_FAILED, DurationUnit.MILLISECONDS);
                        Intrinsics.checkNotNullParameter("gads:inspector:flick_reset_time_ms", C3522b4.i.W);
                        sensorManager.registerListener(this, defaultSensor, 3, ((int) Duration.m2880getInWholeMicrosecondsimpl(((Duration) ex0Var2.a("gads:inspector:flick_reset_time_ms", Duration.m2870boximpl(duration), yr.j)).m2906unboximpl())) / 100);
                        this.n = true;
                        f01.b("Listening for flick gestures.", null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.n) {
                    SensorManager sensorManager = this.e;
                    if (sensorManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
                        sensorManager = null;
                    }
                    Sensor sensor = this.f;
                    if (sensor == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gyroscope");
                        sensor = null;
                    }
                    sensorManager.unregisterListener(this, sensor);
                    this.n = false;
                    f01.b("Stopped listening for flick gestures.", null);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // ads_mobile_sdk.ys3
    public final void a(Sensor sensor) {
        Intrinsics.checkNotNullParameter(sensor, "sensor");
    }

    @Override // ads_mobile_sdk.ys3
    public final void a(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:inspector:flick_enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:inspector:flick_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            Duration.Companion companion = Duration.Companion;
            this.c.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            long duration = DurationKt.toDuration(jElapsedRealtime, durationUnit);
            long j = this.i;
            ex0 ex0Var2 = this.b;
            ex0Var2.getClass();
            long duration2 = DurationKt.toDuration(IronSourceError.ERROR_CAPPING_VALIDATION_FAILED, durationUnit);
            Intrinsics.checkNotNullParameter("gads:inspector:flick_reset_time_ms", C3522b4.i.W);
            if (Duration.m2871compareToLRDsOJo(duration, Duration.m2897plusLRDsOJo(j, ((Duration) ex0Var2.a("gads:inspector:flick_reset_time_ms", Duration.m2870boximpl(duration2), yr.j)).m2906unboximpl())) > 0) {
                this.j = 0;
                this.i = duration;
                this.k = false;
                this.l = false;
                this.g = this.h;
            }
            float f = this.h + (event.values[1] * 4);
            this.h = f;
            float f2 = this.g;
            ex0 ex0Var3 = this.b;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:flick_rotation_threshold", C3522b4.i.W);
            Float fValueOf = Float.valueOf(45.0f);
            mr mrVar = yr.e;
            if (f > ((Number) ex0Var3.a("gads:inspector:flick_rotation_threshold", fValueOf, mrVar)).floatValue() + f2) {
                this.g = this.h;
                this.l = true;
            } else {
                float f3 = this.h;
                float f4 = this.g;
                ex0 ex0Var4 = this.b;
                ex0Var4.getClass();
                Intrinsics.checkNotNullParameter("gads:inspector:flick_rotation_threshold", C3522b4.i.W);
                if (f3 < f4 - ((Number) ex0Var4.a("gads:inspector:flick_rotation_threshold", Float.valueOf(45.0f), mrVar)).floatValue()) {
                    this.g = this.h;
                    this.k = true;
                }
            }
            if (Float.isInfinite(this.h)) {
                this.h = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                this.g = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
            if (this.k && this.l) {
                f01.b("Flick detected.", null);
                this.i = duration;
                this.j++;
                this.k = false;
                this.l = false;
                CoroutineScope coroutineScope = this.d;
                hx0 block = new hx0(this, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
    }
}
