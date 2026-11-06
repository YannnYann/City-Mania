###### Class io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter (io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter)
.class public final Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;
.implements Lio/bidmachine/media3/datasource/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static singletonInstance:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonFinalStaticField",
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public bitrateEstimate:J

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final context:Landroid/content/Context;

.field public countryCode:Ljava/lang/String;

.field public final eventDispatcher:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field public final initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public lastReportedBitrateEstimate:J

.field public networkType:I

.field public networkTypeOverride:I

.field public networkTypeOverrideSet:Z

.field public final resetOnNetworkTypeChange:Z

.field public sampleBytesTransferred:J

.field public sampleStartTimeMs:J

.field public final slidingPercentile:Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

.field public streamCount:I

.field public totalBytesTransferred:J

.field public totalElapsedTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$wEpMnYWfIR3HgquteZv-Iffl6Gs(Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->onNetworkTypeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 10

    const-wide/32 v0, 0x419ce0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x30d400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x249f00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x19f0a0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xd1f60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v0, 0x16e360

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xef420

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v5, 0xb71b0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v5, 0x7ef40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x46cd0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v1, v2, v5, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v5, 0x1e8480

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v5, 0x13d620

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v5, 0xf4240

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x94ed0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v2, v5, v4, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    sput-object v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v6, 0x2625a0

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x124f80

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0xecd10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v8, 0xa6040

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v3, v6, v7, v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    sput-object v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v6, 0x47b760

    .line 73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x2ab980

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0x200b20

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v6, v7, v3, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v3, 0x2932e0

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v3, 0x186a00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v0, v3, v2, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ILio/bidmachine/media3/common/util/Clock;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Z)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    .line 318
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    .line 319
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    .line 320
    new-instance p2, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {p2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 321
    new-instance p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

    invoke-direct {p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

    .line 322
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 323
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z

    if-eqz p1, :cond_44

    .line 325
    invoke-static {p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lio/bidmachine/media3/common/util/NetworkTypeObserver;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    .line 327
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p2

    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 328
    new-instance p2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;)V

    .line 329
    invoke-static {}, Lio/bidmachine/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 328
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/util/NetworkTypeObserver;->register(Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_44
    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    const-wide/32 p1, 0xf4240

    .line 332
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;ILio/bidmachine/media3/common/util/Clock;ZLio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$1;)V
    .registers 7

    .line 53
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILio/bidmachine/media3/common/util/Clock;Z)V

    return-void
.end method

.method public static getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_10f2

    :goto_11
    move v0, v6

    goto/16 :goto_d0a

    :sswitch_14
    const-string v0, "ZW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_11

    :cond_1d
    const/16 v0, 0xee

    goto/16 :goto_d0a

    :sswitch_21
    const-string v0, "ZM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_11

    :cond_2a
    const/16 v0, 0xed

    goto/16 :goto_d0a

    :sswitch_2e
    const-string v0, "ZA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_11

    :cond_37
    const/16 v0, 0xec

    goto/16 :goto_d0a

    :sswitch_3b
    const-string v0, "YT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_11

    :cond_44
    const/16 v0, 0xeb

    goto/16 :goto_d0a

    :sswitch_48
    const-string v0, "YE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_11

    :cond_51
    const/16 v0, 0xea

    goto/16 :goto_d0a

    :sswitch_55
    const-string v0, "XK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_11

    :cond_5e
    const/16 v0, 0xe9

    goto/16 :goto_d0a

    :sswitch_62
    const-string v0, "WS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto :goto_11

    :cond_6b
    const/16 v0, 0xe8

    goto/16 :goto_d0a

    :sswitch_6f
    const-string v0, "WF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_11

    :cond_78
    const/16 v0, 0xe7

    goto/16 :goto_d0a

    :sswitch_7c
    const-string v0, "VU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto :goto_11

    :cond_85
    const/16 v0, 0xe6

    goto/16 :goto_d0a

    :sswitch_89
    const-string v0, "VN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_11

    :cond_93
    const/16 v0, 0xe5

    goto/16 :goto_d0a

    :sswitch_97
    const-string v0, "VI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto/16 :goto_11

    :cond_a1
    const/16 v0, 0xe4

    goto/16 :goto_d0a

    :sswitch_a5
    const-string v0, "VG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto/16 :goto_11

    :cond_af
    const/16 v0, 0xe3

    goto/16 :goto_d0a

    :sswitch_b3
    const-string v0, "VE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto/16 :goto_11

    :cond_bd
    const/16 v0, 0xe2

    goto/16 :goto_d0a

    :sswitch_c1
    const-string v0, "VC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto/16 :goto_11

    :cond_cb
    const/16 v0, 0xe1

    goto/16 :goto_d0a

    :sswitch_cf
    const-string v0, "VA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    goto/16 :goto_11

    :cond_d9
    const/16 v0, 0xe0

    goto/16 :goto_d0a

    :sswitch_dd
    const-string v0, "UZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_11

    :cond_e7
    const/16 v0, 0xdf

    goto/16 :goto_d0a

    :sswitch_eb
    const-string v0, "UY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f5

    goto/16 :goto_11

    :cond_f5
    const/16 v0, 0xde

    goto/16 :goto_d0a

    :sswitch_f9
    const-string v0, "US"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_103

    goto/16 :goto_11

    :cond_103
    const/16 v0, 0xdd

    goto/16 :goto_d0a

    :sswitch_107
    const-string v0, "UG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_111

    goto/16 :goto_11

    :cond_111
    const/16 v0, 0xdc

    goto/16 :goto_d0a

    :sswitch_115
    const-string v0, "UA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11f

    goto/16 :goto_11

    :cond_11f
    const/16 v0, 0xdb

    goto/16 :goto_d0a

    :sswitch_123
    const-string v0, "TZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12d

    goto/16 :goto_11

    :cond_12d
    const/16 v0, 0xda

    goto/16 :goto_d0a

    :sswitch_131
    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13b

    goto/16 :goto_11

    :cond_13b
    const/16 v0, 0xd9

    goto/16 :goto_d0a

    :sswitch_13f
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_149

    goto/16 :goto_11

    :cond_149
    const/16 v0, 0xd8

    goto/16 :goto_d0a

    :sswitch_14d
    const-string v0, "TT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_157

    goto/16 :goto_11

    :cond_157
    const/16 v0, 0xd7

    goto/16 :goto_d0a

    :sswitch_15b
    const-string v0, "TR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_165

    goto/16 :goto_11

    :cond_165
    const/16 v0, 0xd6

    goto/16 :goto_d0a

    :sswitch_169
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_173

    goto/16 :goto_11

    :cond_173
    const/16 v0, 0xd5

    goto/16 :goto_d0a

    :sswitch_177
    const-string v0, "TN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_181

    goto/16 :goto_11

    :cond_181
    const/16 v0, 0xd4

    goto/16 :goto_d0a

    :sswitch_185
    const-string v0, "TM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18f

    goto/16 :goto_11

    :cond_18f
    const/16 v0, 0xd3

    goto/16 :goto_d0a

    :sswitch_193
    const-string v0, "TL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19d

    goto/16 :goto_11

    :cond_19d
    const/16 v0, 0xd2

    goto/16 :goto_d0a

    :sswitch_1a1
    const-string v0, "TJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ab

    goto/16 :goto_11

    :cond_1ab
    const/16 v0, 0xd1

    goto/16 :goto_d0a

    :sswitch_1af
    const-string v0, "TH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b9

    goto/16 :goto_11

    :cond_1b9
    const/16 v0, 0xd0

    goto/16 :goto_d0a

    :sswitch_1bd
    const-string v0, "TG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c7

    goto/16 :goto_11

    :cond_1c7
    const/16 v0, 0xcf

    goto/16 :goto_d0a

    :sswitch_1cb
    const-string v0, "TD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d5

    goto/16 :goto_11

    :cond_1d5
    const/16 v0, 0xce

    goto/16 :goto_d0a

    :sswitch_1d9
    const-string v0, "TC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e3

    goto/16 :goto_11

    :cond_1e3
    const/16 v0, 0xcd

    goto/16 :goto_d0a

    :sswitch_1e7
    const-string v0, "SZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f1

    goto/16 :goto_11

    :cond_1f1
    const/16 v0, 0xcc

    goto/16 :goto_d0a

    :sswitch_1f5
    const-string v0, "SY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ff

    goto/16 :goto_11

    :cond_1ff
    const/16 v0, 0xcb

    goto/16 :goto_d0a

    :sswitch_203
    const-string v0, "SX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20d

    goto/16 :goto_11

    :cond_20d
    const/16 v0, 0xca

    goto/16 :goto_d0a

    :sswitch_211
    const-string v0, "SV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21b

    goto/16 :goto_11

    :cond_21b
    const/16 v0, 0xc9

    goto/16 :goto_d0a

    :sswitch_21f
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_229

    goto/16 :goto_11

    :cond_229
    const/16 v0, 0xc8

    goto/16 :goto_d0a

    :sswitch_22d
    const-string v0, "SS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_237

    goto/16 :goto_11

    :cond_237
    const/16 v0, 0xc7

    goto/16 :goto_d0a

    :sswitch_23b
    const-string v0, "SR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_245

    goto/16 :goto_11

    :cond_245
    const/16 v0, 0xc6

    goto/16 :goto_d0a

    :sswitch_249
    const-string v0, "SO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_253

    goto/16 :goto_11

    :cond_253
    const/16 v0, 0xc5

    goto/16 :goto_d0a

    :sswitch_257
    const-string v0, "SN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_261

    goto/16 :goto_11

    :cond_261
    const/16 v0, 0xc4

    goto/16 :goto_d0a

    :sswitch_265
    const-string v0, "SM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26f

    goto/16 :goto_11

    :cond_26f
    const/16 v0, 0xc3

    goto/16 :goto_d0a

    :sswitch_273
    const-string v0, "SL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27d

    goto/16 :goto_11

    :cond_27d
    const/16 v0, 0xc2

    goto/16 :goto_d0a

    :sswitch_281
    const-string v0, "SK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28b

    goto/16 :goto_11

    :cond_28b
    const/16 v0, 0xc1

    goto/16 :goto_d0a

    :sswitch_28f
    const-string v0, "SJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_299

    goto/16 :goto_11

    :cond_299
    const/16 v0, 0xc0

    goto/16 :goto_d0a

    :sswitch_29d
    const-string v0, "SI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a7

    goto/16 :goto_11

    :cond_2a7
    const/16 v0, 0xbf

    goto/16 :goto_d0a

    :sswitch_2ab
    const-string v0, "SH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b5

    goto/16 :goto_11

    :cond_2b5
    const/16 v0, 0xbe

    goto/16 :goto_d0a

    :sswitch_2b9
    const-string v0, "SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c3

    goto/16 :goto_11

    :cond_2c3
    const/16 v0, 0xbd

    goto/16 :goto_d0a

    :sswitch_2c7
    const-string v0, "SE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d1

    goto/16 :goto_11

    :cond_2d1
    const/16 v0, 0xbc

    goto/16 :goto_d0a

    :sswitch_2d5
    const-string v0, "SD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2df

    goto/16 :goto_11

    :cond_2df
    const/16 v0, 0xbb

    goto/16 :goto_d0a

    :sswitch_2e3
    const-string v0, "SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ed

    goto/16 :goto_11

    :cond_2ed
    const/16 v0, 0xba

    goto/16 :goto_d0a

    :sswitch_2f1
    const-string v0, "SB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2fb

    goto/16 :goto_11

    :cond_2fb
    const/16 v0, 0xb9

    goto/16 :goto_d0a

    :sswitch_2ff
    const-string v0, "SA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_309

    goto/16 :goto_11

    :cond_309
    const/16 v0, 0xb8

    goto/16 :goto_d0a

    :sswitch_30d
    const-string v0, "RW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_317

    goto/16 :goto_11

    :cond_317
    const/16 v0, 0xb7

    goto/16 :goto_d0a

    :sswitch_31b
    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_325

    goto/16 :goto_11

    :cond_325
    const/16 v0, 0xb6

    goto/16 :goto_d0a

    :sswitch_329
    const-string v0, "RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_333

    goto/16 :goto_11

    :cond_333
    const/16 v0, 0xb5

    goto/16 :goto_d0a

    :sswitch_337
    const-string v0, "RO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_341

    goto/16 :goto_11

    :cond_341
    const/16 v0, 0xb4

    goto/16 :goto_d0a

    :sswitch_345
    const-string v0, "RE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34f

    goto/16 :goto_11

    :cond_34f
    const/16 v0, 0xb3

    goto/16 :goto_d0a

    :sswitch_353
    const-string v0, "QA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35d

    goto/16 :goto_11

    :cond_35d
    const/16 v0, 0xb2

    goto/16 :goto_d0a

    :sswitch_361
    const-string v0, "PY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36b

    goto/16 :goto_11

    :cond_36b
    const/16 v0, 0xb1

    goto/16 :goto_d0a

    :sswitch_36f
    const-string v0, "PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_379

    goto/16 :goto_11

    :cond_379
    const/16 v0, 0xb0

    goto/16 :goto_d0a

    :sswitch_37d
    const-string v0, "PT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_387

    goto/16 :goto_11

    :cond_387
    const/16 v0, 0xaf

    goto/16 :goto_d0a

    :sswitch_38b
    const-string v0, "PS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_395

    goto/16 :goto_11

    :cond_395
    const/16 v0, 0xae

    goto/16 :goto_d0a

    :sswitch_399
    const-string v0, "PR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a3

    goto/16 :goto_11

    :cond_3a3
    const/16 v0, 0xad

    goto/16 :goto_d0a

    :sswitch_3a7
    const-string v0, "PM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b1

    goto/16 :goto_11

    :cond_3b1
    const/16 v0, 0xac

    goto/16 :goto_d0a

    :sswitch_3b5
    const-string v0, "PL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3bf

    goto/16 :goto_11

    :cond_3bf
    const/16 v0, 0xab

    goto/16 :goto_d0a

    :sswitch_3c3
    const-string v0, "PK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3cd

    goto/16 :goto_11

    :cond_3cd
    const/16 v0, 0xaa

    goto/16 :goto_d0a

    :sswitch_3d1
    const-string v0, "PH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3db

    goto/16 :goto_11

    :cond_3db
    const/16 v0, 0xa9

    goto/16 :goto_d0a

    :sswitch_3df
    const-string v0, "PG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e9

    goto/16 :goto_11

    :cond_3e9
    const/16 v0, 0xa8

    goto/16 :goto_d0a

    :sswitch_3ed
    const-string v0, "PF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f7

    goto/16 :goto_11

    :cond_3f7
    const/16 v0, 0xa7

    goto/16 :goto_d0a

    :sswitch_3fb
    const-string v0, "PE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_405

    goto/16 :goto_11

    :cond_405
    const/16 v0, 0xa6

    goto/16 :goto_d0a

    :sswitch_409
    const-string v0, "PA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_413

    goto/16 :goto_11

    :cond_413
    const/16 v0, 0xa5

    goto/16 :goto_d0a

    :sswitch_417
    const-string v0, "OM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_421

    goto/16 :goto_11

    :cond_421
    const/16 v0, 0xa4

    goto/16 :goto_d0a

    :sswitch_425
    const-string v0, "NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42f

    goto/16 :goto_11

    :cond_42f
    const/16 v0, 0xa3

    goto/16 :goto_d0a

    :sswitch_433
    const-string v0, "NU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43d

    goto/16 :goto_11

    :cond_43d
    const/16 v0, 0xa2

    goto/16 :goto_d0a

    :sswitch_441
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44b

    goto/16 :goto_11

    :cond_44b
    const/16 v0, 0xa1

    goto/16 :goto_d0a

    :sswitch_44f
    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_459

    goto/16 :goto_11

    :cond_459
    const/16 v0, 0xa0

    goto/16 :goto_d0a

    :sswitch_45d
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_467

    goto/16 :goto_11

    :cond_467
    const/16 v0, 0x9f

    goto/16 :goto_d0a

    :sswitch_46b
    const-string v0, "NL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_475

    goto/16 :goto_11

    :cond_475
    const/16 v0, 0x9e

    goto/16 :goto_d0a

    :sswitch_479
    const-string v0, "NI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_483

    goto/16 :goto_11

    :cond_483
    const/16 v0, 0x9d

    goto/16 :goto_d0a

    :sswitch_487
    const-string v0, "NG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_491

    goto/16 :goto_11

    :cond_491
    const/16 v0, 0x9c

    goto/16 :goto_d0a

    :sswitch_495
    const-string v0, "NF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49f

    goto/16 :goto_11

    :cond_49f
    const/16 v0, 0x9b

    goto/16 :goto_d0a

    :sswitch_4a3
    const-string v0, "NE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4ad

    goto/16 :goto_11

    :cond_4ad
    const/16 v0, 0x9a

    goto/16 :goto_d0a

    :sswitch_4b1
    const-string v0, "NC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4bb

    goto/16 :goto_11

    :cond_4bb
    const/16 v0, 0x99

    goto/16 :goto_d0a

    :sswitch_4bf
    const-string v0, "NA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c9

    goto/16 :goto_11

    :cond_4c9
    const/16 v0, 0x98

    goto/16 :goto_d0a

    :sswitch_4cd
    const-string v0, "MZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d7

    goto/16 :goto_11

    :cond_4d7
    const/16 v0, 0x97

    goto/16 :goto_d0a

    :sswitch_4db
    const-string v0, "MY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e5

    goto/16 :goto_11

    :cond_4e5
    const/16 v0, 0x96

    goto/16 :goto_d0a

    :sswitch_4e9
    const-string v0, "MX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f3

    goto/16 :goto_11

    :cond_4f3
    const/16 v0, 0x95

    goto/16 :goto_d0a

    :sswitch_4f7
    const-string v0, "MW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_501

    goto/16 :goto_11

    :cond_501
    const/16 v0, 0x94

    goto/16 :goto_d0a

    :sswitch_505
    const-string v0, "MV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50f

    goto/16 :goto_11

    :cond_50f
    const/16 v0, 0x93

    goto/16 :goto_d0a

    :sswitch_513
    const-string v0, "MU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51d

    goto/16 :goto_11

    :cond_51d
    const/16 v0, 0x92

    goto/16 :goto_d0a

    :sswitch_521
    const-string v0, "MT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52b

    goto/16 :goto_11

    :cond_52b
    const/16 v0, 0x91

    goto/16 :goto_d0a

    :sswitch_52f
    const-string v0, "MS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_539

    goto/16 :goto_11

    :cond_539
    const/16 v0, 0x90

    goto/16 :goto_d0a

    :sswitch_53d
    const-string v0, "MR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_547

    goto/16 :goto_11

    :cond_547
    const/16 v0, 0x8f

    goto/16 :goto_d0a

    :sswitch_54b
    const-string v0, "MQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_555

    goto/16 :goto_11

    :cond_555
    const/16 v0, 0x8e

    goto/16 :goto_d0a

    :sswitch_559
    const-string v0, "MP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_563

    goto/16 :goto_11

    :cond_563
    const/16 v0, 0x8d

    goto/16 :goto_d0a

    :sswitch_567
    const-string v0, "MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_571

    goto/16 :goto_11

    :cond_571
    const/16 v0, 0x8c

    goto/16 :goto_d0a

    :sswitch_575
    const-string v0, "MN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57f

    goto/16 :goto_11

    :cond_57f
    const/16 v0, 0x8b

    goto/16 :goto_d0a

    :sswitch_583
    const-string v0, "MM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58d

    goto/16 :goto_11

    :cond_58d
    const/16 v0, 0x8a

    goto/16 :goto_d0a

    :sswitch_591
    const-string v0, "ML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59b

    goto/16 :goto_11

    :cond_59b
    const/16 v0, 0x89

    goto/16 :goto_d0a

    :sswitch_59f
    const-string v0, "MK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a9

    goto/16 :goto_11

    :cond_5a9
    const/16 v0, 0x88

    goto/16 :goto_d0a

    :sswitch_5ad
    const-string v0, "MH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b7

    goto/16 :goto_11

    :cond_5b7
    const/16 v0, 0x87

    goto/16 :goto_d0a

    :sswitch_5bb
    const-string v0, "MG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c5

    goto/16 :goto_11

    :cond_5c5
    const/16 v0, 0x86

    goto/16 :goto_d0a

    :sswitch_5c9
    const-string v0, "MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d3

    goto/16 :goto_11

    :cond_5d3
    const/16 v0, 0x85

    goto/16 :goto_d0a

    :sswitch_5d7
    const-string v0, "ME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e1

    goto/16 :goto_11

    :cond_5e1
    const/16 v0, 0x84

    goto/16 :goto_d0a

    :sswitch_5e5
    const-string v0, "MD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5ef

    goto/16 :goto_11

    :cond_5ef
    const/16 v0, 0x83

    goto/16 :goto_d0a

    :sswitch_5f3
    const-string v0, "MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5fd

    goto/16 :goto_11

    :cond_5fd
    const/16 v0, 0x82

    goto/16 :goto_d0a

    :sswitch_601
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60b

    goto/16 :goto_11

    :cond_60b
    const/16 v0, 0x81

    goto/16 :goto_d0a

    :sswitch_60f
    const-string v0, "LY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_619

    goto/16 :goto_11

    :cond_619
    const/16 v0, 0x80

    goto/16 :goto_d0a

    :sswitch_61d
    const-string v0, "LV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_627

    goto/16 :goto_11

    :cond_627
    const/16 v0, 0x7f

    goto/16 :goto_d0a

    :sswitch_62b
    const-string v0, "LU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_635

    goto/16 :goto_11

    :cond_635
    const/16 v0, 0x7e

    goto/16 :goto_d0a

    :sswitch_639
    const-string v0, "LT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_643

    goto/16 :goto_11

    :cond_643
    const/16 v0, 0x7d

    goto/16 :goto_d0a

    :sswitch_647
    const-string v0, "LS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_651

    goto/16 :goto_11

    :cond_651
    const/16 v0, 0x7c

    goto/16 :goto_d0a

    :sswitch_655
    const-string v0, "LR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65f

    goto/16 :goto_11

    :cond_65f
    const/16 v0, 0x7b

    goto/16 :goto_d0a

    :sswitch_663
    const-string v0, "LK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66d

    goto/16 :goto_11

    :cond_66d
    const/16 v0, 0x7a

    goto/16 :goto_d0a

    :sswitch_671
    const-string v0, "LI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67b

    goto/16 :goto_11

    :cond_67b
    const/16 v0, 0x79

    goto/16 :goto_d0a

    :sswitch_67f
    const-string v0, "LC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_689

    goto/16 :goto_11

    :cond_689
    const/16 v0, 0x78

    goto/16 :goto_d0a

    :sswitch_68d
    const-string v0, "LB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_697

    goto/16 :goto_11

    :cond_697
    const/16 v0, 0x77

    goto/16 :goto_d0a

    :sswitch_69b
    const-string v0, "LA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a5

    goto/16 :goto_11

    :cond_6a5
    const/16 v0, 0x76

    goto/16 :goto_d0a

    :sswitch_6a9
    const-string v0, "KZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b3

    goto/16 :goto_11

    :cond_6b3
    const/16 v0, 0x75

    goto/16 :goto_d0a

    :sswitch_6b7
    const-string v0, "KY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c1

    goto/16 :goto_11

    :cond_6c1
    const/16 v0, 0x74

    goto/16 :goto_d0a

    :sswitch_6c5
    const-string v0, "KW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6cf

    goto/16 :goto_11

    :cond_6cf
    const/16 v0, 0x73

    goto/16 :goto_d0a

    :sswitch_6d3
    const-string v0, "KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6dd

    goto/16 :goto_11

    :cond_6dd
    const/16 v0, 0x72

    goto/16 :goto_d0a

    :sswitch_6e1
    const-string v0, "KN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6eb

    goto/16 :goto_11

    :cond_6eb
    const/16 v0, 0x71

    goto/16 :goto_d0a

    :sswitch_6ef
    const-string v0, "KM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f9

    goto/16 :goto_11

    :cond_6f9
    const/16 v0, 0x70

    goto/16 :goto_d0a

    :sswitch_6fd
    const-string v0, "KI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_707

    goto/16 :goto_11

    :cond_707
    const/16 v0, 0x6f

    goto/16 :goto_d0a

    :sswitch_70b
    const-string v0, "KH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_715

    goto/16 :goto_11

    :cond_715
    const/16 v0, 0x6e

    goto/16 :goto_d0a

    :sswitch_719
    const-string v0, "KG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_723

    goto/16 :goto_11

    :cond_723
    const/16 v0, 0x6d

    goto/16 :goto_d0a

    :sswitch_727
    const-string v0, "KE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_731

    goto/16 :goto_11

    :cond_731
    const/16 v0, 0x6c

    goto/16 :goto_d0a

    :sswitch_735
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73f

    goto/16 :goto_11

    :cond_73f
    const/16 v0, 0x6b

    goto/16 :goto_d0a

    :sswitch_743
    const-string v0, "JO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74d

    goto/16 :goto_11

    :cond_74d
    const/16 v0, 0x6a

    goto/16 :goto_d0a

    :sswitch_751
    const-string v0, "JM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75b

    goto/16 :goto_11

    :cond_75b
    const/16 v0, 0x69

    goto/16 :goto_d0a

    :sswitch_75f
    const-string v0, "JE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_769

    goto/16 :goto_11

    :cond_769
    const/16 v0, 0x68

    goto/16 :goto_d0a

    :sswitch_76d
    const-string v0, "IT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_777

    goto/16 :goto_11

    :cond_777
    const/16 v0, 0x67

    goto/16 :goto_d0a

    :sswitch_77b
    const-string v0, "IS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_785

    goto/16 :goto_11

    :cond_785
    const/16 v0, 0x66

    goto/16 :goto_d0a

    :sswitch_789
    const-string v0, "IR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_793

    goto/16 :goto_11

    :cond_793
    const/16 v0, 0x65

    goto/16 :goto_d0a

    :sswitch_797
    const-string v0, "IQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a1

    goto/16 :goto_11

    :cond_7a1
    const/16 v0, 0x64

    goto/16 :goto_d0a

    :sswitch_7a5
    const-string v0, "IO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7af

    goto/16 :goto_11

    :cond_7af
    const/16 v0, 0x63

    goto/16 :goto_d0a

    :sswitch_7b3
    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7bd

    goto/16 :goto_11

    :cond_7bd
    const/16 v0, 0x62

    goto/16 :goto_d0a

    :sswitch_7c1
    const-string v0, "IM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7cb

    goto/16 :goto_11

    :cond_7cb
    const/16 v0, 0x61

    goto/16 :goto_d0a

    :sswitch_7cf
    const-string v0, "IL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d9

    goto/16 :goto_11

    :cond_7d9
    const/16 v0, 0x60

    goto/16 :goto_d0a

    :sswitch_7dd
    const-string v0, "IE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e7

    goto/16 :goto_11

    :cond_7e7
    const/16 v0, 0x5f

    goto/16 :goto_d0a

    :sswitch_7eb
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f5

    goto/16 :goto_11

    :cond_7f5
    const/16 v0, 0x5e

    goto/16 :goto_d0a

    :sswitch_7f9
    const-string v0, "HU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_803

    goto/16 :goto_11

    :cond_803
    const/16 v0, 0x5d

    goto/16 :goto_d0a

    :sswitch_807
    const-string v0, "HT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_811

    goto/16 :goto_11

    :cond_811
    const/16 v0, 0x5c

    goto/16 :goto_d0a

    :sswitch_815
    const-string v0, "HR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81f

    goto/16 :goto_11

    :cond_81f
    const/16 v0, 0x5b

    goto/16 :goto_d0a

    :sswitch_823
    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82d

    goto/16 :goto_11

    :cond_82d
    const/16 v0, 0x5a

    goto/16 :goto_d0a

    :sswitch_831
    const-string v0, "GY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83b

    goto/16 :goto_11

    :cond_83b
    const/16 v0, 0x59

    goto/16 :goto_d0a

    :sswitch_83f
    const-string v0, "GW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_849

    goto/16 :goto_11

    :cond_849
    const/16 v0, 0x58

    goto/16 :goto_d0a

    :sswitch_84d
    const-string v0, "GU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_857

    goto/16 :goto_11

    :cond_857
    const/16 v0, 0x57

    goto/16 :goto_d0a

    :sswitch_85b
    const-string v0, "GT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_865

    goto/16 :goto_11

    :cond_865
    const/16 v0, 0x56

    goto/16 :goto_d0a

    :sswitch_869
    const-string v0, "GR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_873

    goto/16 :goto_11

    :cond_873
    const/16 v0, 0x55

    goto/16 :goto_d0a

    :sswitch_877
    const-string v0, "GQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_881

    goto/16 :goto_11

    :cond_881
    const/16 v0, 0x54

    goto/16 :goto_d0a

    :sswitch_885
    const-string v0, "GP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88f

    goto/16 :goto_11

    :cond_88f
    const/16 v0, 0x53

    goto/16 :goto_d0a

    :sswitch_893
    const-string v0, "GN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89d

    goto/16 :goto_11

    :cond_89d
    const/16 v0, 0x52

    goto/16 :goto_d0a

    :sswitch_8a1
    const-string v0, "GM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8ab

    goto/16 :goto_11

    :cond_8ab
    const/16 v0, 0x51

    goto/16 :goto_d0a

    :sswitch_8af
    const-string v0, "GL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b9

    goto/16 :goto_11

    :cond_8b9
    const/16 v0, 0x50

    goto/16 :goto_d0a

    :sswitch_8bd
    const-string v0, "GI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c7

    goto/16 :goto_11

    :cond_8c7
    const/16 v0, 0x4f

    goto/16 :goto_d0a

    :sswitch_8cb
    const-string v0, "GH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d5

    goto/16 :goto_11

    :cond_8d5
    const/16 v0, 0x4e

    goto/16 :goto_d0a

    :sswitch_8d9
    const-string v0, "GG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e3

    goto/16 :goto_11

    :cond_8e3
    const/16 v0, 0x4d

    goto/16 :goto_d0a

    :sswitch_8e7
    const-string v0, "GF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f1

    goto/16 :goto_11

    :cond_8f1
    const/16 v0, 0x4c

    goto/16 :goto_d0a

    :sswitch_8f5
    const-string v0, "GE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8ff

    goto/16 :goto_11

    :cond_8ff
    const/16 v0, 0x4b

    goto/16 :goto_d0a

    :sswitch_903
    const-string v0, "GD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90d

    goto/16 :goto_11

    :cond_90d
    const/16 v0, 0x4a

    goto/16 :goto_d0a

    :sswitch_911
    const-string v0, "GB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91b

    goto/16 :goto_11

    :cond_91b
    const/16 v0, 0x49

    goto/16 :goto_d0a

    :sswitch_91f
    const-string v0, "GA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_929

    goto/16 :goto_11

    :cond_929
    const/16 v0, 0x48

    goto/16 :goto_d0a

    :sswitch_92d
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_937

    goto/16 :goto_11

    :cond_937
    const/16 v0, 0x47

    goto/16 :goto_d0a

    :sswitch_93b
    const-string v0, "FO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_945

    goto/16 :goto_11

    :cond_945
    const/16 v0, 0x46

    goto/16 :goto_d0a

    :sswitch_949
    const-string v0, "FM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_953

    goto/16 :goto_11

    :cond_953
    const/16 v0, 0x45

    goto/16 :goto_d0a

    :sswitch_957
    const-string v0, "FK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_961

    goto/16 :goto_11

    :cond_961
    const/16 v0, 0x44

    goto/16 :goto_d0a

    :sswitch_965
    const-string v0, "FJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96f

    goto/16 :goto_11

    :cond_96f
    const/16 v0, 0x43

    goto/16 :goto_d0a

    :sswitch_973
    const-string v0, "FI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97d

    goto/16 :goto_11

    :cond_97d
    const/16 v0, 0x42

    goto/16 :goto_d0a

    :sswitch_981
    const-string v0, "ET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98b

    goto/16 :goto_11

    :cond_98b
    const/16 v0, 0x41

    goto/16 :goto_d0a

    :sswitch_98f
    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_999

    goto/16 :goto_11

    :cond_999
    const/16 v0, 0x40

    goto/16 :goto_d0a

    :sswitch_99d
    const-string v0, "ER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a7

    goto/16 :goto_11

    :cond_9a7
    const/16 v0, 0x3f

    goto/16 :goto_d0a

    :sswitch_9ab
    const-string v0, "EG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b5

    goto/16 :goto_11

    :cond_9b5
    const/16 v0, 0x3e

    goto/16 :goto_d0a

    :sswitch_9b9
    const-string v0, "EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c3

    goto/16 :goto_11

    :cond_9c3
    const/16 v0, 0x3d

    goto/16 :goto_d0a

    :sswitch_9c7
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d1

    goto/16 :goto_11

    :cond_9d1
    const/16 v0, 0x3c

    goto/16 :goto_d0a

    :sswitch_9d5
    const-string v0, "DZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9df

    goto/16 :goto_11

    :cond_9df
    const/16 v0, 0x3b

    goto/16 :goto_d0a

    :sswitch_9e3
    const-string v0, "DO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9ed

    goto/16 :goto_11

    :cond_9ed
    const/16 v0, 0x3a

    goto/16 :goto_d0a

    :sswitch_9f1
    const-string v0, "DM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9fb

    goto/16 :goto_11

    :cond_9fb
    const/16 v0, 0x39

    goto/16 :goto_d0a

    :sswitch_9ff
    const-string v0, "DK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a09

    goto/16 :goto_11

    :cond_a09
    const/16 v0, 0x38

    goto/16 :goto_d0a

    :sswitch_a0d
    const-string v0, "DJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a17

    goto/16 :goto_11

    :cond_a17
    const/16 v0, 0x37

    goto/16 :goto_d0a

    :sswitch_a1b
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a25

    goto/16 :goto_11

    :cond_a25
    const/16 v0, 0x36

    goto/16 :goto_d0a

    :sswitch_a29
    const-string v0, "CZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a33

    goto/16 :goto_11

    :cond_a33
    const/16 v0, 0x35

    goto/16 :goto_d0a

    :sswitch_a37
    const-string v0, "CY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a41

    goto/16 :goto_11

    :cond_a41
    const/16 v0, 0x34

    goto/16 :goto_d0a

    :sswitch_a45
    const-string v0, "CX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4f

    goto/16 :goto_11

    :cond_a4f
    const/16 v0, 0x33

    goto/16 :goto_d0a

    :sswitch_a53
    const-string v0, "CW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5d

    goto/16 :goto_11

    :cond_a5d
    const/16 v0, 0x32

    goto/16 :goto_d0a

    :sswitch_a61
    const-string v0, "CV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6b

    goto/16 :goto_11

    :cond_a6b
    const/16 v0, 0x31

    goto/16 :goto_d0a

    :sswitch_a6f
    const-string v0, "CU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a79

    goto/16 :goto_11

    :cond_a79
    const/16 v0, 0x30

    goto/16 :goto_d0a

    :sswitch_a7d
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a87

    goto/16 :goto_11

    :cond_a87
    const/16 v0, 0x2f

    goto/16 :goto_d0a

    :sswitch_a8b
    const-string v0, "CO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a95

    goto/16 :goto_11

    :cond_a95
    const/16 v0, 0x2e

    goto/16 :goto_d0a

    :sswitch_a99
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa3

    goto/16 :goto_11

    :cond_aa3
    const/16 v0, 0x2d

    goto/16 :goto_d0a

    :sswitch_aa7
    const-string v0, "CM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab1

    goto/16 :goto_11

    :cond_ab1
    const/16 v0, 0x2c

    goto/16 :goto_d0a

    :sswitch_ab5
    const-string v0, "CL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_abf

    goto/16 :goto_11

    :cond_abf
    const/16 v0, 0x2b

    goto/16 :goto_d0a

    :sswitch_ac3
    const-string v0, "CK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_acd

    goto/16 :goto_11

    :cond_acd
    const/16 v0, 0x2a

    goto/16 :goto_d0a

    :sswitch_ad1
    const-string v0, "CI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_adb

    goto/16 :goto_11

    :cond_adb
    const/16 v0, 0x29

    goto/16 :goto_d0a

    :sswitch_adf
    const-string v0, "CH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ae9

    goto/16 :goto_11

    :cond_ae9
    const/16 v0, 0x28

    goto/16 :goto_d0a

    :sswitch_aed
    const-string v0, "CG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af7

    goto/16 :goto_11

    :cond_af7
    const/16 v0, 0x27

    goto/16 :goto_d0a

    :sswitch_afb
    const-string v0, "CF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b05

    goto/16 :goto_11

    :cond_b05
    const/16 v0, 0x26

    goto/16 :goto_d0a

    :sswitch_b09
    const-string v0, "CD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b13

    goto/16 :goto_11

    :cond_b13
    const/16 v0, 0x25

    goto/16 :goto_d0a

    :sswitch_b17
    const-string v0, "CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b21

    goto/16 :goto_11

    :cond_b21
    const/16 v0, 0x24

    goto/16 :goto_d0a

    :sswitch_b25
    const-string v0, "BZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2f

    goto/16 :goto_11

    :cond_b2f
    const/16 v0, 0x23

    goto/16 :goto_d0a

    :sswitch_b33
    const-string v0, "BY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3d

    goto/16 :goto_11

    :cond_b3d
    const/16 v0, 0x22

    goto/16 :goto_d0a

    :sswitch_b41
    const-string v0, "BW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4b

    goto/16 :goto_11

    :cond_b4b
    const/16 v0, 0x21

    goto/16 :goto_d0a

    :sswitch_b4f
    const-string v0, "BT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b59

    goto/16 :goto_11

    :cond_b59
    const/16 v0, 0x20

    goto/16 :goto_d0a

    :sswitch_b5d
    const-string v0, "BS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b67

    goto/16 :goto_11

    :cond_b67
    const/16 v0, 0x1f

    goto/16 :goto_d0a

    :sswitch_b6b
    const-string v0, "BR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b75

    goto/16 :goto_11

    :cond_b75
    const/16 v0, 0x1e

    goto/16 :goto_d0a

    :sswitch_b79
    const-string v0, "BQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b83

    goto/16 :goto_11

    :cond_b83
    const/16 v0, 0x1d

    goto/16 :goto_d0a

    :sswitch_b87
    const-string v0, "BO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b91

    goto/16 :goto_11

    :cond_b91
    const/16 v0, 0x1c

    goto/16 :goto_d0a

    :sswitch_b95
    const-string v0, "BN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9f

    goto/16 :goto_11

    :cond_b9f
    const/16 v0, 0x1b

    goto/16 :goto_d0a

    :sswitch_ba3
    const-string v0, "BM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bad

    goto/16 :goto_11

    :cond_bad
    const/16 v0, 0x1a

    goto/16 :goto_d0a

    :sswitch_bb1
    const-string v0, "BL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bbb

    goto/16 :goto_11

    :cond_bbb
    const/16 v0, 0x19

    goto/16 :goto_d0a

    :sswitch_bbf
    const-string v0, "BJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc9

    goto/16 :goto_11

    :cond_bc9
    const/16 v0, 0x18

    goto/16 :goto_d0a

    :sswitch_bcd
    const-string v0, "BI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd7

    goto/16 :goto_11

    :cond_bd7
    const/16 v0, 0x17

    goto/16 :goto_d0a

    :sswitch_bdb
    const-string v0, "BH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be5

    goto/16 :goto_11

    :cond_be5
    const/16 v0, 0x16

    goto/16 :goto_d0a

    :sswitch_be9
    const-string v0, "BG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf3

    goto/16 :goto_11

    :cond_bf3
    const/16 v0, 0x15

    goto/16 :goto_d0a

    :sswitch_bf7
    const-string v0, "BF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c01

    goto/16 :goto_11

    :cond_c01
    const/16 v0, 0x14

    goto/16 :goto_d0a

    :sswitch_c05
    const-string v0, "BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0f

    goto/16 :goto_11

    :cond_c0f
    const/16 v0, 0x13

    goto/16 :goto_d0a

    :sswitch_c13
    const-string v0, "BD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1d

    goto/16 :goto_11

    :cond_c1d
    const/16 v0, 0x12

    goto/16 :goto_d0a

    :sswitch_c21
    const-string v0, "BB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2b

    goto/16 :goto_11

    :cond_c2b
    const/16 v0, 0x11

    goto/16 :goto_d0a

    :sswitch_c2f
    const-string v0, "BA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c39

    goto/16 :goto_11

    :cond_c39
    const/16 v0, 0x10

    goto/16 :goto_d0a

    :sswitch_c3d
    const-string v0, "AZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c47

    goto/16 :goto_11

    :cond_c47
    const/16 v0, 0xf

    goto/16 :goto_d0a

    :sswitch_c4b
    const-string v0, "AX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c55

    goto/16 :goto_11

    :cond_c55
    const/16 v0, 0xe

    goto/16 :goto_d0a

    :sswitch_c59
    const-string v0, "AW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c63

    goto/16 :goto_11

    :cond_c63
    const/16 v0, 0xd

    goto/16 :goto_d0a

    :sswitch_c67
    const-string v0, "AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c71

    goto/16 :goto_11

    :cond_c71
    const/16 v0, 0xc

    goto/16 :goto_d0a

    :sswitch_c75
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7f

    goto/16 :goto_11

    :cond_c7f
    const/16 v0, 0xb

    goto/16 :goto_d0a

    :sswitch_c83
    const-string v0, "AS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8d

    goto/16 :goto_11

    :cond_c8d
    const/16 v0, 0xa

    goto/16 :goto_d0a

    :sswitch_c91
    const-string v0, "AR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9b

    goto/16 :goto_11

    :cond_c9b
    const/16 v0, 0x9

    goto/16 :goto_d0a

    :sswitch_c9f
    const-string v0, "AQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ca9

    goto/16 :goto_11

    :cond_ca9
    const/16 v0, 0x8

    goto/16 :goto_d0a

    :sswitch_cad
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb7

    goto/16 :goto_11

    :cond_cb7
    const/4 v0, 0x7

    goto :goto_d0a

    :sswitch_cb9
    const-string v0, "AM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc3

    goto/16 :goto_11

    :cond_cc3
    move v0, v3

    goto :goto_d0a

    :sswitch_cc5
    const-string v0, "AL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ccf

    goto/16 :goto_11

    :cond_ccf
    const/4 v0, 0x5

    goto :goto_d0a

    :sswitch_cd1
    const-string v1, "AI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0a

    goto/16 :goto_11

    :sswitch_cdb
    const-string v0, "AG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce5

    goto/16 :goto_11

    :cond_ce5
    move v0, v2

    goto :goto_d0a

    :sswitch_ce7
    const-string v0, "AF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf1

    goto/16 :goto_11

    :cond_cf1
    move v0, v5

    goto :goto_d0a

    :sswitch_cf3
    const-string v0, "AE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cfd

    goto/16 :goto_11

    :cond_cfd
    move v0, v4

    goto :goto_d0a

    :sswitch_cff
    const-string v0, "AD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d09

    goto/16 :goto_11

    :cond_d09
    move v0, v1

    :cond_d0a
    :goto_d0a
    packed-switch v0, :pswitch_data_14b0

    .line 924
    new-array p0, v3, [I

    fill-array-data p0, :array_1692

    return-object p0

    .line 919
    :pswitch_d13
    new-array p0, v3, [I

    fill-array-data p0, :array_16a2

    return-object p0

    .line 917
    :pswitch_d19
    new-array p0, v3, [I

    fill-array-data p0, :array_16b2

    return-object p0

    .line 905
    :pswitch_d1f
    new-array p0, v3, [I

    fill-array-data p0, :array_16c2

    return-object p0

    .line 892
    :pswitch_d25
    new-array p0, v3, [I

    fill-array-data p0, :array_16d2

    return-object p0

    .line 890
    :pswitch_d2b
    new-array p0, v3, [I

    fill-array-data p0, :array_16e2

    return-object p0

    .line 888
    :pswitch_d31
    new-array p0, v3, [I

    fill-array-data p0, :array_16f2

    return-object p0

    .line 867
    :pswitch_d37
    new-array p0, v3, [I

    fill-array-data p0, :array_1702

    return-object p0

    .line 865
    :pswitch_d3d
    new-array p0, v3, [I

    fill-array-data p0, :array_1712

    return-object p0

    .line 863
    :pswitch_d43
    new-array p0, v3, [I

    fill-array-data p0, :array_1722

    return-object p0

    .line 861
    :pswitch_d49
    new-array p0, v3, [I

    fill-array-data p0, :array_1732

    return-object p0

    .line 856
    :pswitch_d4f
    new-array p0, v3, [I

    fill-array-data p0, :array_1742

    return-object p0

    .line 854
    :pswitch_d55
    new-array p0, v3, [I

    fill-array-data p0, :array_1752

    return-object p0

    .line 852
    :pswitch_d5b
    new-array p0, v3, [I

    fill-array-data p0, :array_1762

    return-object p0

    .line 846
    :pswitch_d61
    new-array p0, v3, [I

    fill-array-data p0, :array_1772

    return-object p0

    .line 844
    :pswitch_d67
    new-array p0, v3, [I

    fill-array-data p0, :array_1782

    return-object p0

    .line 831
    :pswitch_d6d
    new-array p0, v3, [I

    fill-array-data p0, :array_1792

    return-object p0

    .line 824
    :pswitch_d73
    new-array p0, v3, [I

    fill-array-data p0, :array_17a2

    return-object p0

    .line 819
    :pswitch_d79
    new-array p0, v3, [I

    fill-array-data p0, :array_17b2

    return-object p0

    .line 817
    :pswitch_d7f
    new-array p0, v3, [I

    fill-array-data p0, :array_17c2

    return-object p0

    .line 812
    :pswitch_d85
    new-array p0, v3, [I

    fill-array-data p0, :array_17d2

    return-object p0

    .line 810
    :pswitch_d8b
    new-array p0, v3, [I

    fill-array-data p0, :array_17e2

    return-object p0

    .line 808
    :pswitch_d91
    new-array p0, v3, [I

    fill-array-data p0, :array_17f2

    return-object p0

    .line 801
    :pswitch_d97
    new-array p0, v3, [I

    fill-array-data p0, :array_1802

    return-object p0

    .line 785
    :pswitch_d9d
    new-array p0, v3, [I

    fill-array-data p0, :array_1812

    return-object p0

    .line 922
    :pswitch_da3
    new-array p0, v3, [I

    fill-array-data p0, :array_1822

    return-object p0

    .line 775
    :pswitch_da9
    new-array p0, v3, [I

    fill-array-data p0, :array_1832

    return-object p0

    .line 773
    :pswitch_daf
    new-array p0, v3, [I

    fill-array-data p0, :array_1842

    return-object p0

    .line 771
    :pswitch_db5
    new-array p0, v3, [I

    fill-array-data p0, :array_1852

    return-object p0

    .line 769
    :pswitch_dbb
    new-array p0, v3, [I

    fill-array-data p0, :array_1862

    return-object p0

    .line 767
    :pswitch_dc1
    new-array p0, v3, [I

    fill-array-data p0, :array_1872

    return-object p0

    .line 765
    :pswitch_dc7
    new-array p0, v3, [I

    fill-array-data p0, :array_1882

    return-object p0

    .line 763
    :pswitch_dcd
    new-array p0, v3, [I

    fill-array-data p0, :array_1892

    return-object p0

    .line 757
    :pswitch_dd3
    new-array p0, v3, [I

    fill-array-data p0, :array_18a2

    return-object p0

    .line 755
    :pswitch_dd9
    new-array p0, v3, [I

    fill-array-data p0, :array_18b2

    return-object p0

    .line 753
    :pswitch_ddf
    new-array p0, v3, [I

    fill-array-data p0, :array_18c2

    return-object p0

    .line 751
    :pswitch_de5
    new-array p0, v3, [I

    fill-array-data p0, :array_18d2

    return-object p0

    .line 749
    :pswitch_deb
    new-array p0, v3, [I

    fill-array-data p0, :array_18e2

    return-object p0

    .line 747
    :pswitch_df1
    new-array p0, v3, [I

    fill-array-data p0, :array_18f2

    return-object p0

    .line 742
    :pswitch_df7
    new-array p0, v3, [I

    fill-array-data p0, :array_1902

    return-object p0

    .line 740
    :pswitch_dfd
    new-array p0, v3, [I

    fill-array-data p0, :array_1912

    return-object p0

    .line 735
    :pswitch_e03
    new-array p0, v3, [I

    fill-array-data p0, :array_1922

    return-object p0

    .line 733
    :pswitch_e09
    new-array p0, v3, [I

    fill-array-data p0, :array_1932

    return-object p0

    .line 731
    :pswitch_e0f
    new-array p0, v3, [I

    fill-array-data p0, :array_1942

    return-object p0

    .line 729
    :pswitch_e15
    new-array p0, v3, [I

    fill-array-data p0, :array_1952

    return-object p0

    .line 727
    :pswitch_e1b
    new-array p0, v3, [I

    fill-array-data p0, :array_1962

    return-object p0

    .line 722
    :pswitch_e21
    new-array p0, v3, [I

    fill-array-data p0, :array_1972

    return-object p0

    .line 915
    :pswitch_e27
    new-array p0, v3, [I

    fill-array-data p0, :array_1982

    return-object p0

    .line 720
    :pswitch_e2d
    new-array p0, v3, [I

    fill-array-data p0, :array_1992

    return-object p0

    .line 903
    :pswitch_e33
    new-array p0, v3, [I

    fill-array-data p0, :array_19a2

    return-object p0

    .line 718
    :pswitch_e39
    new-array p0, v3, [I

    fill-array-data p0, :array_19b2

    return-object p0

    .line 716
    :pswitch_e3f
    new-array p0, v3, [I

    fill-array-data p0, :array_19c2

    return-object p0

    .line 714
    :pswitch_e45
    new-array p0, v3, [I

    fill-array-data p0, :array_19d2

    return-object p0

    .line 712
    :pswitch_e4b
    new-array p0, v3, [I

    fill-array-data p0, :array_19e2

    return-object p0

    .line 710
    :pswitch_e51
    new-array p0, v3, [I

    fill-array-data p0, :array_19f2

    return-object p0

    .line 705
    :pswitch_e57
    new-array p0, v3, [I

    fill-array-data p0, :array_1a02

    return-object p0

    .line 703
    :pswitch_e5d
    new-array p0, v3, [I

    fill-array-data p0, :array_1a12

    return-object p0

    .line 701
    :pswitch_e63
    new-array p0, v3, [I

    fill-array-data p0, :array_1a22

    return-object p0

    .line 693
    :pswitch_e69
    new-array p0, v3, [I

    fill-array-data p0, :array_1a32

    return-object p0

    .line 900
    :pswitch_e6f
    new-array p0, v3, [I

    fill-array-data p0, :array_1a42

    return-object p0

    .line 687
    :pswitch_e75
    new-array p0, v3, [I

    fill-array-data p0, :array_1a52

    return-object p0

    .line 685
    :pswitch_e7b
    new-array p0, v3, [I

    fill-array-data p0, :array_1a62

    return-object p0

    .line 683
    :pswitch_e81
    new-array p0, v3, [I

    fill-array-data p0, :array_1a72

    return-object p0

    .line 678
    :pswitch_e87
    new-array p0, v3, [I

    fill-array-data p0, :array_1a82

    return-object p0

    .line 676
    :pswitch_e8d
    new-array p0, v3, [I

    fill-array-data p0, :array_1a92

    return-object p0

    .line 674
    :pswitch_e93
    new-array p0, v3, [I

    fill-array-data p0, :array_1aa2

    return-object p0

    .line 745
    :pswitch_e99
    new-array p0, v3, [I

    fill-array-data p0, :array_1ab2

    return-object p0

    .line 699
    :pswitch_e9f
    new-array p0, v3, [I

    fill-array-data p0, :array_1ac2

    return-object p0

    .line 669
    :pswitch_ea5
    new-array p0, v3, [I

    fill-array-data p0, :array_1ad2

    return-object p0

    .line 667
    :pswitch_eab
    new-array p0, v3, [I

    fill-array-data p0, :array_1ae2

    return-object p0

    .line 665
    :pswitch_eb1
    new-array p0, v3, [I

    fill-array-data p0, :array_1af2

    return-object p0

    .line 663
    :pswitch_eb7
    new-array p0, v3, [I

    fill-array-data p0, :array_1b02

    return-object p0

    .line 658
    :pswitch_ebd
    new-array p0, v3, [I

    fill-array-data p0, :array_1b12

    return-object p0

    .line 895
    :pswitch_ec3
    new-array p0, v3, [I

    fill-array-data p0, :array_1b22

    return-object p0

    .line 656
    :pswitch_ec9
    new-array p0, v3, [I

    fill-array-data p0, :array_1b32

    return-object p0

    .line 654
    :pswitch_ecf
    new-array p0, v3, [I

    fill-array-data p0, :array_1b42

    return-object p0

    .line 652
    :pswitch_ed5
    new-array p0, v3, [I

    fill-array-data p0, :array_1b52

    return-object p0

    .line 650
    :pswitch_edb
    new-array p0, v3, [I

    fill-array-data p0, :array_1b62

    return-object p0

    .line 648
    :pswitch_ee1
    new-array p0, v3, [I

    fill-array-data p0, :array_1b72

    return-object p0

    .line 642
    :pswitch_ee7
    new-array p0, v3, [I

    fill-array-data p0, :array_1b82

    return-object p0

    .line 640
    :pswitch_eed
    new-array p0, v3, [I

    fill-array-data p0, :array_1b92

    return-object p0

    .line 638
    :pswitch_ef3
    new-array p0, v3, [I

    fill-array-data p0, :array_1ba2

    return-object p0

    .line 636
    :pswitch_ef9
    new-array p0, v3, [I

    fill-array-data p0, :array_1bb2

    return-object p0

    .line 634
    :pswitch_eff
    new-array p0, v3, [I

    fill-array-data p0, :array_1bc2

    return-object p0

    .line 632
    :pswitch_f05
    new-array p0, v3, [I

    fill-array-data p0, :array_1bd2

    return-object p0

    .line 630
    :pswitch_f0b
    new-array p0, v3, [I

    fill-array-data p0, :array_1be2

    return-object p0

    .line 628
    :pswitch_f11
    new-array p0, v3, [I

    fill-array-data p0, :array_1bf2

    return-object p0

    .line 661
    :pswitch_f17
    new-array p0, v3, [I

    fill-array-data p0, :array_1c02

    return-object p0

    .line 626
    :pswitch_f1d
    new-array p0, v3, [I

    fill-array-data p0, :array_1c12

    return-object p0

    .line 624
    :pswitch_f23
    new-array p0, v3, [I

    fill-array-data p0, :array_1c22

    return-object p0

    .line 622
    :pswitch_f29
    new-array p0, v3, [I

    fill-array-data p0, :array_1c32

    return-object p0

    .line 620
    :pswitch_f2f
    new-array p0, v3, [I

    fill-array-data p0, :array_1c42

    return-object p0

    .line 618
    :pswitch_f35
    new-array p0, v3, [I

    fill-array-data p0, :array_1c52

    return-object p0

    .line 616
    :pswitch_f3b
    new-array p0, v3, [I

    fill-array-data p0, :array_1c62

    return-object p0

    .line 614
    :pswitch_f41
    new-array p0, v3, [I

    fill-array-data p0, :array_1c72

    return-object p0

    .line 612
    :pswitch_f47
    new-array p0, v3, [I

    fill-array-data p0, :array_1c82

    return-object p0

    .line 815
    :pswitch_f4d
    new-array p0, v3, [I

    fill-array-data p0, :array_1c92

    return-object p0

    .line 681
    :pswitch_f53
    new-array p0, v3, [I

    fill-array-data p0, :array_1ca2

    return-object p0

    .line 646
    :pswitch_f59
    new-array p0, v3, [I

    fill-array-data p0, :array_1cb2

    return-object p0

    .line 610
    :pswitch_f5f
    new-array p0, v3, [I

    fill-array-data p0, :array_1cc2

    return-object p0

    .line 608
    :pswitch_f65
    new-array p0, v3, [I

    fill-array-data p0, :array_1cd2

    return-object p0

    .line 606
    :pswitch_f6b
    new-array p0, v3, [I

    fill-array-data p0, :array_1ce2

    return-object p0

    .line 604
    :pswitch_f71
    new-array p0, v3, [I

    fill-array-data p0, :array_1cf2

    return-object p0

    .line 602
    :pswitch_f77
    new-array p0, v3, [I

    fill-array-data p0, :array_1d02

    return-object p0

    .line 600
    :pswitch_f7d
    new-array p0, v3, [I

    fill-array-data p0, :array_1d12

    return-object p0

    .line 598
    :pswitch_f83
    new-array p0, v3, [I

    fill-array-data p0, :array_1d22

    return-object p0

    .line 596
    :pswitch_f89
    new-array p0, v3, [I

    fill-array-data p0, :array_1d32

    return-object p0

    .line 594
    :pswitch_f8f
    new-array p0, v3, [I

    fill-array-data p0, :array_1d42

    return-object p0

    .line 592
    :pswitch_f95
    new-array p0, v3, [I

    fill-array-data p0, :array_1d52

    return-object p0

    .line 799
    :pswitch_f9b
    new-array p0, v3, [I

    fill-array-data p0, :array_1d62

    return-object p0

    .line 590
    :pswitch_fa1
    new-array p0, v3, [I

    fill-array-data p0, :array_1d72

    return-object p0

    .line 588
    :pswitch_fa7
    new-array p0, v3, [I

    fill-array-data p0, :array_1d82

    return-object p0

    .line 586
    :pswitch_fad
    new-array p0, v3, [I

    fill-array-data p0, :array_1d92

    return-object p0

    .line 584
    :pswitch_fb3
    new-array p0, v3, [I

    fill-array-data p0, :array_1da2

    return-object p0

    .line 582
    :pswitch_fb9
    new-array p0, v3, [I

    fill-array-data p0, :array_1db2

    return-object p0

    .line 837
    :pswitch_fbf
    new-array p0, v3, [I

    fill-array-data p0, :array_1dc2

    return-object p0

    .line 672
    :pswitch_fc5
    new-array p0, v3, [I

    fill-array-data p0, :array_1dd2

    return-object p0

    .line 580
    :pswitch_fcb
    new-array p0, v3, [I

    fill-array-data p0, :array_1de2

    return-object p0

    .line 578
    :pswitch_fd1
    new-array p0, v3, [I

    fill-array-data p0, :array_1df2

    return-object p0

    .line 576
    :pswitch_fd7
    new-array p0, v3, [I

    fill-array-data p0, :array_1e02

    return-object p0

    .line 574
    :pswitch_fdd
    new-array p0, v3, [I

    fill-array-data p0, :array_1e12

    return-object p0

    .line 572
    :pswitch_fe3
    new-array p0, v3, [I

    fill-array-data p0, :array_1e22

    return-object p0

    .line 842
    :pswitch_fe9
    new-array p0, v3, [I

    fill-array-data p0, :array_1e32

    return-object p0

    .line 725
    :pswitch_fef
    new-array p0, v3, [I

    fill-array-data p0, :array_1e42

    return-object p0

    .line 570
    :pswitch_ff5
    new-array p0, v3, [I

    fill-array-data p0, :array_1e52

    return-object p0

    .line 568
    :pswitch_ffb
    new-array p0, v3, [I

    fill-array-data p0, :array_1e62

    return-object p0

    .line 708
    :pswitch_1001
    new-array p0, v3, [I

    fill-array-data p0, :array_1e72

    return-object p0

    .line 834
    :pswitch_1007
    new-array p0, v3, [I

    fill-array-data p0, :array_1e82

    return-object p0

    .line 560
    :pswitch_100d
    new-array p0, v3, [I

    fill-array-data p0, :array_1e92

    return-object p0

    .line 691
    :pswitch_1013
    new-array p0, v3, [I

    fill-array-data p0, :array_1ea2

    return-object p0

    .line 558
    :pswitch_1019
    new-array p0, v3, [I

    fill-array-data p0, :array_1eb2

    return-object p0

    .line 696
    :pswitch_101f
    new-array p0, v3, [I

    fill-array-data p0, :array_1ec2

    return-object p0

    .line 859
    :pswitch_1025
    new-array p0, v3, [I

    fill-array-data p0, :array_1ed2

    return-object p0

    .line 566
    :pswitch_102b
    new-array p0, v3, [I

    fill-array-data p0, :array_1ee2

    return-object p0

    .line 556
    :pswitch_1031
    new-array p0, v3, [I

    fill-array-data p0, :array_1ef2

    return-object p0

    .line 554
    :pswitch_1037
    new-array p0, v3, [I

    fill-array-data p0, :array_1f02

    return-object p0

    .line 552
    :pswitch_103d
    new-array p0, v3, [I

    fill-array-data p0, :array_1f12

    return-object p0

    .line 550
    :pswitch_1043
    new-array p0, v3, [I

    fill-array-data p0, :array_1f22

    return-object p0

    .line 548
    :pswitch_1049
    new-array p0, v3, [I

    fill-array-data p0, :array_1f32

    return-object p0

    .line 546
    :pswitch_104f
    new-array p0, v3, [I

    fill-array-data p0, :array_1f42

    return-object p0

    .line 544
    :pswitch_1055
    new-array p0, v3, [I

    fill-array-data p0, :array_1f52

    return-object p0

    .line 542
    :pswitch_105b
    new-array p0, v3, [I

    fill-array-data p0, :array_1f62

    return-object p0

    .line 761
    :pswitch_1061
    new-array p0, v3, [I

    fill-array-data p0, :array_1f72

    return-object p0

    .line 540
    :pswitch_1067
    new-array p0, v3, [I

    fill-array-data p0, :array_1f82

    return-object p0

    .line 912
    :pswitch_106d
    new-array p0, v3, [I

    fill-array-data p0, :array_1f92

    return-object p0

    .line 538
    :pswitch_1073
    new-array p0, v3, [I

    fill-array-data p0, :array_1fa2

    return-object p0

    .line 795
    :pswitch_1079
    new-array p0, v3, [I

    fill-array-data p0, :array_1fb2

    return-object p0

    .line 829
    :pswitch_107f
    new-array p0, v3, [I

    fill-array-data p0, :array_1fc2

    return-object p0

    .line 536
    :pswitch_1085
    new-array p0, v3, [I

    fill-array-data p0, :array_1fd2

    return-object p0

    .line 534
    :pswitch_108b
    new-array p0, v3, [I

    fill-array-data p0, :array_1fe2

    return-object p0

    .line 850
    :pswitch_1091
    new-array p0, v3, [I

    fill-array-data p0, :array_1ff2

    return-object p0

    .line 806
    :pswitch_1097
    new-array p0, v3, [I

    fill-array-data p0, :array_2002

    return-object p0

    .line 875
    :pswitch_109d
    new-array p0, v3, [I

    fill-array-data p0, :array_2012

    return-object p0

    .line 532
    :pswitch_10a3
    new-array p0, v3, [I

    fill-array-data p0, :array_2022

    return-object p0

    .line 530
    :pswitch_10a9
    new-array p0, v3, [I

    fill-array-data p0, :array_2032

    return-object p0

    .line 783
    :pswitch_10af
    new-array p0, v3, [I

    fill-array-data p0, :array_2042

    return-object p0

    .line 528
    :pswitch_10b5
    new-array p0, v3, [I

    fill-array-data p0, :array_2052

    return-object p0

    .line 526
    :pswitch_10bb
    new-array p0, v3, [I

    fill-array-data p0, :array_2062

    return-object p0

    .line 791
    :pswitch_10c1
    new-array p0, v3, [I

    fill-array-data p0, :array_2072

    return-object p0

    .line 524
    :pswitch_10c7
    new-array p0, v3, [I

    fill-array-data p0, :array_2082

    return-object p0

    .line 738
    :pswitch_10cd
    new-array p0, v3, [I

    fill-array-data p0, :array_2092

    return-object p0

    .line 522
    :pswitch_10d3
    new-array p0, v3, [I

    fill-array-data p0, :array_20a2

    return-object p0

    .line 563
    :pswitch_10d9
    new-array p0, v3, [I

    fill-array-data p0, :array_20b2

    return-object p0

    .line 822
    :pswitch_10df
    new-array p0, v3, [I

    fill-array-data p0, :array_20c2

    return-object p0

    .line 520
    :pswitch_10e5
    new-array p0, v3, [I

    fill-array-data p0, :array_20d2

    return-object p0

    .line 886
    :pswitch_10eb
    new-array p0, v3, [I

    fill-array-data p0, :array_20e2

    return-object p0

    nop

    :sswitch_data_10f2
    .sparse-switch
        0x823 -> :sswitch_cff
        0x824 -> :sswitch_cf3
        0x825 -> :sswitch_ce7
        0x826 -> :sswitch_cdb
        0x828 -> :sswitch_cd1
        0x82b -> :sswitch_cc5
        0x82c -> :sswitch_cb9
        0x82e -> :sswitch_cad
        0x830 -> :sswitch_c9f
        0x831 -> :sswitch_c91
        0x832 -> :sswitch_c83
        0x833 -> :sswitch_c75
        0x834 -> :sswitch_c67
        0x836 -> :sswitch_c59
        0x837 -> :sswitch_c4b
        0x839 -> :sswitch_c3d
        0x83f -> :sswitch_c2f
        0x840 -> :sswitch_c21
        0x842 -> :sswitch_c13
        0x843 -> :sswitch_c05
        0x844 -> :sswitch_bf7
        0x845 -> :sswitch_be9
        0x846 -> :sswitch_bdb
        0x847 -> :sswitch_bcd
        0x848 -> :sswitch_bbf
        0x84a -> :sswitch_bb1
        0x84b -> :sswitch_ba3
        0x84c -> :sswitch_b95
        0x84d -> :sswitch_b87
        0x84f -> :sswitch_b79
        0x850 -> :sswitch_b6b
        0x851 -> :sswitch_b5d
        0x852 -> :sswitch_b4f
        0x855 -> :sswitch_b41
        0x857 -> :sswitch_b33
        0x858 -> :sswitch_b25
        0x85e -> :sswitch_b17
        0x861 -> :sswitch_b09
        0x863 -> :sswitch_afb
        0x864 -> :sswitch_aed
        0x865 -> :sswitch_adf
        0x866 -> :sswitch_ad1
        0x868 -> :sswitch_ac3
        0x869 -> :sswitch_ab5
        0x86a -> :sswitch_aa7
        0x86b -> :sswitch_a99
        0x86c -> :sswitch_a8b
        0x86f -> :sswitch_a7d
        0x872 -> :sswitch_a6f
        0x873 -> :sswitch_a61
        0x874 -> :sswitch_a53
        0x875 -> :sswitch_a45
        0x876 -> :sswitch_a37
        0x877 -> :sswitch_a29
        0x881 -> :sswitch_a1b
        0x886 -> :sswitch_a0d
        0x887 -> :sswitch_9ff
        0x889 -> :sswitch_9f1
        0x88b -> :sswitch_9e3
        0x896 -> :sswitch_9d5
        0x89e -> :sswitch_9c7
        0x8a0 -> :sswitch_9b9
        0x8a2 -> :sswitch_9ab
        0x8ad -> :sswitch_99d
        0x8ae -> :sswitch_98f
        0x8af -> :sswitch_981
        0x8c3 -> :sswitch_973
        0x8c4 -> :sswitch_965
        0x8c5 -> :sswitch_957
        0x8c7 -> :sswitch_949
        0x8c9 -> :sswitch_93b
        0x8cc -> :sswitch_92d
        0x8da -> :sswitch_91f
        0x8db -> :sswitch_911
        0x8dd -> :sswitch_903
        0x8de -> :sswitch_8f5
        0x8df -> :sswitch_8e7
        0x8e0 -> :sswitch_8d9
        0x8e1 -> :sswitch_8cb
        0x8e2 -> :sswitch_8bd
        0x8e5 -> :sswitch_8af
        0x8e6 -> :sswitch_8a1
        0x8e7 -> :sswitch_893
        0x8e9 -> :sswitch_885
        0x8ea -> :sswitch_877
        0x8eb -> :sswitch_869
        0x8ed -> :sswitch_85b
        0x8ee -> :sswitch_84d
        0x8f0 -> :sswitch_83f
        0x8f2 -> :sswitch_831
        0x903 -> :sswitch_823
        0x90a -> :sswitch_815
        0x90c -> :sswitch_807
        0x90d -> :sswitch_7f9
        0x91b -> :sswitch_7eb
        0x91c -> :sswitch_7dd
        0x923 -> :sswitch_7cf
        0x924 -> :sswitch_7c1
        0x925 -> :sswitch_7b3
        0x926 -> :sswitch_7a5
        0x928 -> :sswitch_797
        0x929 -> :sswitch_789
        0x92a -> :sswitch_77b
        0x92b -> :sswitch_76d
        0x93b -> :sswitch_75f
        0x943 -> :sswitch_751
        0x945 -> :sswitch_743
        0x946 -> :sswitch_735
        0x95a -> :sswitch_727
        0x95c -> :sswitch_719
        0x95d -> :sswitch_70b
        0x95e -> :sswitch_6fd
        0x962 -> :sswitch_6ef
        0x963 -> :sswitch_6e1
        0x967 -> :sswitch_6d3
        0x96c -> :sswitch_6c5
        0x96e -> :sswitch_6b7
        0x96f -> :sswitch_6a9
        0x975 -> :sswitch_69b
        0x976 -> :sswitch_68d
        0x977 -> :sswitch_67f
        0x97d -> :sswitch_671
        0x97f -> :sswitch_663
        0x986 -> :sswitch_655
        0x987 -> :sswitch_647
        0x988 -> :sswitch_639
        0x989 -> :sswitch_62b
        0x98a -> :sswitch_61d
        0x98d -> :sswitch_60f
        0x994 -> :sswitch_601
        0x996 -> :sswitch_5f3
        0x997 -> :sswitch_5e5
        0x998 -> :sswitch_5d7
        0x999 -> :sswitch_5c9
        0x99a -> :sswitch_5bb
        0x99b -> :sswitch_5ad
        0x99e -> :sswitch_59f
        0x99f -> :sswitch_591
        0x9a0 -> :sswitch_583
        0x9a1 -> :sswitch_575
        0x9a2 -> :sswitch_567
        0x9a3 -> :sswitch_559
        0x9a4 -> :sswitch_54b
        0x9a5 -> :sswitch_53d
        0x9a6 -> :sswitch_52f
        0x9a7 -> :sswitch_521
        0x9a8 -> :sswitch_513
        0x9a9 -> :sswitch_505
        0x9aa -> :sswitch_4f7
        0x9ab -> :sswitch_4e9
        0x9ac -> :sswitch_4db
        0x9ad -> :sswitch_4cd
        0x9b3 -> :sswitch_4bf
        0x9b5 -> :sswitch_4b1
        0x9b7 -> :sswitch_4a3
        0x9b8 -> :sswitch_495
        0x9b9 -> :sswitch_487
        0x9bb -> :sswitch_479
        0x9be -> :sswitch_46b
        0x9c1 -> :sswitch_45d
        0x9c2 -> :sswitch_44f
        0x9c4 -> :sswitch_441
        0x9c7 -> :sswitch_433
        0x9cc -> :sswitch_425
        0x9de -> :sswitch_417
        0x9f1 -> :sswitch_409
        0x9f5 -> :sswitch_3fb
        0x9f6 -> :sswitch_3ed
        0x9f7 -> :sswitch_3df
        0x9f8 -> :sswitch_3d1
        0x9fb -> :sswitch_3c3
        0x9fc -> :sswitch_3b5
        0x9fd -> :sswitch_3a7
        0xa02 -> :sswitch_399
        0xa03 -> :sswitch_38b
        0xa04 -> :sswitch_37d
        0xa07 -> :sswitch_36f
        0xa09 -> :sswitch_361
        0xa10 -> :sswitch_353
        0xa33 -> :sswitch_345
        0xa3d -> :sswitch_337
        0xa41 -> :sswitch_329
        0xa43 -> :sswitch_31b
        0xa45 -> :sswitch_30d
        0xa4e -> :sswitch_2ff
        0xa4f -> :sswitch_2f1
        0xa50 -> :sswitch_2e3
        0xa51 -> :sswitch_2d5
        0xa52 -> :sswitch_2c7
        0xa54 -> :sswitch_2b9
        0xa55 -> :sswitch_2ab
        0xa56 -> :sswitch_29d
        0xa57 -> :sswitch_28f
        0xa58 -> :sswitch_281
        0xa59 -> :sswitch_273
        0xa5a -> :sswitch_265
        0xa5b -> :sswitch_257
        0xa5c -> :sswitch_249
        0xa5f -> :sswitch_23b
        0xa60 -> :sswitch_22d
        0xa61 -> :sswitch_21f
        0xa63 -> :sswitch_211
        0xa65 -> :sswitch_203
        0xa66 -> :sswitch_1f5
        0xa67 -> :sswitch_1e7
        0xa6f -> :sswitch_1d9
        0xa70 -> :sswitch_1cb
        0xa73 -> :sswitch_1bd
        0xa74 -> :sswitch_1af
        0xa76 -> :sswitch_1a1
        0xa78 -> :sswitch_193
        0xa79 -> :sswitch_185
        0xa7a -> :sswitch_177
        0xa7b -> :sswitch_169
        0xa7e -> :sswitch_15b
        0xa80 -> :sswitch_14d
        0xa82 -> :sswitch_13f
        0xa83 -> :sswitch_131
        0xa86 -> :sswitch_123
        0xa8c -> :sswitch_115
        0xa92 -> :sswitch_107
        0xa9e -> :sswitch_f9
        0xaa4 -> :sswitch_eb
        0xaa5 -> :sswitch_dd
        0xaab -> :sswitch_cf
        0xaad -> :sswitch_c1
        0xaaf -> :sswitch_b3
        0xab1 -> :sswitch_a5
        0xab3 -> :sswitch_97
        0xab8 -> :sswitch_89
        0xabf -> :sswitch_7c
        0xacf -> :sswitch_6f
        0xadc -> :sswitch_62
        0xaf3 -> :sswitch_55
        0xb0c -> :sswitch_48
        0xb1b -> :sswitch_3b
        0xb27 -> :sswitch_2e
        0xb33 -> :sswitch_21
        0xb3d -> :sswitch_14
    .end sparse-switch

    :pswitch_data_14b0
    .packed-switch 0x0
        :pswitch_10eb
        :pswitch_10e5
        :pswitch_10df
        :pswitch_10d9
        :pswitch_10eb
        :pswitch_10d3
        :pswitch_10cd
        :pswitch_10c7
        :pswitch_10c1
        :pswitch_10bb
        :pswitch_10b5
        :pswitch_10af
        :pswitch_10a9
        :pswitch_10a3
        :pswitch_109d
        :pswitch_1097
        :pswitch_1091
        :pswitch_10eb
        :pswitch_108b
        :pswitch_1085
        :pswitch_107f
        :pswitch_1079
        :pswitch_1073
        :pswitch_106d
        :pswitch_1067
        :pswitch_1061
        :pswitch_105b
        :pswitch_1055
        :pswitch_104f
        :pswitch_10eb
        :pswitch_1049
        :pswitch_1043
        :pswitch_103d
        :pswitch_1037
        :pswitch_1031
        :pswitch_102b
        :pswitch_1025
        :pswitch_101f
        :pswitch_1019
        :pswitch_1013
        :pswitch_100d
        :pswitch_10d9
        :pswitch_102b
        :pswitch_1007
        :pswitch_1001
        :pswitch_ffb
        :pswitch_ff5
        :pswitch_fef
        :pswitch_fe9
        :pswitch_fe3
        :pswitch_10eb
        :pswitch_109d
        :pswitch_fdd
        :pswitch_fd7
        :pswitch_fd1
        :pswitch_1097
        :pswitch_fcb
        :pswitch_10eb
        :pswitch_fc5
        :pswitch_fbf
        :pswitch_fb9
        :pswitch_10af
        :pswitch_1013
        :pswitch_10c1
        :pswitch_fb3
        :pswitch_fad
        :pswitch_fa7
        :pswitch_fa1
        :pswitch_f9b
        :pswitch_f95
        :pswitch_f8f
        :pswitch_f89
        :pswitch_f83
        :pswitch_f7d
        :pswitch_f77
        :pswitch_f71
        :pswitch_f6b
        :pswitch_f65
        :pswitch_f5f
        :pswitch_f59
        :pswitch_f53
        :pswitch_f4d
        :pswitch_f47
        :pswitch_f41
        :pswitch_106d
        :pswitch_f3b
        :pswitch_f35
        :pswitch_f2f
        :pswitch_f29
        :pswitch_f23
        :pswitch_f1d
        :pswitch_f17
        :pswitch_106d
        :pswitch_10af
        :pswitch_f11
        :pswitch_f0b
        :pswitch_f05
        :pswitch_f59
        :pswitch_eff
        :pswitch_ef9
        :pswitch_ef3
        :pswitch_eed
        :pswitch_10af
        :pswitch_ee7
        :pswitch_f59
        :pswitch_ee1
        :pswitch_1091
        :pswitch_edb
        :pswitch_ed5
        :pswitch_ecf
        :pswitch_ec9
        :pswitch_fe9
        :pswitch_ec3
        :pswitch_10eb
        :pswitch_ebd
        :pswitch_f17
        :pswitch_10eb
        :pswitch_eb7
        :pswitch_eb1
        :pswitch_eab
        :pswitch_ea5
        :pswitch_109d
        :pswitch_e9f
        :pswitch_fc5
        :pswitch_e99
        :pswitch_e93
        :pswitch_e8d
        :pswitch_10af
        :pswitch_1097
        :pswitch_e87
        :pswitch_f53
        :pswitch_e81
        :pswitch_e7b
        :pswitch_e75
        :pswitch_1013
        :pswitch_e6f
        :pswitch_e69
        :pswitch_101f
        :pswitch_e9f
        :pswitch_e63
        :pswitch_e5d
        :pswitch_1061
        :pswitch_e57
        :pswitch_1001
        :pswitch_109d
        :pswitch_10af
        :pswitch_e51
        :pswitch_e4b
        :pswitch_e45
        :pswitch_e3f
        :pswitch_e39
        :pswitch_e33
        :pswitch_e2d
        :pswitch_e27
        :pswitch_106d
        :pswitch_f9b
        :pswitch_e21
        :pswitch_fef
        :pswitch_e1b
        :pswitch_e15
        :pswitch_e0f
        :pswitch_fe9
        :pswitch_10c1
        :pswitch_e09
        :pswitch_e03
        :pswitch_10cd
        :pswitch_dfd
        :pswitch_df7
        :pswitch_e99
        :pswitch_df1
        :pswitch_deb
        :pswitch_de5
        :pswitch_109d
        :pswitch_ddf
        :pswitch_dd9
        :pswitch_1079
        :pswitch_dd3
        :pswitch_1061
        :pswitch_dcd
        :pswitch_dc7
        :pswitch_dc1
        :pswitch_dbb
        :pswitch_db5
        :pswitch_daf
        :pswitch_da9
        :pswitch_da3
        :pswitch_10c1
        :pswitch_107f
        :pswitch_10af
        :pswitch_d9d
        :pswitch_10c1
        :pswitch_1079
        :pswitch_f9b
        :pswitch_d97
        :pswitch_1097
        :pswitch_109d
        :pswitch_d91
        :pswitch_d8b
        :pswitch_d85
        :pswitch_f4d
        :pswitch_d7f
        :pswitch_d79
        :pswitch_10eb
        :pswitch_107f
        :pswitch_10df
        :pswitch_d73
        :pswitch_107f
        :pswitch_d6d
        :pswitch_1007
        :pswitch_fbf
        :pswitch_fe9
        :pswitch_e6f
        :pswitch_d67
        :pswitch_d61
        :pswitch_1091
        :pswitch_d5b
        :pswitch_e6f
        :pswitch_d55
        :pswitch_d4f
        :pswitch_1025
        :pswitch_d49
        :pswitch_d43
        :pswitch_d3d
        :pswitch_d37
        :pswitch_109d
        :pswitch_10eb
        :pswitch_106d
        :pswitch_d31
        :pswitch_d2b
        :pswitch_d25
        :pswitch_ec3
        :pswitch_e6f
        :pswitch_e33
        :pswitch_d1f
        :pswitch_106d
        :pswitch_e27
        :pswitch_d19
        :pswitch_d13
        :pswitch_da3
    .end packed-switch

    :array_1692
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_16a2
    .array-data 4
        0x4
        0x4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_16b2
    .array-data 4
        0x2
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_16c2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_16d2
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_16e2
    .array-data 4
        0x0
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_16f2
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_1702
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_1712
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_1722
    .array-data 4
        0x2
        0x2
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_1732
    .array-data 4
        0x3
        0x3
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_1742
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_1752
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1762
    .array-data 4
        0x2
        0x4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1772
    .array-data 4
        0x3
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1782
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1792
    .array-data 4
        0x3
        0x4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_17a2
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_17b2
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_17c2
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_17d2
    .array-data 4
        0x2
        0x4
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_17e2
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_17f2
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1802
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1812
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_1822
    .array-data 4
        0x4
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1832
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x0
    .end array-data

    :array_1842
    .array-data 4
        0x3
        0x3
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1852
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_1862
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1872
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_1882
    .array-data 4
        0x0
        0x3
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_1892
    .array-data 4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_18a2
    .array-data 4
        0x2
        0x2
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_18b2
    .array-data 4
        0x3
        0x4
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_18c2
    .array-data 4
        0x2
        0x0
        0x2
        0x1
        0x2
        0x0
    .end array-data

    :array_18d2
    .array-data 4
        0x1
        0x0
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_18e2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_18f2
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_1902
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1912
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_1922
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_1932
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_1942
    .array-data 4
        0x2
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1952
    .array-data 4
        0x0
        0x0
        0x3
        0x0
        0x0
        0x2
    .end array-data

    :array_1962
    .array-data 4
        0x2
        0x1
        0x4
        0x3
        0x0
        0x4
    .end array-data

    :array_1972
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1982
    .array-data 4
        0x2
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1992
    .array-data 4
        0x3
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_19a2
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_19b2
    .array-data 4
        0x1
        0x0
        0x4
        0x1
        0x1
        0x0
    .end array-data

    :array_19c2
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_19d2
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_19e2
    .array-data 4
        0x3
        0x2
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_19f2
    .array-data 4
        0x3
        0x1
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_1a02
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1a12
    .array-data 4
        0x0
        0x2
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_1a22
    .array-data 4
        0x2
        0x0
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1a32
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1a42
    .array-data 4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1a52
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1a62
    .array-data 4
        0x2
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1a72
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1a82
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a92
    .array-data 4
        0x4
        0x0
        0x3
        0x2
        0x1
        0x3
    .end array-data

    :array_1aa2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
    .end array-data

    :array_1ab2
    .array-data 4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1ac2
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x4
        0x2
    .end array-data

    :array_1ad2
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1ae2
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1af2
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1b02
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1b12
    .array-data 4
        0x0
        0x2
        0x2
        0x4
        0x4
        0x4
    .end array-data

    :array_1b22
    .array-data 4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1b32
    .array-data 4
        0x1
        0x0
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1b42
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1b52
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1b62
    .array-data 4
        0x0
        0x3
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_1b72
    .array-data 4
        0x2
        0x4
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1b82
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_1b92
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x4
        0x3
    .end array-data

    :array_1ba2
    .array-data 4
        0x3
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1bb2
    .array-data 4
        0x3
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1bc2
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x3
    .end array-data

    :array_1bd2
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_1be2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1bf2
    .array-data 4
        0x3
        0x1
        0x3
        0x3
        0x2
        0x4
    .end array-data

    :array_1c02
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1c12
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_1c22
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1c32
    .array-data 4
        0x4
        0x4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1c42
    .array-data 4
        0x2
        0x2
        0x4
        0x3
        0x3
        0x2
    .end array-data

    :array_1c52
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1c62
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1c72
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1c82
    .array-data 4
        0x3
        0x4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1c92
    .array-data 4
        0x4
        0x3
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1ca2
    .array-data 4
        0x1
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1cb2
    .array-data 4
        0x0
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1cc2
    .array-data 4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1cd2
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1ce2
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1cf2
    .array-data 4
        0x1
        0x1
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_1d02
    .array-data 4
        0x2
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1d12
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1d22
    .array-data 4
        0x3
        0x4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1d32
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_1d42
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1d52
    .array-data 4
        0x4
        0x2
        0x4
        0x0
        0x2
        0x2
    .end array-data

    :array_1d62
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1d72
    .array-data 4
        0x3
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1d82
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x2
    .end array-data

    :array_1d92
    .array-data 4
        0x4
        0x3
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_1da2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_1db2
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1dc2
    .array-data 4
        0x3
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1dd2
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1de2
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x0
        0x2
    .end array-data

    :array_1df2
    .array-data 4
        0x0
        0x1
        0x4
        0x2
        0x2
        0x1
    .end array-data

    :array_1e02
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x1
        0x2
    .end array-data

    :array_1e12
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_1e22
    .array-data 4
        0x2
        0x3
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1e32
    .array-data 4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1e42
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1e52
    .array-data 4
        0x2
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1e62
    .array-data 4
        0x2
        0x0
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_1e72
    .array-data 4
        0x4
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1e82
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1e92
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1ea2
    .array-data 4
        0x3
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1eb2
    .array-data 4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1ec2
    .array-data 4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1ed2
    .array-data 4
        0x0
        0x2
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_1ee2
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1ef2
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1f02
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1f12
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1f22
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1f32
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_1f42
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1f52
    .array-data 4
        0x3
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1f62
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1f72
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1f82
    .array-data 4
        0x4
        0x4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1f92
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1fa2
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_1fb2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1fc2
    .array-data 4
        0x4
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1fd2
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x1
        0x2
    .end array-data

    :array_1fe2
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x4
        0x2
    .end array-data

    :array_1ff2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_2002
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_2012
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2022
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_2032
    .array-data 4
        0x0
        0x3
        0x1
        0x1
        0x3
        0x0
    .end array-data

    :array_2042
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2052
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_2062
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_2072
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2082
    .array-data 4
        0x3
        0x4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_2092
    .array-data 4
        0x2
        0x3
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_20a2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_20b2
    .array-data 4
        0x2
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_20c2
    .array-data 4
        0x4
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_20d2
    .array-data 4
        0x1
        0x4
        0x2
        0x3
        0x4
        0x1
    .end array-data

    :array_20e2
    .array-data 4
        0x1
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data
.end method

.method public static getInitialBitrateEstimatesForCountry(Ljava/lang/String;I)J
    .registers 5

    .line 490
    invoke-static {p0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I

    move-result-object p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5f

    const/4 v2, 0x4

    if-eq p1, v2, :cond_50

    const/4 v0, 0x5

    if-eq p1, v0, :cond_41

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x9

    if-eq p1, v1, :cond_32

    const/16 v0, 0xa

    if-eq p1, v0, :cond_23

    const-wide/32 p0, 0xf4240

    return-wide p0

    .line 503
    :cond_23
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    aget p0, p0, v2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 506
    :cond_32
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    aget p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 501
    :cond_41
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    aget p0, p0, v1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 499
    :cond_50
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    aget p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 497
    :cond_5f
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 495
    :cond_6f
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static declared-synchronized getSingletonInstance(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
    .registers 3

    const-class v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v0

    .line 268
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_15

    .line 269
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->build()Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p0

    sput-object p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    .line 271
    :cond_15
    :goto_15
    sget-object p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw p0
.end method

.method public static isTransferAtFullNetworkSpeed(Lio/bidmachine/media3/datasource/DataSpec;Z)Z
    .registers 2

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    .line 485
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 4

    .line 362
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    monitor-enter p0

    .line 352
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getInitialBitrateEstimateForNetworkType(I)J
    .registers 7

    .line 472
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1d

    .line 474
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    goto :goto_34

    .line 475
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_34

    .line 476
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_34
    :goto_34
    if-nez v0, :cond_3d

    const-wide/32 v0, 0xf4240

    .line 479
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 481
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lio/bidmachine/media3/datasource/TransferListener;
    .registers 1

    .line 0
    return-object p0
.end method

.method public final maybeNotifyBandwidthSample(IJJ)V
    .registers 13

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_f

    .line 464
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_f

    return-void

    .line 467
    :cond_f
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    .line 468
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    return-void
.end method

.method public declared-synchronized onBytesTransferred(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZI)V
    .registers 5

    monitor-enter p0

    .line 392
    :try_start_1
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lio/bidmachine/media3/datasource/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez p1, :cond_9

    .line 393
    monitor-exit p0

    return-void

    .line 395
    :cond_9
    :try_start_9
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 396
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final declared-synchronized onNetworkTypeChanged(I)V
    .registers 10

    monitor-enter p0

    .line 423
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6c

    if-eqz v0, :cond_10

    :try_start_5
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    if-nez v1, :cond_10

    .line 425
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_71

    .line 428
    :cond_10
    :try_start_10
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_6c

    if-eqz v1, :cond_16

    .line 429
    :try_start_14
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    :cond_16
    if-ne v0, p1, :cond_1e

    .line 431
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_b

    if-eqz v0, :cond_1e

    .line 432
    monitor-exit p0

    return-void

    .line 435
    :cond_1e
    :try_start_1e
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    if-eqz p1, :cond_29

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2b

    :cond_29
    move-object v2, p0

    goto :goto_6f

    .line 443
    :cond_2b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_6c

    if-nez v0, :cond_37

    .line 444
    :try_start_2f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_b

    .line 448
    :cond_37
    :try_start_37
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 449
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 450
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_6c

    if-lez p1, :cond_4e

    :try_start_47
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_b

    sub-long v2, v0, v2

    long-to-int p1, v2

    :goto_4c
    move v3, p1

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    goto :goto_4c

    .line 451
    :goto_50
    :try_start_50
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_6c

    move-object v2, p0

    :try_start_55
    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 454
    iput-wide v0, v2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 455
    iput-wide v0, v2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 456
    iput-wide v0, v2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 457
    iput-wide v0, v2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 458
    iget-object p1, v2, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->reset()V
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_69

    .line 459
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    :goto_6a
    move-object p1, v0

    goto :goto_71

    :catchall_6c
    move-exception v0

    move-object v2, p0

    goto :goto_6a

    .line 440
    :goto_6f
    monitor-exit p0

    return-void

    :goto_71
    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_69

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Z)V
    .registers 14

    monitor-enter p0

    .line 400
    :try_start_1
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lio/bidmachine/media3/datasource/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_72

    if-nez p1, :cond_9

    .line 401
    monitor-exit p0

    return-void

    .line 403
    :cond_9
    :try_start_9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 p2, 0x1

    if-lez p1, :cond_10

    move p1, p2

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 404
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 405
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 406
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 407
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v5, :cond_75

    long-to-float p1, v6

    const/high16 p3, 0x45fa0000    # 8000.0f

    mul-float/2addr p1, p3

    int-to-float p3, v5

    div-float/2addr p1, p3

    .line 410
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

    long-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->addSample(IF)V

    .line 411
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_72

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_55

    :try_start_47
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_51

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_60

    goto :goto_55

    :catchall_51
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_7d

    .line 413
    :cond_55
    :goto_55
    :try_start_55
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->getPercentile(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 415
    :cond_60
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_72

    move-object v4, p0

    :try_start_65
    invoke-virtual/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 416
    iput-wide v0, v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 417
    iput-wide v0, v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    goto :goto_76

    :catchall_6f
    move-exception v0

    :goto_70
    move-object p1, v0

    goto :goto_7d

    :catchall_72
    move-exception v0

    move-object v4, p0

    goto :goto_70

    :cond_75
    move-object v4, p0

    .line 419
    :goto_76
    iget p1, v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr p1, p2

    iput p1, v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_6f

    .line 420
    monitor-exit p0

    return-void

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_6f

    throw p1
.end method

.method public onTransferInitializing(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public declared-synchronized onTransferStart(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Z)V
    .registers 4

    monitor-enter p0

    .line 380
    :try_start_1
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lio/bidmachine/media3/datasource/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    if-nez p1, :cond_9

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_9
    :try_start_9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez p1, :cond_18

    .line 384
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_20

    .line 386
    :cond_18
    :goto_18
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_16

    .line 387
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_16

    throw p1
.end method

.method public removeEventListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 3

    .line 369
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter.AnonymousClass1 (io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$1;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter.Builder (io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter$Builder)
.class public final Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public clock:Lio/bidmachine/media3/common/util/Clock;

.field public final context:Landroid/content/Context;

.field public final initialBitrateEstimates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public resetOnNetworkTypeChange:Z

.field public slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 146
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_b
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    const/16 p1, 0x7d0

    .line 147
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 148
    sget-object p1, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    .line 150
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;
    .registers 8

    .line 252
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILio/bidmachine/media3/common/util/Clock;ZLio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/NetworkTypeObserver$Listener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-void
.end method


# virtual methods
.method public final onNetworkTypeChanged(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->$r8$lambda$wEpMnYWfIR3HgquteZv-Iffl6Gs(Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;I)V

    return-void
.end method
