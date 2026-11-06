###### Class ads_mobile_sdk.lt3 (ads_mobile_sdk.lt3)
.class public final Lads_mobile_sdk/lt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;
.implements Lads_mobile_sdk/h73;


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/du1;

.field public final c:Lads_mobile_sdk/rb;

.field public final d:Lads_mobile_sdk/d63;

.field public final e:Ljava/util/Optional;

.field public final f:Lads_mobile_sdk/ec3;

.field public final g:Lads_mobile_sdk/i2;

.field public final h:Lads_mobile_sdk/ks3;

.field public final i:I

.field public final j:Lads_mobile_sdk/tx;

.field public final k:Lads_mobile_sdk/bc3;

.field public final l:Lads_mobile_sdk/qs0;

.field public final m:Lads_mobile_sdk/eo2;

.field public final n:Lads_mobile_sdk/cw2;

.field public final o:Lads_mobile_sdk/vn;

.field public final p:Ljava/util/Set;

.field public final q:Lads_mobile_sdk/ex0;

.field public final r:Lads_mobile_sdk/t91;

.field public final s:Lads_mobile_sdk/p02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/du1;Lads_mobile_sdk/rb;Lads_mobile_sdk/d63;Ljava/util/Optional;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/ks3;ILads_mobile_sdk/tx;Lads_mobile_sdk/bc3;Lads_mobile_sdk/qs0;Lads_mobile_sdk/eo2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vn;Ljava/util/Set;Lads_mobile_sdk/ex0;Lads_mobile_sdk/t91;)V
    .registers 35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macroExpander"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverSideVerificationOptionsHolder"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsEventHandler"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitterProvider"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStatsTracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTypes"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataWrapper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 6
    iput-object v1, v0, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    .line 7
    iput-object v2, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 8
    iput-object v3, v0, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    .line 9
    iput-object v4, v0, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    .line 10
    iput-object v5, v0, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    .line 11
    iput-object v6, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 12
    iput-object v7, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 13
    iput-object v8, v0, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    move/from16 v1, p9

    .line 14
    iput v1, v0, Lads_mobile_sdk/lt3;->i:I

    .line 15
    iput-object v9, v0, Lads_mobile_sdk/lt3;->j:Lads_mobile_sdk/tx;

    .line 16
    iput-object v10, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 17
    iput-object v11, v0, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 18
    iput-object v12, v0, Lads_mobile_sdk/lt3;->m:Lads_mobile_sdk/eo2;

    .line 19
    iput-object v13, v0, Lads_mobile_sdk/lt3;->n:Lads_mobile_sdk/cw2;

    .line 20
    iput-object v14, v0, Lads_mobile_sdk/lt3;->o:Lads_mobile_sdk/vn;

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lads_mobile_sdk/lt3;->p:Ljava/util/Set;

    move-object/from16 v1, p17

    .line 22
    iput-object v1, v0, Lads_mobile_sdk/lt3;->q:Lads_mobile_sdk/ex0;

    .line 23
    iput-object v15, v0, Lads_mobile_sdk/lt3;->r:Lads_mobile_sdk/t91;

    .line 26
    new-instance v1, Lads_mobile_sdk/p02;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lads_mobile_sdk/lt3;->s:Lads_mobile_sdk/p02;

    return-void
.end method

