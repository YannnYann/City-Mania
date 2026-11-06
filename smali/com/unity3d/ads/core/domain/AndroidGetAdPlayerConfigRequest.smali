###### Class com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest (com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest)
.class public final Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;
.super Ljava/lang/Object;
.source "AndroidGetAdPlayerConfigRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetAdPlayerConfigRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetAdPlayerConfigRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest\n+ 2 AdPlayerConfigRequestKt.kt\ngatewayprotocol/v1/AdPlayerConfigRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,42:1\n10#2:43\n1#3:44\n1#3:45\n1#3:47\n484#4:46\n*S KotlinDebug\n*F\n+ 1 AndroidGetAdPlayerConfigRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest\n*L\n21#1:43\n21#1:44\n36#1:47\n36#1:46\n*E\n"
.end annotation


# instance fields
.field private final getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

.field private final mediationInfoConverter:Lcom/unity3d/ads/core/domain/MediationInfoConverter;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/MediationInfoConverter;)V
    .registers 4

    const-string v0, "getUniversalRequestForPayLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationInfoConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 12
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;->mediationInfoConverter:Lcom/unity3d/ads/core/domain/MediationInfoConverter;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            "Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    sget-object v0, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->newBuilder()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;)Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p3}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setConfigurationToken(Lcom/google/protobuf/ByteString;)V

    .line 23
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setPlacementId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p2}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    if-eqz p4, :cond_1d

    .line 26
    invoke-virtual {v0, p4}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    :cond_1d
    if-eqz p5, :cond_47

    .line 28
    invoke-virtual {p5}, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    new-instance p2, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2;

    invoke-direct {p2, v0}, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 29
    :cond_2d
    invoke-virtual {p5}, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;->getMediationInfo()Lcom/unity3d/ads/MediationInfo;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 30
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;->mediationInfoConverter:Lcom/unity3d/ads/core/domain/MediationInfoConverter;

    invoke-interface {p2, p1}, Lcom/unity3d/ads/core/domain/MediationInfoConverter;->invoke(Lcom/unity3d/ads/MediationInfo;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    .line 32
    :cond_3c
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->getExtrasMap()Lcom/google/protobuf/kotlin/DslMap;

    move-result-object p1

    invoke-virtual {p5}, Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;->getExtras()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->putAllExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V

    .line 10
    :cond_47
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->_build()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object p1

    .line 36
    sget-object p2, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 484
    sget-object p2, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setAdPlayerConfigRequest(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    .line 484
    invoke-virtual {p2}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;->getUniversalRequestForPayLoad:Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    invoke-interface {p2, p1, p6}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2 (com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2)
.class final synthetic Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "AndroidGetAdPlayerConfigRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 8

    .line 0
    const-string v4, "getMediationAdUnitId()Ljava/lang/String;"

    const/4 v5, 0x0

    const-class v2, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;

    const-string v3, "mediationAdUnitId"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    .line 28
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdPlayerConfigRequestKt$Dsl;->setMediationAdUnitId(Ljava/lang/String;)V

    return-void
.end method
