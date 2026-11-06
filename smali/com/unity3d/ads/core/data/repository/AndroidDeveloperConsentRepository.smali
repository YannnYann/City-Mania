###### Class com.unity3d.ads.core.data.repository.AndroidDeveloperConsentRepository (com.unity3d.ads.core.data.repository.AndroidDeveloperConsentRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;
.super Ljava/lang/Object;
.source "AndroidDeveloperConsentRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;


# instance fields
.field private final developerConsentDataSource:Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;)V
    .registers 3

    const-string v0, "developerConsentDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;->developerConsentDataSource:Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;

    return-void
.end method


# virtual methods
.method public getDeveloperConsent()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidDeveloperConsentRepository;->developerConsentDataSource:Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;->getDeveloperConsent()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    return-object v0
.end method