.method public static a(Lads_mobile_sdk/lt3;Ljava/util/List;)V
    .registers 9

    .line 929
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 930
    iget-object p0, p0, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    .line 931
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 934
    iget-object v2, p0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 935
    iget-object v3, p0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/16 v6, 0x20

    const/4 v4, 0x0

    move-object v1, p1

    .line 936
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/ft3;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ft3;

    iget v3, v2, Lads_mobile_sdk/ft3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ft3;->d:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ft3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ft3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ft3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 63
    iget v4, v2, Lads_mobile_sdk/ft3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_38

    if-ne v4, v5, :cond_30

    iget-object v2, v2, Lads_mobile_sdk/ft3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ca

    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getMediationAdError()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_52

    :cond_4a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;->getValue()I

    move-result v1

    .line 69
    :goto_52
    iget-object v4, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->X:Ljava/util/List;

    .line 231
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 233
    check-cast v7, Landroid/net/Uri;

    .line 234
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "toString(...)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "@gw_mpe@"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 399
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 400
    :cond_9c
    iget-object v1, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    iget-object v4, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    move-object v7, v4

    move-object v4, v6

    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v0, v2, Lads_mobile_sdk/ft3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/ft3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c8

    return-object v1

    :cond_c8
    move-object v1, v2

    move-object v2, v0

    .line 401
    :goto_ca
    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 402
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    .line 554
    iget-object v1, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 555
    iget-object v2, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v2, v2, Lads_mobile_sdk/i2;->g0:Ljava/util/List;

    .line 557
    iget-object v3, v0, Lads_mobile_sdk/lt3;->j:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 559
    iget-object v5, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 560
    iget-object v6, v5, Lads_mobile_sdk/bc3;->a:Lads_mobile_sdk/tn3;

    .line 561
    sget-object v7, Lads_mobile_sdk/bc3;->b:[Lkotlin/reflect/KProperty;

    const/4 v8, 0x0

    aget-object v9, v7, v8

    invoke-virtual {v6, v5, v9}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    const/4 v6, 0x0

    if-eqz v5, :cond_28

    .line 562
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    :cond_28
    move-object v5, v6

    .line 563
    :goto_29
    iget-object v9, v0, Lads_mobile_sdk/lt3;->k:Lads_mobile_sdk/bc3;

    .line 564
    iget-object v10, v9, Lads_mobile_sdk/bc3;->a:Lads_mobile_sdk/tn3;

    .line 565
    aget-object v7, v7, v8

    invoke-virtual {v10, v9, v7}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;

    if-eqz v7, :cond_3b

    .line 566
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/ServerSideVerificationOptions;->getCustomData()Ljava/lang/String;

    move-result-object v6

    .line 567
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    const-string v7, "uris"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "rewardItem"

    move-object/from16 v8, p1

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 777
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 778
    check-cast v9, Landroid/net/Uri;

    .line 779
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "toString(...)"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    const-string v9, ""

    if-nez v5, :cond_74

    move-object v11, v9

    goto :goto_75

    :cond_74
    move-object v11, v5

    :goto_75
    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "encode(...)"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v13, v11

    const-string v11, "@gw_rwd_userid@"

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 p2, v2

    move-object/from16 v2, v16

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-nez v6, :cond_91

    goto :goto_92

    :cond_91
    move-object v9, v6

    .line 781
    :goto_92
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "@gw_rwd_custom_data@"

    const/16 v19, 0x0

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 782
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "@gw_tmstmp@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 783
    invoke-interface {v8}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "@gw_rwd_itm@"

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 784
    invoke-interface {v8}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "@gw_rwd_amt@"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 785
    iget-object v2, v1, Lads_mobile_sdk/du1;->b:Ljava/lang/String;

    const-string v17, "@gw_sdkver@"

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 917
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    goto/16 :goto_59

    .line 918
    :cond_ea
    invoke-static {v0, v7}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 927
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/jt3;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/jt3;

    iget v3, v2, Lads_mobile_sdk/jt3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/jt3;->d:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/jt3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/jt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/jt3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 173
    iget v4, v2, Lads_mobile_sdk/jt3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    if-ne v4, v5, :cond_2f

    iget-object v2, v2, Lads_mobile_sdk/jt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 175
    iget-object v3, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 176
    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v6, Lads_mobile_sdk/i2;->j0:Ljava/util/List;

    .line 177
    iget-object v7, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 179
    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 180
    iput-object v0, v2, Lads_mobile_sdk/jt3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/jt3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_62

    return-object v1

    :cond_62
    move-object v1, v2

    move-object v2, v0

    .line 181
    :goto_64
    check-cast v1, Ljava/util/List;

    .line 182
    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 190
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ht3;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ht3;

    iget v3, v2, Lads_mobile_sdk/ht3;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ht3;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ht3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ht3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/ht3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 184
    iget v4, v2, Lads_mobile_sdk/ht3;->f:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_57

    if-eq v4, v6, :cond_46

    if-ne v4, v5, :cond_3e

    iget-object v3, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iget-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    :try_start_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3b

    move-object/from16 v18, v2

    move-object v2, v7

    goto/16 :goto_157

    :catchall_3b
    move-exception v0

    goto/16 :goto_167

    .line 185
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v3, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iget-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    :try_start_4c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_54

    move-object/from16 v18, v2

    move-object v2, v7

    goto/16 :goto_b3

    :catchall_54
    move-exception v0

    goto/16 :goto_c2

    .line 186
    :cond_57
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 187
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->d0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 188
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 189
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_110

    .line 190
    invoke-static {v0, v4, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    move-object v0, v3

    .line 191
    :try_start_71
    iget-object v3, v1, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 192
    iget-object v5, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v5, Lads_mobile_sdk/i2;->V:Ljava/util/List;

    move-object v9, v5

    .line 193
    iget-object v5, v1, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 195
    iget v10, v1, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    .line 196
    iput-object v4, v2, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iput v6, v2, Lads_mobile_sdk/ht3;->f:I
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_ca

    move-object v6, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object v11, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object v12, v7

    move-object v7, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0xff0

    move-object/from16 v19, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v19

    :try_start_a7
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_c8

    if-ne v3, v0, :cond_af

    goto/16 :goto_152

    :cond_af
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 197
    :goto_b3
    :try_start_b3
    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {v3, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 207
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_bf

    .line 432
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_161

    :catchall_bf
    move-exception v0

    move-object/from16 v2, v18

    :goto_c2
    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    goto :goto_d0

    :catchall_c8
    move-exception v0

    goto :goto_cd

    :catchall_ca
    move-exception v0

    move-object/from16 v18, v4

    :goto_cd
    move-object/from16 v2, v18

    move-object v4, v2

    .line 440
    :goto_d0
    :try_start_d0
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 444
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_109

    .line 446
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_e6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_e6

    .line 452
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move-object v3, v0

    goto :goto_10a

    .line 458
    :cond_e6
    :goto_e6
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_101

    .line 459
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_f9

    .line 460
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_f3

    throw v0

    .line 461
    :cond_f3
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 462
    :cond_f9
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 463
    :cond_101
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 464
    :cond_109
    throw v0
    :try_end_10a
    .catchall {:try_start_d0 .. :try_end_10a} :catchall_e3

    .line 465
    :goto_10a
    :try_start_10a
    throw v3
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    :catchall_10b
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_110
    move-object v0, v3

    move-object v3, v2

    move-object v2, v7

    .line 499
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 500
    :try_start_11b
    iget-object v6, v1, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    move-object v7, v6

    .line 501
    iget-object v6, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v6, Lads_mobile_sdk/i2;->V:Ljava/util/List;

    .line 502
    iget-object v9, v1, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 504
    iget v10, v1, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    .line 505
    iput-object v4, v3, Lads_mobile_sdk/ht3;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v3, Lads_mobile_sdk/ht3;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v3, Lads_mobile_sdk/ht3;->c:Lads_mobile_sdk/lt3;

    iput v5, v3, Lads_mobile_sdk/ht3;->f:I
    :try_end_132
    .catchall {:try_start_11b .. :try_end_132} :catchall_16f

    move-object v5, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object v11, v5

    move-object v5, v9

    const/4 v9, 0x0

    move-object/from16 v16, v3

    move-object v3, v7

    move-object v7, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0xff0

    :try_start_14c
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_150
    .catchall {:try_start_14c .. :try_end_150} :catchall_16d

    if-ne v3, v0, :cond_153

    :goto_152
    return-object v0

    :cond_153
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 506
    :goto_157
    :try_start_157
    check-cast v0, Ljava/util/List;

    .line 508
    invoke-static {v3, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 516
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15e
    .catchall {:try_start_157 .. :try_end_15e} :catchall_164

    .line 778
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 779
    :goto_161
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_164
    move-exception v0

    move-object/from16 v2, v18

    :goto_167
    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    goto :goto_175

    :catchall_16d
    move-exception v0

    goto :goto_172

    :catchall_16f
    move-exception v0

    move-object/from16 v18, v4

    :goto_172
    move-object/from16 v2, v18

    move-object v4, v2

    .line 1042
    :goto_175
    :try_start_175
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1046
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1ae

    .line 1048
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_18b

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_18b

    .line 1054
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_18b

    :catchall_188
    move-exception v0

    move-object v3, v0

    goto :goto_1af

    .line 1060
    :cond_18b
    :goto_18b
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1a6

    .line 1061
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_19e

    .line 1062
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_198

    throw v0

    .line 1063
    :cond_198
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1064
    :cond_19e
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1065
    :cond_1a6
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1066
    :cond_1ae
    throw v0
    :try_end_1af
    .catchall {:try_start_175 .. :try_end_1af} :catchall_188

    .line 1067
    :goto_1af
    :try_start_1af
    throw v3
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1b0

    :catchall_1b0
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/kt3;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/kt3;

    iget v3, v2, Lads_mobile_sdk/kt3;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/kt3;->d:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/kt3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/kt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/kt3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 162
    iget v4, v2, Lads_mobile_sdk/kt3;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    if-ne v4, v5, :cond_2f

    iget-object v2, v2, Lads_mobile_sdk/kt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 164
    iget-object v3, v0, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 165
    iget-object v6, v0, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v6, Lads_mobile_sdk/i2;->k0:Ljava/util/List;

    .line 166
    iget-object v7, v0, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 168
    iget v8, v0, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 169
    iput-object v0, v2, Lads_mobile_sdk/kt3;->a:Lads_mobile_sdk/lt3;

    iput v5, v2, Lads_mobile_sdk/kt3;->d:I

    const/4 v15, 0x0

    const/16 v17, 0xff0

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_62

    return-object v1

    :cond_62
    move-object v1, v2

    move-object v2, v0

    .line 170
    :goto_64
    check-cast v1, Ljava/util/List;

    .line 171
    invoke-static {v2, v1}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 179
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/et3;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/et3;

    iget v3, v2, Lads_mobile_sdk/et3;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/et3;->h:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/et3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/et3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/et3;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 123
    iget v4, v2, Lads_mobile_sdk/et3;->h:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_4c

    if-eq v4, v6, :cond_3c

    if-ne v4, v5, :cond_34

    iget-object v2, v2, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_158

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    iget-object v4, v2, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iget-object v8, v2, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iget-object v10, v2, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v10

    goto/16 :goto_11d

    :cond_4c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->g0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 126
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 127
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_bc

    .line 128
    invoke-static {v0, v4, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 129
    :try_start_65
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v8, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v8, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v9}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v0, v8, v9}, Lads_mobile_sdk/rb;->a(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_7b

    .line 338
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_d9

    :catchall_7b
    move-exception v0

    .line 346
    :try_start_7c
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 350
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b5

    .line 352
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_92

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_92

    .line 358
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_92

    :catchall_8f
    move-exception v0

    move-object v2, v0

    goto :goto_b6

    .line 364
    :cond_92
    :goto_92
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_ad

    .line 365
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a5

    .line 366
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9f

    throw v0

    .line 367
    :cond_9f
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 368
    :cond_a5
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 369
    :cond_ad
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 370
    :cond_b5
    throw v0
    :try_end_b6
    .catchall {:try_start_7c .. :try_end_b6} :catchall_8f

    .line 371
    :goto_b6
    :try_start_b6
    throw v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :cond_bc
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 406
    :try_start_c4
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v8, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v8, v8, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v9}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v0, v8, v9}, Lads_mobile_sdk/rb;->a(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0
    :try_end_d6
    .catchall {:try_start_c4 .. :try_end_d6} :catchall_160

    .line 652
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 653
    :goto_d9
    iget-object v4, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    .line 922
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 923
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v8

    move-object v8, v4

    move-object v4, v15

    move-object v15, v0

    move-object v0, v2

    move-object v2, v1

    :goto_f2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_126

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 924
    check-cast v9, Landroid/net/Uri;

    .line 925
    iget-object v10, v2, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 927
    sget-object v11, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 928
    iget-object v12, v2, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v12, v12, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 929
    iput-object v2, v0, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    iput-object v15, v0, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iput-object v4, v0, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iput-object v8, v0, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iput-object v4, v0, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iput v6, v0, Lads_mobile_sdk/et3;->h:I

    invoke-virtual {v10, v9, v11, v12, v0}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_119

    goto :goto_157

    :cond_119
    move-object v11, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v4

    .line 930
    :goto_11d
    check-cast v0, Landroid/net/Uri;

    .line 1200
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    move-object v4, v9

    move-object v2, v11

    goto :goto_f2

    .line 1201
    :cond_126
    move-object v9, v4

    check-cast v9, Ljava/util/List;

    .line 1202
    iget-object v8, v2, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 1204
    iget-object v10, v2, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 1205
    iget-object v11, v2, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 1206
    iget v4, v2, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1207
    iput-object v2, v0, Lads_mobile_sdk/et3;->a:Lads_mobile_sdk/lt3;

    iput-object v7, v0, Lads_mobile_sdk/et3;->b:Ljava/lang/String;

    iput-object v7, v0, Lads_mobile_sdk/et3;->c:Ljava/util/Collection;

    iput-object v7, v0, Lads_mobile_sdk/et3;->d:Ljava/util/Iterator;

    iput-object v7, v0, Lads_mobile_sdk/et3;->e:Ljava/util/Collection;

    iput v5, v0, Lads_mobile_sdk/et3;->h:I

    const/16 v20, 0x0

    const/16 v22, 0xfb0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v8 .. v22}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_158

    :goto_157
    return-object v3

    .line 1208
    :cond_158
    :goto_158
    check-cast v0, Ljava/util/List;

    .line 1224
    invoke-static {v2, v0}, Lads_mobile_sdk/lt3;->a(Lads_mobile_sdk/lt3;Ljava/util/List;)V

    .line 1233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_160
    move-exception v0

    .line 1459
    :try_start_161
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1463
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_19a

    .line 1465
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_177

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_177

    .line 1471
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_177

    :catchall_174
    move-exception v0

    move-object v2, v0

    goto :goto_19b

    .line 1477
    :cond_177
    :goto_177
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_192

    .line 1478
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_18a

    .line 1479
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_184

    throw v0

    .line 1480
    :cond_184
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1481
    :cond_18a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1482
    :cond_192
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1483
    :cond_19a
    throw v0
    :try_end_19b
    .catchall {:try_start_161 .. :try_end_19b} :catchall_174

    .line 1484
    :goto_19b
    :try_start_19b
    throw v2
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19c

    :catchall_19c
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/gt3;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/gt3;

    iget v3, v2, Lads_mobile_sdk/gt3;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/gt3;->k:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/gt3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/gt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/gt3;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 75
    iget v4, v2, Lads_mobile_sdk/gt3;->k:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_83

    if-eq v4, v7, :cond_6e

    if-eq v4, v6, :cond_41

    if-ne v4, v5, :cond_39

    iget-object v2, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 p1, v7

    goto/16 :goto_1e5

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v4, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    iget-object v6, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iget-object v10, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/i2;

    iget-object v11, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/ec3;

    iget-object v12, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/du1;

    iget-object v14, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move/from16 p1, v7

    move-object/from16 v17, v12

    :goto_64
    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    move-object/from16 v16, v13

    goto/16 :goto_1b6

    :cond_6e
    iget-object v4, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v9, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iget-object v11, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_152

    :cond_83
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v1, Lads_mobile_sdk/lt3;->a:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->e0:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lads_mobile_sdk/lt3;->h:Lads_mobile_sdk/ks3;

    .line 78
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 79
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_f3

    .line 80
    invoke-static {v0, v4, v9, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 81
    :try_start_9c
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v9, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    iget-object v10, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v10}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/rb;->b(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_b2

    .line 254
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_110

    :catchall_b2
    move-exception v0

    .line 262
    :try_start_b3
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 266
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_ec

    .line 268
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c9

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c9

    .line 274
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_c9

    :catchall_c6
    move-exception v0

    move-object v2, v0

    goto :goto_ed

    .line 280
    :cond_c9
    :goto_c9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e4

    .line 281
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_dc

    .line 282
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_d6

    throw v0

    .line 283
    :cond_d6
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 284
    :cond_dc
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 285
    :cond_e4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 286
    :cond_ec
    throw v0
    :try_end_ed
    .catchall {:try_start_b3 .. :try_end_ed} :catchall_c6

    .line 287
    :goto_ed
    :try_start_ed
    throw v2
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ee

    :catchall_ee
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 321
    :cond_f3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 322
    :try_start_fb
    iget-object v0, v1, Lads_mobile_sdk/lt3;->c:Lads_mobile_sdk/rb;

    iget-object v9, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v9, v9, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    iget-object v10, v1, Lads_mobile_sdk/lt3;->e:Ljava/util/Optional;

    invoke-static {v10}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/rb;->b(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0
    :try_end_10d
    .catchall {:try_start_fb .. :try_end_10d} :catchall_20d

    .line 532
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 533
    :goto_110
    iget-object v4, v1, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v4, v4, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    .line 766
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v12, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v1

    :goto_127
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 768
    check-cast v10, Landroid/net/Uri;

    .line 769
    iget-object v11, v12, Lads_mobile_sdk/lt3;->l:Lads_mobile_sdk/qs0;

    .line 771
    sget-object v13, Lads_mobile_sdk/is0;->c:Lads_mobile_sdk/is0;

    .line 772
    iget-object v14, v12, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    iget-object v14, v14, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 773
    iput-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v0, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v9, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/gt3;->k:I

    invoke-virtual {v11, v10, v13, v14, v2}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_14f

    goto/16 :goto_1e3

    :cond_14f
    move-object v11, v0

    move-object v0, v10

    move-object v10, v4

    .line 774
    :goto_152
    check-cast v0, Landroid/net/Uri;

    .line 1008
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v0, v11

    goto :goto_127

    .line 1009
    :cond_15a
    check-cast v4, Ljava/util/List;

    .line 1010
    iget-object v13, v12, Lads_mobile_sdk/lt3;->b:Lads_mobile_sdk/du1;

    .line 1012
    iget-object v11, v12, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 1013
    iget-object v10, v12, Lads_mobile_sdk/lt3;->g:Lads_mobile_sdk/i2;

    .line 1014
    iget v9, v12, Lads_mobile_sdk/lt3;->i:I

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1016
    iget-object v14, v12, Lads_mobile_sdk/lt3;->m:Lads_mobile_sdk/eo2;

    .line 1017
    iput-object v12, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v13, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v11, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iput-object v0, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iput-object v14, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    iput v6, v2, Lads_mobile_sdk/gt3;->k:I

    .line 1018
    iget-object v6, v12, Lads_mobile_sdk/lt3;->q:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    const-string v15, "key"

    move/from16 p1, v7

    const-string v7, "gads:enable_impression_sequence:enabled"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v7, v15, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_19c

    move-object v5, v8

    goto :goto_1a9

    .line 1037
    :cond_19c
    iget-object v5, v12, Lads_mobile_sdk/lt3;->s:Lads_mobile_sdk/p02;

    sget-object v6, Lads_mobile_sdk/ct3;->a:Lads_mobile_sdk/ct3;

    new-instance v7, Lads_mobile_sdk/dt3;

    invoke-direct {v7, v12, v8}, Lads_mobile_sdk/dt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v6, v7, v2}, Lads_mobile_sdk/p02;->a(Lads_mobile_sdk/ct3;Lads_mobile_sdk/dt3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    :goto_1a9
    if-ne v5, v3, :cond_1ac

    goto :goto_1e3

    :cond_1ac
    move-object/from16 v23, v0

    move-object/from16 v17, v4

    move-object v0, v5

    move-object/from16 v24, v14

    move-object v14, v12

    goto/16 :goto_64

    .line 1038
    :goto_1b6
    move-object/from16 v25, v0

    check-cast v25, Lads_mobile_sdk/w91;

    .line 1062
    iget-object v0, v14, Lads_mobile_sdk/lt3;->r:Lads_mobile_sdk/t91;

    .line 1063
    iput-object v14, v2, Lads_mobile_sdk/gt3;->a:Lads_mobile_sdk/lt3;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->c:Ljava/util/Collection;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->d:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->e:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->f:Ljava/lang/Integer;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->g:Ljava/lang/String;

    iput-object v8, v2, Lads_mobile_sdk/gt3;->h:Lads_mobile_sdk/eo2;

    const/4 v4, 0x3

    iput v4, v2, Lads_mobile_sdk/gt3;->k:I

    const/16 v28, 0x0

    const/16 v30, 0xc30

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, v0

    move-object/from16 v29, v2

    invoke-static/range {v16 .. v30}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1e4

    :goto_1e3
    return-object v3

    :cond_1e4
    move-object v2, v14

    .line 1064
    :goto_1e5
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 1093
    iget-object v0, v2, Lads_mobile_sdk/lt3;->n:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/v3;

    .line 1094
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1095
    iget-object v0, v2, Lads_mobile_sdk/lt3;->d:Lads_mobile_sdk/d63;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "uris"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    iget-object v3, v0, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 1098
    iget-object v5, v0, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 1099
    iget-object v6, v0, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/16 v9, 0x20

    .line 1100
    invoke-static/range {v3 .. v9}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    .line 1101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_20d
    move-exception v0

    .line 1283
    :try_start_20e
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1287
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_247

    .line 1289
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_224

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_224

    .line 1295
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_224

    :catchall_221
    move-exception v0

    move-object v2, v0

    goto :goto_248

    .line 1301
    :cond_224
    :goto_224
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_23f

    .line 1302
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_237

    .line 1303
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_231

    throw v0

    .line 1304
    :cond_231
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1305
    :cond_237
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1306
    :cond_23f
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1307
    :cond_247
    throw v0
    :try_end_248
    .catchall {:try_start_20e .. :try_end_248} :catchall_221

    .line 1308
    :goto_248
    :try_start_248
    throw v2
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_249

    :catchall_249
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
