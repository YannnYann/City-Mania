###### Class com.google.android.libraries.ads.mobile.sdk.common.BaseRequest (com.google.android.libraries.ads.mobile.sdk.common.BaseRequest)
.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;

.field public final e:Landroid/os/Bundle;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 15

    const-string v0, "categoryExclusions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTargeting"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleExtrasBundle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywords"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighboringContentUrls"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceExtrasBundles"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->b:Ljava/util/Set;

    .line 7
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->d:Ljava/util/Map;

    .line 9
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->e:Landroid/os/Bundle;

    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->f:Ljava/util/Set;

    .line 11
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->g:Ljava/util/Set;

    .line 12
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->h:Ljava/util/Map;

    .line 13
    iput-object p9, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->i:Ljava/lang/String;

    .line 14
    iput-object p10, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->j:Ljava/lang/String;

    .line 15
    iput-wide p11, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->k:J

    .line 17
    iput-boolean p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->l:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 33

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v6, v2

    goto :goto_b

    :cond_9
    move-object/from16 v6, p3

    :goto_b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_11

    move-object v12, v2

    goto :goto_13

    :cond_11
    move-object/from16 v12, p9

    :goto_13
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_19

    move-object v13, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v13, p10

    :goto_1b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_23

    const-wide/16 v1, 0x0

    move-wide v14, v1

    goto :goto_25

    :cond_23
    move-wide/from16 v14, p11

    :goto_25
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    move/from16 v16, v0

    :goto_2c
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    goto :goto_40

    :cond_3d
    move/from16 v16, p13

    goto :goto_2c

    .line 18
    :goto_40
    invoke-direct/range {v3 .. v16}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public final getAdSourceExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "adapterClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->e:Landroid/os/Bundle;

    return-object p1

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method public final getAdSourceExtrasBundles()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategoryExclusions()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomTargeting()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final getGoogleExtrasBundle()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getKeywords()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final getNeighboringContentUrls()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->g:Ljava/util/Set;

    return-object v0
.end method

.method public final getPlacementId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->k:J

    return-wide v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestAgent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkipUninitializedAdapters()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->l:Z

    return v0
.end method
