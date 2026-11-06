###### Class com.unity3d.ads.core.domain.AndroidGetSharedDataTimestamps (com.unity3d.ads.core.domain.AndroidGetSharedDataTimestamps)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetSharedDataTimestamps;
.super Ljava/lang/Object;
.source "AndroidGetSharedDataTimestamps.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetSharedDataTimestamps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetSharedDataTimestamps.kt\ncom/unity3d/ads/core/domain/AndroidGetSharedDataTimestamps\n+ 2 TimestampsKt.kt\ngatewayprotocol/v1/TimestampsKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,23:1\n10#2:24\n1#3:25\n*S KotlinDebug\n*F\n+ 1 AndroidGetSharedDataTimestamps.kt\ncom/unity3d/ads/core/domain/AndroidGetSharedDataTimestamps\n*L\n14#1:24\n14#1:25\n*E\n"
.end annotation


# instance fields
.field private final foregroundDurationReader:Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;)V
    .registers 3

    const-string v0, "foregroundDurationReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetSharedDataTimestamps;->foregroundDurationReader:Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;

    return-void
.end method


# virtual methods
.method public invoke()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 6

    .line 10
    sget-object v0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->Companion:Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->newBuilder()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)Lgatewayprotocol/v1/TimestampsKt$Dsl;

    move-result-object v0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->fromMillis(J)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TimestampsKt$Dsl;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lgatewayprotocol/v1/TimestampsKt$Dsl;->setSessionTimestamp(J)V

    .line 19
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetSharedDataTimestamps;->foregroundDurationReader:Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;->getSessionDurationInForegroundMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgatewayprotocol/v1/TimestampsKt$Dsl;->setSessionDurationInForeground(J)V

    .line 10
    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_build()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method
