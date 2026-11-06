###### Class com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken (com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken)
.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;
.super Ljava/lang/Object;
.source "AndroidUpdateAdQualitySessionToken.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adquality/UpdateAdQualitySessionToken;


# instance fields
.field private final adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;


# direct methods
.method public static synthetic $r8$lambda$INqn409Quq-51qy68vwUzruPnVM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;)V
    .registers 4

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVersionDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 14
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality SDK version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is below minimum 9.5.1, skipping session token update"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke(Lcom/google/protobuf/ByteString;)V
    .registers 7

    const-string v0, "sessionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->adQualityVersionDataSource:Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;->invoke()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3a

    .line 19
    :cond_e
    const-string v1, "9.5.1"

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/extensions/StringExtensionsKt;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_21

    .line 20
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 24
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    const-string v1, "uads_session_token"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception p1

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK setMetaData failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

###### Class com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidUpdateAdQualitySessionToken;->$r8$lambda$INqn409Quq-51qy68vwUzruPnVM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
