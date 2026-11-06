###### Class ads_mobile_sdk.jm (ads_mobile_sdk.jm)
.class public final Lads_mobile_sdk/jm;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

.field public static final c:I = 0xd

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x8

.field public static final l:I = 0x9

.field public static final m:I = 0xa

.field public static final n:I = 0xb

.field public static final o:I = 0xc


# instance fields
.field private adManagerSignalAdapterConfigs_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/ts;",
            ">;"
        }
    .end annotation
.end field

.field private adUnitAndFormatToMediationConfigs_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/kw1;",
            ">;"
        }
    .end annotation
.end field

.field private adUnitAndFormatToRequestSignals_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adUnitPatterns_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/mc;",
            ">;"
        }
    .end annotation
.end field

.field private adapterInitializationConfigs_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/be;",
            ">;"
        }
    .end annotation
.end field

.field private admobSignalAdapterConfigs_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/ts;",
            ">;"
        }
    .end annotation
.end field

.field private appSettingsJson_:Ljava/lang/String;

.field private appSettingsVersion_:I

.field private bitField0_:I

.field private commonSettingsJson_:Ljava/lang/String;

.field private lastUpdateTimeMs_:J

.field private loggingOnlyExperimentIdsMemoizedSerializedSize:I

.field private loggingOnlyExperimentIds_:Lads_mobile_sdk/yh1$e;

.field private serverCacheTtlSecs_:J

