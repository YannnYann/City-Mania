###### Class com.google.android.libraries.ads.mobile.sdk.common.b (com.google.android.libraries.ads.mobile.sdk.common.b)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Ljava/util/Map;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 6

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleExtrasBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceExtrasBundles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->b:Landroid/os/Bundle;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->c:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
    .registers 15

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->b:Landroid/os/Bundle;

    .line 7
    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v7

    .line 9
    iget-object v8, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->c:Ljava/util/Map;

    .line 10
    iget-object v9, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v9

    .line 11
    iget-object v10, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v10

    .line 12
    iget-object v11, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPlacementId()J

    move-result-wide v11

    .line 13
    iget-object v13, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v13

    .line 14
    invoke-direct/range {v0 .. v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v0
.end method
