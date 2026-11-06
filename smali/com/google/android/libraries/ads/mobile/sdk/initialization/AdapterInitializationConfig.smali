###### Class com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig (com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:J


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a:J

    return-wide v0
.end method

.method public final getAllowedAdFormats()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final getAllowedAdUnitIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final getAllowedAdapterClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final getExcludedAdapterClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final getInitializationTimeoutMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->f:J

    return-wide v0
.end method
