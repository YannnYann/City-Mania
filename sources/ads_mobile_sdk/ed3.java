package ads_mobile_sdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ed3 extends ys3 {
    public final Context a;
    public final ex0 b;
    public final tx c;
    public final CoroutineScope d;
    public SensorManager e;
    public Sensor f;
    public long g;
    public int h;
    public cd3 i;
    public boolean j;

    public ed3(Context context, ex0 flags, tx clock, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = context;
        this.b = flags;
        this.c = clock;
        this.d = backgroundScope;
        Duration.Companion companion = Duration.Companion;
        this.g = DurationKt.toDuration(0, DurationUnit.MILLISECONDS);
    }

    public final void b() {
        synchronized (this) {
            try {
                ex0 ex0Var = this.b;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:inspector:shake_enabled", C3522b4.i.W);
                if (((Boolean) ex0Var.a("gads:inspector:shake_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    SensorManager sensorManager = (SensorManager) this.a.getSystemService(SensorManager.class);
                    Sensor defaultSensor = sensorManager != null ? sensorManager.getDefaultSensor(1) : null;
                    if (!this.j && sensorManager != null && defaultSensor != null) {
                        this.e = sensorManager;
                        this.f = defaultSensor;
                        ex0 ex0Var2 = this.b;
                        ex0Var2.getClass();
                        Duration.Companion companion = Duration.Companion;
                        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
                        long duration = DurationKt.toDuration(500, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3522b4.i.W);
                        Duration durationM2870boximpl = Duration.m2870boximpl(duration);
                        sr srVar = yr.j;
                        sensorManager.registerListener(this, defaultSensor, 3, ((int) Duration.m2880getInWholeMicrosecondsimpl(((Duration) ex0Var2.a("gads:inspector:shake_interval", durationM2870boximpl, srVar)).m2906unboximpl())) / 10);
                        this.c.getClass();
                        long duration2 = DurationKt.toDuration(SystemClock.elapsedRealtime(), durationUnit);
                        ex0 ex0Var3 = this.b;
                        ex0Var3.getClass();
                        long duration3 = DurationKt.toDuration(500, durationUnit);
                        Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3522b4.i.W);
                        this.g = Duration.m2896minusLRDsOJo(duration2, ((Duration) ex0Var3.a("gads:inspector:shake_interval", Duration.m2870boximpl(duration3), srVar)).m2906unboximpl());
                        this.j = true;
                        f01.b("Listening for shake gestures.", null);
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
                if (this.j) {
                    SensorManager sensorManager = this.e;
                    if (sensorManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
                        sensorManager = null;
                    }
                    Sensor sensor = this.f;
                    if (sensor == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accelerometer");
                        sensor = null;
                    }
                    sensorManager.unregisterListener(this, sensor);
                    f01.b("Stopped listening for shake gestures.", null);
                    this.j = false;
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
        Intrinsics.checkNotNullParameter("gads:inspector:shake_enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:inspector:shake_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            float fA = bd3.a(event);
            ex0 ex0Var2 = this.b;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:shake_strength", C3522b4.i.W);
            if (fA < ((Number) ex0Var2.a("gads:inspector:shake_strength", Float.valueOf(2.0f), yr.e)).floatValue()) {
                return;
            }
            Duration.Companion companion = Duration.Companion;
            this.c.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            DurationUnit durationUnit = DurationUnit.MILLISECONDS;
            long duration = DurationKt.toDuration(jElapsedRealtime, durationUnit);
            long j = this.g;
            ex0 ex0Var3 = this.b;
            ex0Var3.getClass();
            long duration2 = DurationKt.toDuration(500, durationUnit);
            Intrinsics.checkNotNullParameter("gads:inspector:shake_interval", C3522b4.i.W);
            Duration durationM2870boximpl = Duration.m2870boximpl(duration2);
            sr srVar = yr.j;
            if (Duration.m2871compareToLRDsOJo(duration, Duration.m2897plusLRDsOJo(j, ((Duration) ex0Var3.a("gads:inspector:shake_interval", durationM2870boximpl, srVar)).m2906unboximpl())) < 0) {
                return;
            }
            long j2 = this.g;
            ex0 ex0Var4 = this.b;
            ex0Var4.getClass();
            long duration3 = DurationKt.toDuration(IronSourceError.ERROR_CAPPING_VALIDATION_FAILED, durationUnit);
            Intrinsics.checkNotNullParameter("gads:inspector:shake_reset_time_ms", C3522b4.i.W);
            if (Duration.m2871compareToLRDsOJo(duration, Duration.m2897plusLRDsOJo(j2, ((Duration) ex0Var4.a("gads:inspector:shake_reset_time_ms", Duration.m2870boximpl(duration3), srVar)).m2906unboximpl())) > 0) {
                this.h = 0;
            }
            f01.b("Shake detected.", null);
            this.g = duration;
            this.h++;
            CoroutineScope coroutineScope = this.d;
            dd3 block = new dd3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }
}
