###### Class com.unity3d.ads.core.domain.CommonMediationInfoConverter (com.unity3d.ads.core.domain.CommonMediationInfoConverter)
.class public final Lcom/unity3d/ads/core/domain/CommonMediationInfoConverter;
.super Ljava/lang/Object;
.source "CommonMediationInfoConverter.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/MediationInfoConverter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonMediationInfoConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonMediationInfoConverter.kt\ncom/unity3d/ads/core/domain/CommonMediationInfoConverter\n+ 2 MediationInfoKt.kt\ngatewayprotocol/v1/MediationInfoKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n10#2:23\n1#3:24\n*S KotlinDebug\n*F\n+ 1 CommonMediationInfoConverter.kt\ncom/unity3d/ads/core/domain/CommonMediationInfoConverter\n*L\n13#1:23\n13#1:24\n*E\n"
.end annotation


# instance fields
.field private final mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/MediationProviderParser;)V
    .registers 3

    const-string v0, "mediationProviderParser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonMediationInfoConverter;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/MediationInfo;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .registers 6

    const-string v0, "mediationInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonMediationInfoConverter;->mediationProviderParser:Lcom/unity3d/ads/core/domain/MediationProviderParser;

    invoke-virtual {p1}, Lcom/unity3d/ads/MediationInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/domain/MediationProviderParser;->invoke(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    .line 10
    sget-object v1, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->newBuilder()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    move-result-object v2

    const-string v3, "newBuilder(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)Lgatewayprotocol/v1/MediationInfoKt$Dsl;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    .line 15
    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    if-ne v0, v2, :cond_2c

    .line 16
    invoke-virtual {p1}, Lcom/unity3d/ads/MediationInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->setCustomName(Ljava/lang/String;)V

    .line 18
    :cond_2c
    invoke-virtual {p1}, Lcom/unity3d/ads/MediationInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->setVersion(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/unity3d/ads/MediationInfo;->getAdapterVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->setAdapterVersion(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_build()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object p1

    return-object p1
.end method
