###### Class ads_mobile_sdk.ck1 (ads_mobile_sdk.ck1)
.class public final Lads_mobile_sdk/ck1;
.super Lads_mobile_sdk/ci1;
.source "SourceFile"


# instance fields
.field public final n:Landroid/view/View;

.field public final o:Lads_mobile_sdk/g33;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lads_mobile_sdk/eo2;Lads_mobile_sdk/g33;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 27

    move-object/from16 v12, p12

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adId"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaWebView"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingAdEventListener"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phantomReferences"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    move-object/from16 v9, p10

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    move-object/from16 v10, p11

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshListener"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    move-object/from16 v11, p13

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/ci1;-><init>(Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lads_mobile_sdk/eo2;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    .line 45
    iput-object p1, p0, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 56
    iput-object v12, p0, Lads_mobile_sdk/ck1;->o:Lads_mobile_sdk/g33;

    return-void
.end method


# virtual methods
.method public final m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 7

    .line 64
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    iget-boolean v0, v0, Lads_mobile_sdk/i2;->s0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    .line 65
    iget-object v0, v0, Lads_mobile_sdk/i2;->b0:Ljava/util/List;

    .line 513
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_35

    .line 514
    :cond_1a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 515
    const-string v5, "FirstParty"

    invoke-static {v2, v5, v1, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_47

    .line 516
    :cond_35
    :goto_35
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v1, p0, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    return-object v0

    .line 520
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/i2;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 521
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/i2;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/p2;

    goto :goto_6c

    .line 523
    :cond_60
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/i2;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/p2;

    .line 525
    :goto_6c
    iget-boolean v1, v0, Lads_mobile_sdk/p2;->c:Z

    if-eqz v1, :cond_73

    .line 526
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->FLUID:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v0

    .line 528
    :cond_73
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget v2, v0, Lads_mobile_sdk/p2;->a:I

    iget v0, v0, Lads_mobile_sdk/p2;->b:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    return-object v1
.end method

.method public final n()Lads_mobile_sdk/g33;
    .registers 2

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/ck1;->o:Lads_mobile_sdk/g33;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .registers 2

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    return-object v0
.end method
