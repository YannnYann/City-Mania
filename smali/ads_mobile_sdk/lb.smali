###### Class ads_mobile_sdk.lb (ads_mobile_sdk.lb)
.class public final Lads_mobile_sdk/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/Insets;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/List;

.field public final m:Lads_mobile_sdk/j83;

.field public final n:Z

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;FIIIILandroid/graphics/Insets;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lads_mobile_sdk/j83;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 18

    .line 1
    const-string v0, "formatString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedAdSizes"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lads_mobile_sdk/lb;->b:F

    .line 5
    iput p3, p0, Lads_mobile_sdk/lb;->c:I

    .line 6
    iput p4, p0, Lads_mobile_sdk/lb;->d:I

    .line 7
    iput p5, p0, Lads_mobile_sdk/lb;->e:I

    .line 8
    iput p6, p0, Lads_mobile_sdk/lb;->f:I

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    .line 12
    iput-object p10, p0, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    .line 15
    iput-object p13, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    .line 16
    iput-boolean p14, p0, Lads_mobile_sdk/lb;->n:Z

    move-object/from16 p1, p15

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 4

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->format:Ljava/lang/String;

    .line 373
    iget v0, p0, Lads_mobile_sdk/lb;->b:F

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenDensity:F

    .line 374
    iget v0, p0, Lads_mobile_sdk/lb;->d:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeight:I

    .line 375
    iget v0, p0, Lads_mobile_sdk/lb;->c:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidth:I

    .line 376
    iget v0, p0, Lads_mobile_sdk/lb;->f:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeightDip:I

    .line 377
    iget v0, p0, Lads_mobile_sdk/lb;->e:I

    iput v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidthDip:I

    .line 378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_55

    iget-object v0, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    if-eqz v0, :cond_55

    .line 379
    invoke-static {v0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginLeftDip:Ljava/lang/Integer;

    .line 380
    iget-object v0, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    invoke-static {v0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginTopDip:Ljava/lang/Integer;

    .line 381
    iget-object v0, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    invoke-static {v0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginRightDip:Ljava/lang/Integer;

    .line 382
    iget-object v0, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    invoke-static {v0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginBottomDip:Ljava/lang/Integer;

    .line 384
    :cond_55
    iget-object v0, p0, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->responsiveAutoFormat:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adaptiveSlot:Ljava/lang/Boolean;

    .line 386
    iget-object v0, p0, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->fluidType:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->multipleAdSizeString:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adSizeArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    iget-object v0, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    if-eqz v0, :cond_96

    .line 390
    iget v0, v0, Lads_mobile_sdk/j83;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerTopLeftDip:Ljava/lang/Integer;

    .line 391
    iget-object v0, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    iget v0, v0, Lads_mobile_sdk/j83;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerTopRightDip:Ljava/lang/Integer;

    .line 392
    iget-object v0, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    iget v0, v0, Lads_mobile_sdk/j83;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerBottomLeftDip:Ljava/lang/Integer;

    .line 393
    iget-object v0, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    iget v0, v0, Lads_mobile_sdk/j83;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerBottomRightDip:Ljava/lang/Integer;

    .line 395
    :cond_96
    iget-boolean v0, p0, Lads_mobile_sdk/lb;->n:Z

    iput-boolean v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isGreaterThanMaxAllowedBannerSize:Z

    .line 396
    iget-object v0, p0, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_a0

    .line 397
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxSlotWidth:Ljava/lang/Integer;

    .line 399
    :cond_a0
    iget-object v0, p0, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_a6

    .line 400
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxSlotHeight:Ljava/lang/Integer;

    :cond_a6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/lb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/lb;

    iget-object v1, p0, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lads_mobile_sdk/lb;->b:F

    iget v3, p1, Lads_mobile_sdk/lb;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lads_mobile_sdk/lb;->c:I

    iget v3, p1, Lads_mobile_sdk/lb;->c:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lads_mobile_sdk/lb;->d:I

    iget v3, p1, Lads_mobile_sdk/lb;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lads_mobile_sdk/lb;->e:I

    iget v3, p1, Lads_mobile_sdk/lb;->e:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget v1, p0, Lads_mobile_sdk/lb;->f:I

    iget v3, p1, Lads_mobile_sdk/lb;->f:I

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    iget-object v3, p1, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget-object v1, p0, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v2

    :cond_80
    iget-object v1, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    iget-object v3, p1, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v2

    :cond_8b
    iget-boolean v1, p0, Lads_mobile_sdk/lb;->n:Z

    iget-boolean v3, p1, Lads_mobile_sdk/lb;->n:Z

    if-eq v1, v3, :cond_92

    return v2

    :cond_92
    iget-object v1, p0, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v2

    :cond_9d
    iget-object v1, p0, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    iget-object p1, p1, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a8

    return v2

    :cond_a8
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/lb;->b:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/lb;->c:I

    .line 2
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/lb;->d:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget v2, p0, Lads_mobile_sdk/lb;->e:I

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget v2, p0, Lads_mobile_sdk/lb;->f:I

    .line 8
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 9
    iget-object v2, p0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    const/4 v3, 0x0

    if-nez v2, :cond_30

    move v2, v3

    goto :goto_34

    :cond_30
    invoke-static {v2}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v2

    :goto_34
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    if-nez v2, :cond_3c

    move v2, v3

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_40
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    if-nez v2, :cond_48

    move v2, v3

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v3

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    if-nez v2, :cond_60

    move v2, v3

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_64
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    .line 10
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 11
    iget-object v2, p0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    if-nez v2, :cond_72

    move v2, v3

    goto :goto_76

    :cond_72
    invoke-virtual {v2}, Lads_mobile_sdk/j83;->hashCode()I

    move-result v2

    :goto_76
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/lb;->n:Z

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    :cond_7d
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    if-nez v2, :cond_85

    move v2, v3

    goto :goto_89

    :cond_85
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_89
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    if-nez v1, :cond_90

    goto :goto_94

    :cond_90
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_94
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lads_mobile_sdk/lb;->a:Ljava/lang/String;

    iget v2, v0, Lads_mobile_sdk/lb;->b:F

    iget v3, v0, Lads_mobile_sdk/lb;->c:I

    iget v4, v0, Lads_mobile_sdk/lb;->d:I

    iget v5, v0, Lads_mobile_sdk/lb;->e:I

    iget v6, v0, Lads_mobile_sdk/lb;->f:I

    iget-object v7, v0, Lads_mobile_sdk/lb;->g:Landroid/graphics/Insets;

    iget-object v8, v0, Lads_mobile_sdk/lb;->h:Ljava/lang/String;

    iget-object v9, v0, Lads_mobile_sdk/lb;->i:Ljava/lang/Boolean;

    iget-object v10, v0, Lads_mobile_sdk/lb;->j:Ljava/lang/String;

    iget-object v11, v0, Lads_mobile_sdk/lb;->k:Ljava/lang/String;

    iget-object v12, v0, Lads_mobile_sdk/lb;->l:Ljava/util/List;

    iget-object v13, v0, Lads_mobile_sdk/lb;->m:Lads_mobile_sdk/j83;

    iget-boolean v14, v0, Lads_mobile_sdk/lb;->n:Z

    iget-object v15, v0, Lads_mobile_sdk/lb;->o:Ljava/lang/Integer;

    move-object/from16 v16, v15

    iget-object v15, v0, Lads_mobile_sdk/lb;->p:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "AdSizeSignal(formatString="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", screenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenWidthDip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeightDip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safeAreaMarginsDip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responsiveAutoFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInlineAdaptive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fluidType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", multipleAdSizeString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedAdSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roundedCornerRadii="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGreaterThanMaxAllowedBannerSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxSlotWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSlotHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
