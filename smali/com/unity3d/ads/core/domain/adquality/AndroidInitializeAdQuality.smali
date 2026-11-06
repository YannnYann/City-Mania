###### Class com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality (com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality)
.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;
.super Ljava/lang/Object;
.source "AndroidInitializeAdQuality.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adquality/InitializeAdQuality;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidInitializeAdQuality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidInitializeAdQuality.kt\ncom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality\n*L\n1#1,135:1\n98#1,17:136\n98#1,17:153\n*S KotlinDebug\n*F\n+ 1 AndroidInitializeAdQuality.kt\ncom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality\n*L\n29#1:136,17\n38#1:153,17\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public static synthetic $r8$lambda$lTlFfNrDT9ZxdTBSKf_sskRQShM(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure$lambda$3(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/GetGameId;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGameId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 24
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 25
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/log/Logger;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method private final buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
    .registers 8

    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    invoke-interface {v0}, Lcom/unity3d/ads/core/log/Logger;->getLogLevel()Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->mapLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;-><init>()V

    .line 59
    const-string v2, "UnityAds"

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setInitializationSource(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setLogLevel(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-static {p3, v3, v1, v2}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "uads_session_token"

    invoke-virtual {v0, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p3

    .line 63
    new-instance v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;-><init>(JLcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)V

    .line 62
    invoke-virtual {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->addAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getUserIdentifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 91
    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setUserId(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    .line 94
    :cond_38
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final mapLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;
    .registers 3

    .line 126
    sget-object v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1a

    .line 131
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->VERBOSE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 126
    :cond_1a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 130
    :cond_20
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->DEBUG:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 129
    :cond_23
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 128
    :cond_26
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->ERROR:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 127
    :cond_29
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->NONE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1
.end method

.method private final reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 15

    .line 117
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 118
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 119
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object p2, p1

    :goto_1c
    const-string p1, "reason_debug"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 118
    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    return-void
.end method

.method private static final reportLoadFailure$lambda$3(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality SDK not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final safeRun(Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_3c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_3} :catch_34
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    move-object p1, v0

    .line 107
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK initialization failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    const-string p1, "Unknown error"

    :cond_1f
    const-string v0, "reason_debug"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    goto :goto_4b

    :catch_34
    move-exception v0

    move-object p1, v0

    .line 105
    const-string v0, "NoSuchMethodError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4b

    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 103
    const-string v0, "ClassNotFoundException"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4b

    :catch_44
    move-exception v0

    move-object p1, v0

    .line 101
    const-string v0, "NoClassDefFoundError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method private final startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
    .registers 14

    .line 46
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v10, 0x7e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 48
    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .registers 14

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :try_start_a
    invoke-direct {p0, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p2

    .line 31
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V
    :try_end_17
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_17} :catch_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_17} :catch_1e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a .. :try_end_17} :catch_1b
    .catchall {:try_start_a .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_24

    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_52

    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_58

    :catch_21
    move-exception v0

    move-object p1, v0

    goto :goto_5e

    .line 107
    :goto_24
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v0, "Ad Quality SDK initialization failed"

    invoke-interface {p2, v0, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    sget-object v2, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v3, 0x0

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3d

    const-string p1, "Unknown error"

    :cond_3d
    const-string p2, "reason_debug"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 108
    invoke-static/range {v1 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    goto :goto_63

    .line 105
    :goto_52
    const-string p2, "NoSuchMethodError"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_63

    .line 103
    :goto_58
    const-string p2, "ClassNotFoundException"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_63

    .line 101
    :goto_5e
    const-string p2, "NoClassDefFoundError"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method public invokeWithGameId(Lcom/google/protobuf/ByteString;)V
    .registers 14

    const-string v0, "sessionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 37
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_6d

    .line 39
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initializeWithGameId(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V
    :try_end_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_21} :catch_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_21} :catch_28
    .catch Ljava/lang/NoSuchMethodError; {:try_start_14 .. :try_end_21} :catch_25
    .catchall {:try_start_14 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    :catch_25
    move-exception v0

    move-object p1, v0

    goto :goto_5c

    :catch_28
    move-exception v0

    move-object p1, v0

    goto :goto_62

    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_68

    .line 107
    :goto_2e
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK initialization failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    const-string p1, "Unknown error"

    :cond_47
    const-string v0, "reason_debug"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-static/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    goto :goto_6d

    .line 105
    :goto_5c
    const-string v0, "NoSuchMethodError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6d

    .line 103
    :goto_62
    const-string v0, "ClassNotFoundException"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6d

    .line 101
    :goto_68
    const-string v0, "NoClassDefFoundError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

###### Class com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality.WhenMappings (com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;
.super Ljava/lang/Object;
.source "AndroidInitializeAdQuality.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/log/LogLevelInternal;->values()[Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->$r8$lambda$lTlFfNrDT9ZxdTBSKf_sskRQShM(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$buildConfig$configBuilder$1 (com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$buildConfig$configBuilder$1)
.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;
.super Ljava/lang/Object;
.source "AndroidInitializeAdQuality.kt"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;


# direct methods
.method public constructor <init>(JLcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)V
    .registers 4

    iput-wide p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 16

    const-string v0, "isAdQualityInitError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 77
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v3

    .line 78
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 81
    const-string v0, "reason"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 82
    const-string v0, "reason_debug"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p1, v0}, [Lkotlin/Pair;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/16 v11, 0x78

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 77
    invoke-static/range {v3 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getLogger$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality failed to initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v0}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public adQualitySdkInitSuccess()V
    .registers 14

    .line 65
    iget-wide v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 66
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v3

    .line 67
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v11, 0x7c

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 66
    invoke-static/range {v3 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    return-void
.end method
