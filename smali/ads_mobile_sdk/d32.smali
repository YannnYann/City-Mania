###### Class ads_mobile_sdk.d32 (ads_mobile_sdk.d32)
.class public final Lads_mobile_sdk/d32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final c:Lads_mobile_sdk/t22;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final e:Lads_mobile_sdk/o21;

.field public final f:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/ex0;Lads_mobile_sdk/t22;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/o21;I)V
    .registers 9

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "nativeAdSettingsDataStore"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "baseRequest"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "gmaUtil"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/d32;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/d32;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/d32;->c:Lads_mobile_sdk/t22;

    .line 32
    iput-object p5, p0, Lads_mobile_sdk/d32;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 33
    iput-object p6, p0, Lads_mobile_sdk/d32;->e:Lads_mobile_sdk/o21;

    .line 34
    iput p7, p0, Lads_mobile_sdk/d32;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/b32;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/b32;

    iget v3, v2, Lads_mobile_sdk/b32;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/b32;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/b32;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/b32;-><init>(Lads_mobile_sdk/d32;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/b32;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 65
    iget v4, v2, Lads_mobile_sdk/b32;->g:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_45

    if-eq v4, v6, :cond_39

    if-ne v4, v5, :cond_31

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    iget-wide v8, v2, Lads_mobile_sdk/b32;->d:J

    iget-wide v10, v2, Lads_mobile_sdk/b32;->c:J

    iget-object v4, v2, Lads_mobile_sdk/b32;->b:Ljava/lang/String;

    iget-object v6, v2, Lads_mobile_sdk/b32;->a:Lads_mobile_sdk/d32;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_45
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    iget-object v1, v0, Lads_mobile_sdk/d32;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_51

    return-object v7

    .line 68
    :cond_51
    iget-object v1, v0, Lads_mobile_sdk/d32;->e:Lads_mobile_sdk/o21;

    invoke-virtual {v1}, Lads_mobile_sdk/o21;->a()J

    move-result-wide v8

    .line 69
    iget-object v1, v0, Lads_mobile_sdk/d32;->c:Lads_mobile_sdk/t22;

    iput-object v0, v2, Lads_mobile_sdk/b32;->a:Lads_mobile_sdk/d32;

    iput-object v4, v2, Lads_mobile_sdk/b32;->b:Ljava/lang/String;

    iput-wide v8, v2, Lads_mobile_sdk/b32;->c:J

    iput-wide v8, v2, Lads_mobile_sdk/b32;->d:J

    iput v6, v2, Lads_mobile_sdk/b32;->g:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/t22;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6a

    goto :goto_aa

    :cond_6a
    move-object v6, v0

    move-wide v10, v8

    .line 70
    :goto_6c
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v1, v8, v12

    if-eqz v1, :cond_9c

    .line 71
    iget-object v12, v6, Lads_mobile_sdk/d32;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/c32;

    invoke-direct {v1, v6, v10, v11, v7}, Lads_mobile_sdk/c32;-><init>(Lads_mobile_sdk/d32;JLkotlin/coroutines/Continuation;)V

    .line 72
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 73
    const-string v2, "<this>"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v1, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7

    .line 332
    :cond_9c
    iget-object v1, v6, Lads_mobile_sdk/d32;->c:Lads_mobile_sdk/t22;

    iput-object v7, v2, Lads_mobile_sdk/b32;->a:Lads_mobile_sdk/d32;

    iput-object v7, v2, Lads_mobile_sdk/b32;->b:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/b32;->g:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/t22;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_ab

    :goto_aa
    return-object v3

    :cond_ab
    return-object v1
.end method

.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->I:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/a32;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/a32;

    iget v3, v2, Lads_mobile_sdk/a32;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/a32;->o:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/a32;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/a32;-><init>(Lads_mobile_sdk/d32;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/a32;->m:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 36
    iget v4, v2, Lads_mobile_sdk/a32;->o:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_63

    if-ne v4, v6, :cond_5b

    iget-object v3, v2, Lads_mobile_sdk/a32;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    iget-object v4, v2, Lads_mobile_sdk/a32;->k:Ljava/lang/Boolean;

    iget-object v7, v2, Lads_mobile_sdk/a32;->j:Ljava/lang/Integer;

    iget-object v8, v2, Lads_mobile_sdk/a32;->i:Ljava/lang/Boolean;

    iget-object v9, v2, Lads_mobile_sdk/a32;->h:Ljava/util/List;

    iget-object v10, v2, Lads_mobile_sdk/a32;->g:Ljava/lang/Boolean;

    iget-object v11, v2, Lads_mobile_sdk/a32;->f:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/a32;->e:Ljava/lang/Boolean;

    iget-object v13, v2, Lads_mobile_sdk/a32;->d:Ljava/lang/Integer;

    iget-object v14, v2, Lads_mobile_sdk/a32;->c:Ljava/util/ArrayList;

    iget-object v15, v2, Lads_mobile_sdk/a32;->b:Ljava/lang/Integer;

    iget-object v2, v2, Lads_mobile_sdk/a32;->a:Lads_mobile_sdk/d32;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v15

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v10

    move-object v10, v9

    move-object v9, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    goto/16 :goto_144

    :cond_5b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object v1, v0, Lads_mobile_sdk/d32;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 40
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "toLowerCase(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v7

    sget-object v8, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    if-eq v7, v8, :cond_85

    move-object v11, v4

    goto :goto_86

    :cond_85
    move-object v11, v5

    :goto_86
    const/4 v4, 0x3

    .line 46
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v15

    .line 47
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v4

    .line 135
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_98
    :goto_98
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 145
    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    .line 146
    const-string v8, "<this>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v8, Lads_mobile_sdk/z22;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v6, :cond_bb

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b8

    move-object v7, v5

    goto :goto_bd

    .line 233
    :cond_b8
    const-string v7, "6"

    goto :goto_bd

    .line 234
    :cond_bb
    const-string v7, "3"

    :goto_bd
    if-eqz v7, :cond_98

    .line 235
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 236
    :cond_c3
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v9

    .line 237
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 239
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomMuteThisAdRequested()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 240
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v4

    if-eqz v4, :cond_e3

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;->getValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v13, v4

    goto :goto_e4

    :cond_e3
    move-object v13, v5

    .line 242
    :goto_e4
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v4

    if-eqz v4, :cond_f4

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureAllowTaps()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v8, v4

    goto :goto_f5

    :cond_f4
    move-object v8, v5

    .line 243
    :goto_f5
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v4

    .line 244
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 245
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->getValue()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 246
    iput-object v0, v2, Lads_mobile_sdk/a32;->a:Lads_mobile_sdk/d32;

    iput-object v15, v2, Lads_mobile_sdk/a32;->b:Ljava/lang/Integer;

    iput-object v14, v2, Lads_mobile_sdk/a32;->c:Ljava/util/ArrayList;

    iput-object v13, v2, Lads_mobile_sdk/a32;->d:Ljava/lang/Integer;

    iput-object v12, v2, Lads_mobile_sdk/a32;->e:Ljava/lang/Boolean;

    iput-object v11, v2, Lads_mobile_sdk/a32;->f:Ljava/lang/String;

    iput-object v10, v2, Lads_mobile_sdk/a32;->g:Ljava/lang/Boolean;

    iput-object v9, v2, Lads_mobile_sdk/a32;->h:Ljava/util/List;

    iput-object v8, v2, Lads_mobile_sdk/a32;->i:Ljava/lang/Boolean;

    iput-object v1, v2, Lads_mobile_sdk/a32;->j:Ljava/lang/Integer;

    iput-object v7, v2, Lads_mobile_sdk/a32;->k:Ljava/lang/Boolean;

    iput-object v4, v2, Lads_mobile_sdk/a32;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    iput v6, v2, Lads_mobile_sdk/a32;->o:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/d32;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_12e

    return-object v3

    :cond_12e
    move-object/from16 v16, v15

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v10

    move-object v10, v9

    move-object v9, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, v16

    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object v2, v0

    .line 247
    :goto_144
    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/Boolean;

    .line 270
    iget v1, v2, Lads_mobile_sdk/d32;->f:I

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v2, v6, :cond_157

    move-object/from16 v20, v1

    goto :goto_159

    :cond_157
    move-object/from16 v20, v5

    .line 271
    :goto_159
    new-instance v7, Lads_mobile_sdk/y22;

    invoke-direct/range {v7 .. v20}, Lads_mobile_sdk/y22;-><init>(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 272
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v7}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