.field private signalAdapterConfigs_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Lads_mobile_sdk/ts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->adManagerSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToMediationConfigs_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToRequestSignals_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadUnitPatterns_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->adUnitPatterns_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadapterInitializationConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->adapterInitializationConfigs_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->admobSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/jm;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/jm;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/yh1$e;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->loggingOnlyExperimentIds_:Lads_mobile_sdk/yh1$e;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsignalAdapterConfigs_(Lads_mobile_sdk/jm;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/jm;->signalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputadManagerSignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->adManagerSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadUnitAndFormatToMediationConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToMediationConfigs_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadUnitAndFormatToRequestSignals_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToRequestSignals_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadUnitPatterns_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->adUnitPatterns_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadapterInitializationConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->adapterInitializationConfigs_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputadmobSignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->admobSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputappSettingsVersion_(Lads_mobile_sdk/jm;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/jm;->appSettingsVersion_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/jm;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/jm;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlastUpdateTimeMs_(Lads_mobile_sdk/jm;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/jm;->lastUpdateTimeMs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputloggingOnlyExperimentIds_(Lads_mobile_sdk/jm;Lads_mobile_sdk/yh1$e;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->loggingOnlyExperimentIds_:Lads_mobile_sdk/yh1$e;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputserverCacheTtlSecs_(Lads_mobile_sdk/jm;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lads_mobile_sdk/jm;->serverCacheTtlSecs_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsignalAdapterConfigs_(Lads_mobile_sdk/jm;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/jm;->signalAdapterConfigs_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/jm;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/jm;

    invoke-direct {v0}, Lads_mobile_sdk/jm;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    .line 5
    const-class v1, Lads_mobile_sdk/jm;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, -0x1

    .line 308
    iput v0, p0, Lads_mobile_sdk/jm;->loggingOnlyExperimentIdsMemoizedSerializedSize:I

    .line 374
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToMediationConfigs_:Lads_mobile_sdk/ju1;

    .line 555
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToRequestSignals_:Lads_mobile_sdk/ju1;

    .line 652
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->adapterInitializationConfigs_:Lads_mobile_sdk/ju1;

    .line 749
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->adUnitPatterns_:Lads_mobile_sdk/ju1;

    .line 851
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->signalAdapterConfigs_:Lads_mobile_sdk/ju1;

    .line 958
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->admobSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    .line 1060
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/jm;->adManagerSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/jm;->appSettingsJson_:Ljava/lang/String;

    .line 1062
    invoke-static {}, Lads_mobile_sdk/vz0;->j()Lads_mobile_sdk/yh1$e;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/jm;->loggingOnlyExperimentIds_:Lads_mobile_sdk/yh1$e;

    .line 1063
    iput-object v0, p0, Lads_mobile_sdk/jm;->commonSettingsJson_:Ljava/lang/String;

    return-void
.end method

.method public static E()Lads_mobile_sdk/jm;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    return-object v0
.end method

.method public static H()Lads_mobile_sdk/im;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/im;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/jm;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/jm;

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->admobSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/jm;->appSettingsJson_:Ljava/lang/String;

    return-object v0
.end method

.method public final C()I
    .registers 2

    .line 53
    iget v0, p0, Lads_mobile_sdk/jm;->appSettingsVersion_:I

    return v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .line 497
    iget-object v0, p0, Lads_mobile_sdk/jm;->commonSettingsJson_:Ljava/lang/String;

    return-object v0
.end method

.method public final F()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lads_mobile_sdk/jm;->lastUpdateTimeMs_:J

    return-wide v0
.end method

.method public final G()J
    .registers 3

    .line 239
    iget-wide v0, p0, Lads_mobile_sdk/jm;->serverCacheTtlSecs_:J

    return-wide v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 29

    .line 2
    sget-object v0, Lads_mobile_sdk/hm;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_86

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_19
    const-class v0, Lads_mobile_sdk/jm;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 79
    :cond_20
    sget-object v0, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    return-object v0

    .line 80
    :cond_23
    sget-object v0, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    sget-object v1, Lads_mobile_sdk/u24$a;->m:Lads_mobile_sdk/u24$a;

    .line 92
    invoke-static {}, Lads_mobile_sdk/kw1;->w()Lads_mobile_sdk/kw1;

    move-result-object v2

    .line 93
    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v10

    .line 101
    invoke-static {v0, v3, v0, v3}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v13

    .line 112
    invoke-static {}, Lads_mobile_sdk/be;->v()Lads_mobile_sdk/be;

    move-result-object v2

    .line 113
    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v15

    .line 124
    invoke-static {}, Lads_mobile_sdk/mc;->w()Lads_mobile_sdk/mc;

    move-result-object v2

    .line 125
    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v17

    .line 136
    invoke-static {}, Lads_mobile_sdk/ts;->v()Lads_mobile_sdk/ts;

    move-result-object v2

    .line 137
    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v19

    .line 148
    invoke-static {}, Lads_mobile_sdk/ts;->v()Lads_mobile_sdk/ts;

    move-result-object v2

    .line 149
    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v21

    .line 160
    invoke-static {}, Lads_mobile_sdk/ts;->v()Lads_mobile_sdk/ts;

    move-result-object v2

    .line 161
    invoke-static {v0, v3, v1, v2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v23

    const-string v22, "adManagerSignalAdapterConfigs_"

    const-string v24, "appSettingsVersion_"

    const-string v4, "bitField0_"

    const-string v5, "appSettingsJson_"

    const-string v6, "lastUpdateTimeMs_"

    const-string v7, "serverCacheTtlSecs_"

    const-string v8, "loggingOnlyExperimentIds_"

    const-string v9, "adUnitAndFormatToMediationConfigs_"

    const-string v11, "commonSettingsJson_"

    const-string v12, "adUnitAndFormatToRequestSignals_"

    const-string v14, "adapterInitializationConfigs_"

    const-string v16, "adUnitPatterns_"

    const-string v18, "signalAdapterConfigs_"

    const-string v20, "admobSignalAdapterConfigs_"

    filled-new-array/range {v4 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    .line 172
    sget-object v1, Lads_mobile_sdk/jm;->DEFAULT_INSTANCE:Lads_mobile_sdk/jm;

    const-string v2, "\u0004\r\u0000\u0001\u0001\r\r\u0007\u0001\u0000\u0001\u1208\u0001\u0002\u1002\u0002\u0003\u1002\u0003\u0004%\u00052\u0006\u1208\u0004\u00072\u00082\t2\n2\u000b2\u000c2\r\u1004\u0000"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 173
    :cond_86
    new-instance v0, Lads_mobile_sdk/im;

    invoke-direct {v0}, Lads_mobile_sdk/im;-><init>()V

    return-object v0

    .line 174
    :cond_8c
    new-instance v0, Lads_mobile_sdk/jm;

    invoke-direct {v0}, Lads_mobile_sdk/jm;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/jm;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/jm;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/jm;->appSettingsJson_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget v0, p0, Lads_mobile_sdk/jm;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lads_mobile_sdk/jm;->bitField0_:I

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/jm;->commonSettingsJson_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->adManagerSignalAdapterConfigs_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToMediationConfigs_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->adUnitAndFormatToRequestSignals_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->adUnitPatterns_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jm;->adapterInitializationConfigs_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
