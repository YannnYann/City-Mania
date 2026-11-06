###### Class com.unity3d.ads.gatewayclient.AndroidRequestUrlFactory (com.unity3d.ads.gatewayclient.AndroidRequestUrlFactory)
.class public final Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;
.super Ljava/lang/Object;
.source "AndroidRequestUrlFactory.kt"

# interfaces
.implements Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidRequestUrlFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRequestUrlFactory.kt\ncom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n295#2,2:48\n*S KotlinDebug\n*F\n+ 1 AndroidRequestUrlFactory.kt\ncom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory\n*L\n25#1:48,2\n*E\n"
.end annotation


# instance fields
.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 3

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public getRequestUrl(Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "operationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactoryKt;->access$getRequestUrlOverrideType(Lcom/unity3d/ads/core/data/model/OperationType;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 25
    iget-object v0, p0, Lcom/unity3d/ads/gatewayclient/AndroidRequestUrlFactory;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getRequestUrlOverrides()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 26
    invoke-virtual {v3}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v3

    if-ne v3, p1, :cond_17

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    .line 25
    :goto_2d
    check-cast v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    if-eqz v1, :cond_35

    .line 27
    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_35
    if-nez v2, :cond_38

    goto :goto_39

    :cond_38
    return-object v2

    :cond_39
    :goto_39
    if-nez p2, :cond_3e

    .line 28
    const-string p1, ""

    return-object p1

    :cond_3e
    return-object p2
.end method
