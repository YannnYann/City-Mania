package com.unity3d.ads.core.data.repository;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import gatewayprotocol.v1.AccelerometerSampleKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AccelerometerRepository {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_MAX_SAMPLES = 50;
    public static final int DEFAULT_SAMPLING_INTERVAL_MS = 100;
    private static final long NANOS_PER_MS = 1000000;
    private final ArrayDeque<DynamicDeviceInfoOuterClass.AccelerometerSample> buffer;
    private final Context context;
    private Long lastAcceptedNanos;
    private final Logger logger;
    private int maxSamples;
    private final Function0<Long> nanoTimeProvider;
    private final AtomicBoolean running;
    private long samplingIntervalNanos;
    private final AccelerometerRepository$sensorListener$1 sensorListener;
    private final SessionRepository sessionRepository;

    /* JADX WARN: Type inference failed for: r2v4, types: [com.unity3d.ads.core.data.repository.AccelerometerRepository$sensorListener$1] */
    public AccelerometerRepository(Context context, SessionRepository sessionRepository, Logger logger, Function0<Long> nanoTimeProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(nanoTimeProvider, "nanoTimeProvider");
        this.context = context;
        this.sessionRepository = sessionRepository;
        this.logger = logger;
        this.nanoTimeProvider = nanoTimeProvider;
        this.running = new AtomicBoolean(false);
        this.maxSamples = 50;
        this.buffer = new ArrayDeque<>(50);
        this.samplingIntervalNanos = 100000000L;
        this.sensorListener = new SensorEventListener() { // from class: com.unity3d.ads.core.data.repository.AccelerometerRepository$sensorListener$1
            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent sensorEvent) {
                if (sensorEvent == null) {
                    return;
                }
                AccelerometerRepository accelerometerRepository = this.this$0;
                if (accelerometerRepository.shouldAccept(((Number) accelerometerRepository.nanoTimeProvider.invoke()).longValue())) {
                    AccelerometerRepository accelerometerRepository2 = this.this$0;
                    AccelerometerSampleKt.Dsl.Companion companion = AccelerometerSampleKt.Dsl.Companion;
                    DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.AccelerometerSample.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                    AccelerometerSampleKt.Dsl dsl_create = companion._create(builderNewBuilder);
                    dsl_create.setClientTimestamp(TimestampExtensionsKt.fromMillis(System.currentTimeMillis()));
                    dsl_create.setX(sensorEvent.values[0]);
                    dsl_create.setY(sensorEvent.values[1]);
                    dsl_create.setZ(sensorEvent.values[2]);
                    accelerometerRepository2.record(dsl_create._build());
                }
            }
        };
    }

    public /* synthetic */ AccelerometerRepository(Context context, SessionRepository sessionRepository, Logger logger, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, sessionRepository, logger, (i & 8) != 0 ? new Function0() { // from class: com.unity3d.ads.core.data.repository.AccelerometerRepository$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SystemClock.elapsedRealtimeNanos());
            }
        } : function0);
    }

    public final void start() {
        if (this.running.get()) {
            return;
        }
        synchronized (this.buffer) {
            this.buffer.clear();
            this.lastAcceptedNanos = null;
            Unit unit = Unit.INSTANCE;
        }
        if (this.sessionRepository.isNativeConfigReady()) {
            NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration = this.sessionRepository.getNativeConfiguration();
            if (nativeConfiguration.getFeatureFlags().getCollectAccelerometer()) {
                NativeConfigurationOuterClass.AccelerometerCollectionConfiguration accelerometerCollection = nativeConfiguration.getAccelerometerCollection();
                Integer numValueOf = Integer.valueOf(accelerometerCollection.getSamplingIntervalMs());
                if (numValueOf.intValue() <= 0) {
                    numValueOf = null;
                }
                int iIntValue = numValueOf != null ? numValueOf.intValue() : 100;
                Integer numValueOf2 = Integer.valueOf(accelerometerCollection.getMaxSamples());
                if (numValueOf2.intValue() <= 0) {
                    numValueOf2 = null;
                }
                int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : 50;
                synchronized (this.buffer) {
                    this.maxSamples = iIntValue2;
                    this.samplingIntervalNanos = ((long) iIntValue) * NANOS_PER_MS;
                }
                Object systemService = this.context.getSystemService("sensor");
                SensorManager sensorManager = systemService instanceof SensorManager ? (SensorManager) systemService : null;
                if (sensorManager == null) {
                    Logger.DefaultImpls.error$default(this.logger, "AccelerometerRepository: SENSOR_SERVICE unavailable", null, 2, null);
                    return;
                }
                Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                if (defaultSensor == null) {
                    Logger.DefaultImpls.error$default(this.logger, "AccelerometerRepository: TYPE_ACCELEROMETER sensor unavailable", null, 2, null);
                    return;
                }
                boolean zRegisterListener = false;
                try {
                    zRegisterListener = sensorManager.registerListener(this.sensorListener, defaultSensor, iIntValue * 1000);
                } catch (IllegalArgumentException e) {
                    this.logger.error("AccelerometerRepository: registerListener rejected arguments", e);
                } catch (SecurityException e2) {
                    this.logger.error("AccelerometerRepository: registerListener denied", e2);
                }
                this.running.set(zRegisterListener);
                if (zRegisterListener) {
                    return;
                }
                Logger.DefaultImpls.error$default(this.logger, "AccelerometerRepository: registerListener failed", null, 2, null);
            }
        }
    }

    public final void stop() {
        if (this.running.getAndSet(false)) {
            Object systemService = this.context.getSystemService("sensor");
            SensorManager sensorManager = systemService instanceof SensorManager ? (SensorManager) systemService : null;
            if (sensorManager == null) {
                return;
            }
            try {
                sensorManager.unregisterListener(this.sensorListener);
            } catch (IllegalArgumentException e) {
                this.logger.error("AccelerometerRepository: unregisterListener rejected arguments", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldAccept(long j) {
        synchronized (this.buffer) {
            Long l = this.lastAcceptedNanos;
            if (l != null && j - l.longValue() < this.samplingIntervalNanos) {
                return false;
            }
            this.lastAcceptedNanos = Long.valueOf(j);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void record(DynamicDeviceInfoOuterClass.AccelerometerSample accelerometerSample) {
        synchronized (this.buffer) {
            while (this.buffer.size() >= this.maxSamples) {
                try {
                    this.buffer.pollFirst();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.buffer.addLast(accelerometerSample);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void recordSampleForTest$unity_ads_defaultRelease(DynamicDeviceInfoOuterClass.AccelerometerSample sample) {
        Intrinsics.checkNotNullParameter(sample, "sample");
        record(sample);
    }

    public final void recordThrottledSampleForTest$unity_ads_defaultRelease(DynamicDeviceInfoOuterClass.AccelerometerSample sample) {
        Intrinsics.checkNotNullParameter(sample, "sample");
        if (shouldAccept(this.nanoTimeProvider.invoke().longValue())) {
            record(sample);
        }
    }

    public final List<DynamicDeviceInfoOuterClass.AccelerometerSample> drainSamples() {
        List<DynamicDeviceInfoOuterClass.AccelerometerSample> list;
        synchronized (this.buffer) {
            list = CollectionsKt___CollectionsKt.toList(this.buffer);
            this.buffer.clear();
        }
        return list;
    }

    /* JADX INFO: compiled from: AccelerometerRepository.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
