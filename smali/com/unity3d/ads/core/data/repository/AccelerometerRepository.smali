###### Class com.unity3d.ads.core.data.repository.AccelerometerRepository (com.unity3d.ads.core.data.repository.AccelerometerRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;
.super Ljava/lang/Object;
.source "AccelerometerRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccelerometerRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

.field public static final DEFAULT_MAX_SAMPLES:I = 0x32

.field public static final DEFAULT_SAMPLING_INTERVAL_MS:I = 0x64

.field private static final NANOS_PER_MS:J = 0xf4240L


# instance fields
.field private final buffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private lastAcceptedNanos:Ljava/lang/Long;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private maxSamples:I

.field private final nanoTimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private samplingIntervalNanos:J

.field private final sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public static synthetic $r8$lambda$yWxIdQRTKW8CxGL6skq2mTWhaIc()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->Companion:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
            "Lcom/unity3d/ads/core/log/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 29
    iput-object p3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x32

    .line 34
    iput p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    .line 35
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    const-wide/32 p1, 0x5f5e100

    .line 39
    iput-wide p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J

    .line 42
    new-instance p1, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;-><init>(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_9

    .line 30
    new-instance p4, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$$ExternalSyntheticLambda0;-><init>()V

    .line 26
    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .registers 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getNanoTimeProvider$p(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$record(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method

.method public static final synthetic access$shouldAccept(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;J)Z
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->shouldAccept(J)Z

    move-result p0

    return p0
.end method

.method private final record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 133
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    if-lt v1, v2, :cond_15

    .line 134
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_3

    :catchall_13
    move-exception p1

    goto :goto_1e

    .line 136
    :cond_15
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 137
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_13

    .line 132
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0

    throw p1
.end method

.method private final shouldAccept(J)Z
    .registers 8

    .line 123
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;

    if-eqz v1, :cond_18

    .line 125
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_16
    move-exception p1

    goto :goto_21

    .line 126
    :cond_18
    :try_start_18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_16

    .line 123
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_21
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final drainSamples()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 150
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final recordSampleForTest$unity_ads_defaultRelease(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .registers 3

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method

.method public final recordThrottledSampleForTest$unity_ads_defaultRelease(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .registers 4

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->nanoTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->shouldAccept(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->record(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    :cond_1a
    return-void
.end method

.method public final start()V
    .registers 9

    .line 60
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_cc

    .line 64
    :cond_a
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 65
    :try_start_d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->lastAcceptedNanos:Ljava/lang/Long;

    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_d0

    .line 64
    monitor-exit v0

    .line 69
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isNativeConfigReady()Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_cc

    .line 71
    :cond_22
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v2

    invoke-virtual {v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getCollectAccelerometer()Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_cc

    .line 74
    :cond_34
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getSamplingIntervalMs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_47

    goto :goto_48

    :cond_47
    move-object v2, v1

    :goto_48
    if-eqz v2, :cond_4f

    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_51

    :cond_4f
    const/16 v2, 0x64

    .line 77
    :goto_51
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getMaxSamples()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_60

    goto :goto_61

    :cond_60
    move-object v0, v1

    :goto_61
    if-eqz v0, :cond_68

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6a

    :cond_68
    const/16 v0, 0x32

    .line 80
    :goto_6a
    iget-object v3, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->buffer:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 81
    :try_start_6d
    iput v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->maxSamples:I

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    .line 82
    iput-wide v4, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->samplingIntervalNanos:J
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_cd

    .line 80
    monitor-exit v3

    .line 85
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/hardware/SensorManager;

    if-eqz v3, :cond_86

    check-cast v0, Landroid/hardware/SensorManager;

    goto :goto_87

    :cond_86
    move-object v0, v1

    :goto_87
    const/4 v3, 0x2

    if-nez v0, :cond_92

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: SENSOR_SERVICE unavailable"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_92
    const/4 v4, 0x1

    .line 90
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-nez v4, :cond_a1

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: TYPE_ACCELEROMETER sensor unavailable"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_a1
    mul-int/lit16 v2, v2, 0x3e8

    const/4 v5, 0x0

    .line 97
    :try_start_a4
    iget-object v6, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    invoke-virtual {v0, v6, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v5
    :try_end_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_aa} :catch_ad
    .catch Ljava/lang/SecurityException; {:try_start_a4 .. :try_end_aa} :catch_ab

    goto :goto_be

    :catch_ab
    move-exception v0

    goto :goto_af

    :catch_ad
    move-exception v0

    goto :goto_b7

    .line 102
    :goto_af
    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v4, "AccelerometerRepository: registerListener denied"

    invoke-interface {v2, v4, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_be

    .line 99
    :goto_b7
    iget-object v2, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v4, "AccelerometerRepository: registerListener rejected arguments"

    invoke-interface {v2, v4, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_be
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v5, :cond_cc

    .line 106
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: registerListener failed"

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_cc
    :goto_cc
    return-void

    :catchall_cd
    move-exception v0

    .line 80
    monitor-exit v3

    throw v0

    :catchall_d0
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method public final stop()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2b

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_19

    check-cast v0, Landroid/hardware/SensorManager;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_1d

    goto :goto_2b

    .line 115
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->sensorListener:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "AccelerometerRepository: unregisterListener rejected arguments"

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

###### Class com.unity3d.ads.core.data.repository.AccelerometerRepository.Companion (com.unity3d.ads.core.data.repository.AccelerometerRepository$Companion)
.class public final Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;
.super Ljava/lang/Object;
.source "AccelerometerRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.repository.AccelerometerRepository$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.repository.AccelerometerRepository$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->$r8$lambda$yWxIdQRTKW8CxGL6skq2mTWhaIc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.repository.AccelerometerRepository$sensorListener$1 (com.unity3d.ads.core.data.repository.AccelerometerRepository$sensorListener$1)
.class public final Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;
.super Ljava/lang/Object;
.source "AccelerometerRepository.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccelerometerRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1\n+ 2 AccelerometerSampleKt.kt\ngatewayprotocol/v1/AccelerometerSampleKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n10#2:163\n1#3:164\n*S KotlinDebug\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1\n*L\n47#1:163\n47#1:164\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_19

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$getNanoTimeProvider$p(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$shouldAccept(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;J)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 46
    :cond_1a
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 10
    sget-object v1, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->newBuilder()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    move-result-object v2

    const-string v3, "newBuilder(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;

    move-result-object v1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->fromMillis(J)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setClientTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 49
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setX(F)V

    .line 50
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setY(F)V

    .line 51
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setZ(F)V

    .line 10
    invoke-virtual {v1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$record(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method
