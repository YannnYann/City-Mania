###### Class com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource (com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource)
.class public interface abstract Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
.super Ljava/lang/Object;
.source "PrivacyDeviceInfoDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract fetch(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
.end method

###### Class com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource.DefaultImpls (com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource$DefaultImpls)
.class public final Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource$DefaultImpls;
.super Ljava/lang/Object;
.source "PrivacyDeviceInfoDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic fetch$default(Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;ILjava/lang/Object;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 4

    if-nez p3, :cond_f

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 7
    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getDefaultInstance()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object p1

    :cond_a
    invoke-interface {p0, p1}, Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;->fetch(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
