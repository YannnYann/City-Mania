###### Class com.unity3d.services.core.di.ServiceProviderKt (com.unity3d.services.core.di.ServiceProviderKt)
.class public final Lcom/unity3d/services/core/di/ServiceProviderKt;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProviderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1379:1\n1#2:1380\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/unity3d/services/core/di/ServiceProviderKt;->provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;
    .registers 2

    .line 352
    const-string v0, "GatewayUrl"

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;->getPropertyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 353
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_13

    goto :goto_15

    .line 354
    :cond_13
    const-string p0, "https://gateway.unityads.unity3d.com/v1"

    .line 351
    :goto_15
    invoke-static {p0}, Lcom/unity3d/ads/core/data/model/GatewayUrl;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
