###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest (com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    }
.end annotation


# instance fields
.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Z

.field public final r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

.field public final s:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public final t:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

.field public final u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

.field public final v:Z

.field public final w:Z

.field public final x:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public final y:Ljava/util/List;

.field public final z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;Z)V
    .registers 23

    .line 2
    invoke-direct/range {p0 .. p11}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->o:Ljava/util/List;

    .line 4
    iput-object p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->p:Ljava/util/List;

    .line 5
    iput-boolean p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->q:Z

    .line 6
    iput-object p15, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-object/from16 p1, p16

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->s:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 p1, p17

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->t:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-object/from16 p1, p18

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move/from16 p1, p19

    .line 10
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->v:Z

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->w:Z

    move-object/from16 p1, p20

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->x:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object/from16 p1, p21

    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->y:Ljava/util/List;

    move/from16 p1, p22

    .line 14
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->z:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;ZI)V
    .registers 24

    .line 1
    invoke-direct/range {p0 .. p22}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->s:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->x:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v0
.end method

.method public getAdSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->y:Ljava/util/List;

    return-object v0
.end method

.method public getCustomClickGestureAllowTaps()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->v:Z

    return v0
.end method

.method public getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    return-object v0
.end method

.method public getCustomFormatIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->p:Ljava/util/List;

    return-object v0
.end method

.method public getCustomMuteThisAdRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->w:Z

    return v0
.end method

.method public getManualImpressionRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->z:Z

    return v0
.end method

.method public getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->r:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    return-object v0
.end method

.method public getNativeAdTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->o:Ljava/util/List;

    return-object v0
.end method

.method public getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->t:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    return-object v0
.end method

.method public isImageLoadingDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->q:Z

    return v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest.Builder (com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest$Builder)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder<",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Z

.field public q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

.field public r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public s:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

.field public t:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

.field public u:Z

.field public v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public w:Ljava/util/List;

.field public x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "signalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->o:Ljava/util/List;

    .line 8
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    .line 9
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;
    .registers 27

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;->m()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->b()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->c()Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->d()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->e()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->f()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->g()Ljava/util/HashSet;

    move-result-object v8

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->h()Ljava/util/HashSet;

    move-result-object v9

    .line 10
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->j()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->k()Ljava/lang/String;

    move-result-object v12

    .line 13
    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 14
    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->o:Ljava/util/List;

    .line 15
    iget-boolean v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->p:Z

    move-object/from16 v16, v1

    .line 16
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-object/from16 v17, v1

    .line 17
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-object/from16 v18, v1

    .line 18
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->s:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-object/from16 v19, v1

    .line 19
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->t:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-object/from16 v20, v1

    .line 20
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->u:Z

    move/from16 v21, v1

    .line 22
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->v:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object/from16 v22, v1

    .line 23
    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->w:Ljava/util/List;

    move-object/from16 v23, v1

    .line 24
    iget-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->x:Z

    const/16 v24, 0x0

    move-object/from16 v25, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v25

    .line 25
    invoke-direct/range {v1 .. v24}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/LinkedHashMap;Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;ZI)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic self()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .registers 3

    const-string v0, "adChoicesPlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->r:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setNativeAdTypes(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;"
        }
    .end annotation

    const-string v0, "nativeAdTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->n:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->self()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object p1

    return-object p1
.end method
