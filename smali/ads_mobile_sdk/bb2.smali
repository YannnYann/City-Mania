###### Class ads_mobile_sdk.bb2 (ads_mobile_sdk.bb2)
.class public final Lads_mobile_sdk/bb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nt3;
.implements Lads_mobile_sdk/li1;


# instance fields
.field public final a:Lads_mobile_sdk/jb3;

.field public final b:Lads_mobile_sdk/ka2;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final e:Lads_mobile_sdk/j53;

.field public final f:Lads_mobile_sdk/ej1;

.field public final g:Lads_mobile_sdk/k;

.field public final h:Lads_mobile_sdk/j43;

.field public final i:Lads_mobile_sdk/u43;

.field public final j:Lads_mobile_sdk/b53;

.field public final k:Lads_mobile_sdk/ex0;

.field public final l:Lads_mobile_sdk/f13;

.field public final m:Lads_mobile_sdk/ur3;

.field public final n:Lcom/google/gson/Gson;

.field public final o:Lads_mobile_sdk/n8;

.field public final p:Lkotlinx/coroutines/CoroutineScope;

.field public volatile q:Z

.field public volatile r:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jb3;Lads_mobile_sdk/ka2;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/ej1;Lads_mobile_sdk/k;Lads_mobile_sdk/j43;Lads_mobile_sdk/u43;Lads_mobile_sdk/b53;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;Lads_mobile_sdk/ur3;Lcom/google/gson/Gson;Lads_mobile_sdk/n8;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 33

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "javascriptEngine"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseRequester"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalsProvider"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionFunction"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSideRequestBuilder"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestThrottler"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestThrottlerV2"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestDomainPreloader"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 47
    iput-object v1, v0, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    .line 48
    iput-object v2, v0, Lads_mobile_sdk/bb2;->b:Lads_mobile_sdk/ka2;

    .line 49
    iput-object v3, v0, Lads_mobile_sdk/bb2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    .line 50
    iput-object v4, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iput-object v5, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 52
    iput-object v6, v0, Lads_mobile_sdk/bb2;->f:Lads_mobile_sdk/ej1;

    .line 53
    iput-object v7, v0, Lads_mobile_sdk/bb2;->g:Lads_mobile_sdk/k;

    .line 54
    iput-object v8, v0, Lads_mobile_sdk/bb2;->h:Lads_mobile_sdk/j43;

    .line 55
    iput-object v9, v0, Lads_mobile_sdk/bb2;->i:Lads_mobile_sdk/u43;

    .line 56
    iput-object v10, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 57
    iput-object v11, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 58
    iput-object v12, v0, Lads_mobile_sdk/bb2;->l:Lads_mobile_sdk/f13;

    .line 59
    iput-object v13, v0, Lads_mobile_sdk/bb2;->m:Lads_mobile_sdk/ur3;

    .line 60
    iput-object v14, v0, Lads_mobile_sdk/bb2;->n:Lcom/google/gson/Gson;

    move-object/from16 v1, p15

    .line 61
    iput-object v1, v0, Lads_mobile_sdk/bb2;->o:Lads_mobile_sdk/n8;

    .line 62
    iput-object v15, v0, Lads_mobile_sdk/bb2;->p:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static a(Lads_mobile_sdk/bb2;Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1000
    instance-of v0, p2, Lads_mobile_sdk/va2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/va2;

    iget v1, v0, Lads_mobile_sdk/va2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/va2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/va2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/va2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/va2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1001
    iget v2, v0, Lads_mobile_sdk/va2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4f

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d1

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_aa

    :cond_3d
    iget-boolean p0, v0, Lads_mobile_sdk/va2;->d:Z

    iget-boolean p1, v0, Lads_mobile_sdk/va2;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iget-object v5, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v2

    move v2, p0

    move-object p0, v5

    move-object v5, p2

    move p2, p1

    move-object p1, v9

    goto :goto_74

    :cond_4f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1002
    iget-boolean p2, p0, Lads_mobile_sdk/bb2;->r:Z

    .line 1003
    iget-boolean v2, p0, Lads_mobile_sdk/bb2;->q:Z

    .line 1005
    iget-object v6, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v7, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p0, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput-boolean p2, v0, Lads_mobile_sdk/va2;->c:Z

    iput-boolean v2, v0, Lads_mobile_sdk/va2;->d:Z

    iput v5, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    invoke-static {v6, v7, v8, v0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_74

    goto :goto_d0

    .line 1007
    :cond_74
    :goto_74
    check-cast v5, Lads_mobile_sdk/zr0;

    .line 1012
    sget-object v6, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    if-ne v5, v6, :cond_7d

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1013
    :cond_7d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    instance-of v6, p1, Lads_mobile_sdk/n01;

    if-eqz v6, :cond_8d

    check-cast p1, Lads_mobile_sdk/n01;

    .line 1015
    iget-boolean p1, p1, Lads_mobile_sdk/n01;->d:Z

    if-eqz p1, :cond_8d

    .line 1016
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8d
    const/4 p1, 0x0

    if-nez v2, :cond_ad

    .line 1019
    iget-object p2, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p1, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput v4, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    invoke-static {p2, v2, p0, v0}, Lads_mobile_sdk/b53;->d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_aa

    goto :goto_d0

    .line 1021
    :cond_aa
    :goto_aa
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_ad
    if-eqz p2, :cond_d4

    .line 1022
    sget-object p2, Lads_mobile_sdk/zr0;->e:Lads_mobile_sdk/zr0;

    if-eq v5, p2, :cond_b7

    .line 1023
    sget-object p2, Lads_mobile_sdk/zr0;->f:Lads_mobile_sdk/zr0;

    if-ne v5, p2, :cond_d4

    .line 1025
    :cond_b7
    iget-object p2, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p1, v0, Lads_mobile_sdk/va2;->a:Lads_mobile_sdk/bb2;

    iput-object p1, v0, Lads_mobile_sdk/va2;->b:Lads_mobile_sdk/i01;

    iput v3, v0, Lads_mobile_sdk/va2;->g:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1026
    invoke-static {p2, v2, p0, v0}, Lads_mobile_sdk/b53;->d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d1

    :goto_d0
    return-object v1

    .line 1027
    :cond_d1
    :goto_d1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1029
    instance-of v0, p1, Lads_mobile_sdk/wa2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/wa2;

    iget v1, v0, Lads_mobile_sdk/wa2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wa2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wa2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wa2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/wa2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1030
    iget v2, v0, Lads_mobile_sdk/wa2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1036
    iget-object p1, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object p0, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    iput v4, v0, Lads_mobile_sdk/wa2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    invoke-static {p1, v2, v5, v0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_55

    goto :goto_73

    .line 1038
    :cond_55
    :goto_55
    check-cast p1, Lads_mobile_sdk/zr0;

    .line 1045
    sget-object v2, Lads_mobile_sdk/zr0;->e:Lads_mobile_sdk/zr0;

    if-ne p1, v2, :cond_77

    .line 1046
    iget-object p1, p0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    const/4 v4, 0x0

    iput-object v4, v0, Lads_mobile_sdk/wa2;->a:Lads_mobile_sdk/bb2;

    iput v3, v0, Lads_mobile_sdk/wa2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    invoke-static {p1, v2, p0, v0}, Lads_mobile_sdk/b53;->c(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_74

    :goto_73
    return-object v1

    .line 1048
    :cond_74
    :goto_74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    instance-of v2, v1, Lads_mobile_sdk/xa2;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/xa2;

    iget v3, v2, Lads_mobile_sdk/xa2;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/xa2;->l:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/xa2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/xa2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/xa2;->j:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 68
    iget v4, v2, Lads_mobile_sdk/xa2;->l:I

    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_45c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ec3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3c9

    :pswitch_3c
    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ac3;

    iget-object v4, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/bb2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_382

    :pswitch_49
    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto/16 :goto_35d

    :pswitch_53
    iget-boolean v0, v2, Lads_mobile_sdk/xa2;->i:Z

    iget-object v4, v2, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    iget-object v8, v2, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v11, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v12, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/bb2;

    :try_start_67
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6c

    goto/16 :goto_2ba

    :catchall_6c
    move-exception v0

    goto/16 :goto_3d3

    .line 69
    :pswitch_6f
    iget-boolean v0, v2, Lads_mobile_sdk/xa2;->i:Z

    iget-object v4, v2, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v8, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/bb2;

    :try_start_7d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_82

    goto/16 :goto_25d

    :catchall_82
    move-exception v0

    goto/16 :goto_416

    .line 70
    :pswitch_85
    iget-object v8, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_90
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_82

    :goto_93
    move-object v10, v0

    goto/16 :goto_1fb

    .line 71
    :pswitch_96
    iget-object v3, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_a1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a6

    goto/16 :goto_1b8

    :catchall_a6
    move-exception v0

    goto/16 :goto_419

    .line 72
    :pswitch_a9
    iget-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_b4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b9

    goto/16 :goto_188

    :catchall_b9
    move-exception v0

    move-object v3, v4

    move-object v4, v8

    goto/16 :goto_419

    .line 73
    :pswitch_be
    iget-wide v8, v2, Lads_mobile_sdk/xa2;->h:J

    iget-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_cb
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_d0

    goto/16 :goto_14c

    :catchall_d0
    move-exception v0

    goto/16 :goto_41b

    .line 74
    :pswitch_d3
    iget-wide v8, v2, Lads_mobile_sdk/xa2;->h:J

    iget-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/bb2;

    :try_start_e0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_d0

    goto :goto_129

    .line 75
    :pswitch_e4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->n()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 77
    iget-object v1, v0, Lads_mobile_sdk/bb2;->o:Lads_mobile_sdk/n8;

    invoke-virtual {v1}, Lads_mobile_sdk/n8;->g()V

    .line 81
    :cond_f4
    sget-object v1, Lads_mobile_sdk/s11;->D1:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 278
    invoke-static {v1, v4, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 279
    :try_start_fe
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v8

    .line 281
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->x0()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 282
    iget-object v1, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v10, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-wide v8, v2, Lads_mobile_sdk/xa2;->h:J

    iput v6, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v11, v10, v2}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_124
    .catchall {:try_start_fe .. :try_end_124} :catchall_15b

    if-ne v1, v3, :cond_128

    goto/16 :goto_3c7

    :cond_128
    move-object v10, v4

    .line 283
    :goto_129
    :try_start_129
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_160

    .line 284
    iget-object v1, v0, Lads_mobile_sdk/bb2;->i:Lads_mobile_sdk/u43;

    iget-object v11, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v11

    iput-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-wide v8, v2, Lads_mobile_sdk/xa2;->h:J

    const/4 v12, 0x2

    iput v12, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v11, v2}, Lads_mobile_sdk/u43;->a(Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_14c

    goto/16 :goto_3c7

    .line 285
    :cond_14c
    :goto_14c
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_160

    .line 287
    iget-object v1, v0, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->y0()J

    move-result-wide v8
    :try_end_15a
    .catchall {:try_start_129 .. :try_end_15a} :catchall_d0

    goto :goto_160

    :catchall_15b
    move-exception v0

    move-object v10, v4

    goto/16 :goto_41b

    :cond_15f
    move-object v10, v4

    .line 289
    :cond_160
    :goto_160
    :try_start_160
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 291
    iget-object v1, v0, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    iget-object v8, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    iput-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_17a
    .catchall {:try_start_160 .. :try_end_17a} :catchall_18f

    :try_start_17a
    iput-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_17c
    .catchall {:try_start_17a .. :try_end_17c} :catchall_d0

    const/4 v11, 0x3

    :try_start_17d
    iput v11, v2, Lads_mobile_sdk/xa2;->l:I
    :try_end_17f
    .catchall {:try_start_17d .. :try_end_17f} :catchall_18f

    :try_start_17f
    invoke-virtual {v1, v9, v8, v2}, Lads_mobile_sdk/b53;->b(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1
    :try_end_183
    .catchall {:try_start_17f .. :try_end_183} :catchall_d0

    if-ne v1, v3, :cond_187

    goto/16 :goto_3c7

    :cond_187
    move-object v8, v10

    .line 292
    :goto_188
    :try_start_188
    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v9

    goto :goto_199

    :catchall_18f
    move-exception v0

    move-object v3, v4

    move-object v4, v10

    goto/16 :goto_419

    :cond_194
    move-wide/from16 v16, v8

    move-object v8, v10

    move-wide/from16 v9, v16

    .line 295
    :goto_199
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-lez v1, :cond_1e4

    .line 298
    iput-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_1a9
    .catchall {:try_start_188 .. :try_end_1a9} :catchall_b9

    :try_start_1a9
    iput-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_1ab
    .catchall {:try_start_1a9 .. :try_end_1ab} :catchall_1e0

    const/4 v1, 0x4

    :try_start_1ac
    iput v1, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1b2
    .catchall {:try_start_1ac .. :try_end_1b2} :catchall_b9

    if-ne v1, v3, :cond_1b6

    goto/16 :goto_3c7

    :cond_1b6
    move-object v3, v4

    move-object v4, v8

    .line 300
    :goto_1b8
    :try_start_1b8
    new-instance v1, Lads_mobile_sdk/n01;

    .line 302
    iget-object v0, v0, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many recently failed requests for ad unit ID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". You must wait a few seconds before making another ad request."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-direct {v1, v0, v6}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;Z)V

    .line 309
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_1dc
    .catchall {:try_start_1b8 .. :try_end_1dc} :catchall_a6

    .line 310
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_1e0
    move-exception v0

    move-object v10, v8

    goto/16 :goto_41b

    .line 314
    :cond_1e4
    :try_start_1e4
    iget-object v1, v0, Lads_mobile_sdk/bb2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    iput-object v0, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;
    :try_end_1ea
    .catchall {:try_start_1e4 .. :try_end_1ea} :catchall_b9

    :try_start_1ea
    iput-object v4, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;
    :try_end_1ec
    .catchall {:try_start_1ea .. :try_end_1ec} :catchall_1e0

    const/4 v9, 0x5

    :try_start_1ed
    iput v9, v2, Lads_mobile_sdk/xa2;->l:I
    :try_end_1ef
    .catchall {:try_start_1ed .. :try_end_1ef} :catchall_b9

    :try_start_1ef
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1f3
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_1e0

    if-ne v1, v3, :cond_1f7

    goto/16 :goto_3c7

    :cond_1f7
    move-object v9, v8

    move-object v8, v4

    goto/16 :goto_93

    .line 315
    :goto_1fb
    :try_start_1fb
    check-cast v1, Lads_mobile_sdk/v01;

    .line 527
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_20a

    check-cast v1, Lads_mobile_sdk/i01;

    .line 528
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_206
    .catchall {:try_start_1fb .. :try_end_206} :catchall_82

    .line 529
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 704
    :cond_20a
    :try_start_20a
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    .line 705
    move-object v4, v0

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 706
    iget-object v0, v10, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 707
    iget-boolean v0, v0, Lads_mobile_sdk/ex0;->w:Z

    if-nez v0, :cond_236

    .line 708
    iget-object v0, v10, Lads_mobile_sdk/bb2;->l:Lads_mobile_sdk/f13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v0

    int-to-double v11, v0

    .line 710
    iget-object v0, v10, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    .line 711
    iget-wide v13, v0, Lads_mobile_sdk/ex0;->x:D

    int-to-double v0, v1

    mul-double/2addr v13, v0

    cmpg-double v0, v11, v13

    if-gez v0, :cond_236

    move v0, v6

    goto :goto_237

    :cond_236
    const/4 v0, 0x0

    .line 712
    :goto_237
    iget-object v1, v10, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->S()Z

    move-result v1

    if-nez v1, :cond_248

    if-eqz v0, :cond_242

    goto :goto_248

    :cond_242
    move-object v1, v7

    :goto_243
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    move-object v10, v4

    goto :goto_260

    .line 713
    :cond_248
    :goto_248
    iput-object v10, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-boolean v0, v2, Lads_mobile_sdk/xa2;->i:Z

    const/4 v1, 0x6

    iput v1, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v10, v4, v2}, Lads_mobile_sdk/bb2;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_25d

    goto/16 :goto_3c7

    .line 714
    :cond_25d
    :goto_25d
    check-cast v1, Lads_mobile_sdk/v01;
    :try_end_25f
    .catchall {:try_start_20a .. :try_end_25f} :catchall_82

    goto :goto_243

    .line 720
    :goto_260
    :try_start_260
    iget-object v4, v13, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->S()Z

    move-result v4

    if-eqz v4, :cond_279

    if-nez v1, :cond_271

    .line 722
    new-instance v1, Lads_mobile_sdk/m01;

    .line 723
    const-string v4, "Client side request building returned null while building URL."

    .line 724
    invoke-direct {v1, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    :cond_271
    :goto_271
    move-object v8, v11

    move-object v9, v12

    goto :goto_2d1

    :catchall_274
    move-exception v0

    move-object v8, v11

    move-object v9, v12

    goto/16 :goto_416

    .line 728
    :cond_279
    sget-object v1, Lads_mobile_sdk/s11;->G:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 891
    invoke-static {v1, v4, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8
    :try_end_283
    .catchall {:try_start_260 .. :try_end_283} :catchall_274

    .line 892
    :try_start_283
    iget-object v1, v13, Lads_mobile_sdk/bb2;->n:Lcom/google/gson/Gson;

    invoke-virtual {v1, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 893
    sget-object v4, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v4, Lads_mobile_sdk/za2;

    invoke-direct {v4, v1}, Lads_mobile_sdk/za2;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 894
    sget-object v4, Lads_mobile_sdk/zt;->j:Lads_mobile_sdk/yt;

    .line 895
    iget-object v9, v13, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    const-string v14, "AFMA_getAdDictionary"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v13, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v10, v2, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v8, v2, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v2, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    iput-boolean v0, v2, Lads_mobile_sdk/xa2;->i:Z

    const/4 v15, 0x7

    iput v15, v2, Lads_mobile_sdk/xa2;->l:I

    check-cast v9, Lads_mobile_sdk/rp0;

    invoke-virtual {v9, v14, v1, v2}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2b5
    .catchall {:try_start_283 .. :try_end_2b5} :catchall_3d1

    if-ne v1, v3, :cond_2b9

    goto/16 :goto_3c7

    :cond_2b9
    move-object v9, v8

    .line 896
    :goto_2ba
    :try_start_2ba
    check-cast v1, Lads_mobile_sdk/v01;

    .line 955
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lads_mobile_sdk/yt;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/v01;

    move-result-object v1

    .line 1124
    instance-of v4, v1, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_2cd

    .line 1125
    move-object v4, v1

    check-cast v4, Lads_mobile_sdk/i01;

    invoke-static {v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_2cd
    .catchall {:try_start_2ba .. :try_end_2cd} :catchall_6c

    .line 1126
    :cond_2cd
    :try_start_2cd
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2d0
    .catchall {:try_start_2cd .. :try_end_2d0} :catchall_3cf

    goto :goto_271

    .line 1159
    :goto_2d1
    :try_start_2d1
    instance-of v4, v1, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_2de

    check-cast v1, Lads_mobile_sdk/i01;

    .line 1160
    invoke-static {v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_2da
    .catchall {:try_start_2d1 .. :try_end_2da} :catchall_82

    .line 1161
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 1354
    :cond_2de
    :try_start_2de
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1355
    check-cast v1, Lads_mobile_sdk/zt;

    if-eqz v0, :cond_2f5

    .line 1361
    sget-object v4, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v4, Lads_mobile_sdk/ya2;

    invoke-direct {v4, v1}, Lads_mobile_sdk/ya2;-><init>(Lads_mobile_sdk/zt;)V

    invoke-static {v4}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    :cond_2f5
    if-eqz v0, :cond_32d

    .line 1365
    iget-object v0, v1, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    if-eqz v0, :cond_32d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-ne v0, v6, :cond_32d

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v4, v1, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CSRB A/B divergence: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1368
    iget-object v4, v13, Lads_mobile_sdk/bb2;->m:Lads_mobile_sdk/ur3;

    const-string v11, "CSRB A/B divergence"

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v11, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1369
    iget-object v4, v13, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->K()Z

    move-result v4

    if-nez v4, :cond_32c

    goto :goto_32d

    .line 1370
    :cond_32c
    throw v0

    .line 1373
    :cond_32d
    :goto_32d
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_332
    .catchall {:try_start_2de .. :try_end_332} :catchall_82

    .line 1553
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1554
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 1555
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zt;

    .line 1636
    iget-object v4, v13, Lads_mobile_sdk/bb2;->b:Lads_mobile_sdk/ka2;

    iput-object v13, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->c:Ljava/io/Closeable;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->e:Lads_mobile_sdk/rr3;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->f:Lads_mobile_sdk/rr3;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->g:Lads_mobile_sdk/yt;

    const/16 v8, 0x8

    iput v8, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v4, v1, v0, v2}, Lads_mobile_sdk/ka2;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/zt;Lads_mobile_sdk/xa2;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_35c

    goto :goto_3c7

    :cond_35c
    move-object v4, v13

    .line 1637
    :goto_35d
    check-cast v1, Lads_mobile_sdk/v01;

    .line 1927
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_366

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 1928
    :cond_366
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1929
    check-cast v0, Lads_mobile_sdk/ac3;

    .line 1933
    iget-object v1, v4, Lads_mobile_sdk/bb2;->g:Lads_mobile_sdk/k;

    iput-object v4, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    const/16 v5, 0x9

    iput v5, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/k;->a(Lads_mobile_sdk/ac3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_382

    goto :goto_3c7

    .line 2135
    :cond_382
    :goto_382
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v1

    iget-object v1, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 2136
    iget-object v5, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v5, v5, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v5, v1, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 2138
    iget-object v1, v0, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    .line 2139
    iput-boolean v1, v4, Lads_mobile_sdk/bb2;->r:Z

    .line 2140
    iget-object v8, v4, Lads_mobile_sdk/bb2;->p:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/ab2;

    invoke-direct {v11, v0, v4, v1, v7}, Lads_mobile_sdk/ab2;-><init>(Lads_mobile_sdk/ac3;Lads_mobile_sdk/bb2;ZLkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2156
    iput-boolean v6, v4, Lads_mobile_sdk/bb2;->q:Z

    .line 2158
    new-instance v1, Lads_mobile_sdk/ec3;

    new-instance v5, Lads_mobile_sdk/wb3;

    iget-object v6, v4, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-direct {v5, v6}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    invoke-direct {v1, v5, v0}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;)V

    .line 2159
    iget-object v0, v4, Lads_mobile_sdk/bb2;->f:Lads_mobile_sdk/ej1;

    iput-object v1, v2, Lads_mobile_sdk/xa2;->a:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/xa2;->b:Ljava/lang/Object;

    const/16 v4, 0xa

    iput v4, v2, Lads_mobile_sdk/xa2;->l:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/ej1;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3c8

    :goto_3c7
    return-object v3

    :cond_3c8
    move-object v0, v1

    .line 2160
    :goto_3c9
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catchall_3cf
    move-exception v0

    goto :goto_413

    :catchall_3d1
    move-exception v0

    move-object v9, v8

    .line 2277
    :goto_3d3
    :try_start_3d3
    invoke-virtual {v9, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2281
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_40c

    .line 2283
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_3e9

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_3e9

    .line 2289
    invoke-virtual {v9, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_3e9

    :catchall_3e6
    move-exception v0

    move-object v1, v0

    goto :goto_40d

    .line 2295
    :cond_3e9
    :goto_3e9
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_404

    .line 2296
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_3fc

    .line 2297
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_3f6

    throw v0

    .line 2298
    :cond_3f6
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2299
    :cond_3fc
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2300
    :cond_404
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2301
    :cond_40c
    throw v0
    :try_end_40d
    .catchall {:try_start_3d3 .. :try_end_40d} :catchall_3e6

    .line 2302
    :goto_40d
    :try_start_40d
    throw v1
    :try_end_40e
    .catchall {:try_start_40d .. :try_end_40e} :catchall_40e

    :catchall_40e
    move-exception v0

    :try_start_40f
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_413
    .catchall {:try_start_40f .. :try_end_413} :catchall_3cf

    :goto_413
    move-object v4, v11

    move-object v10, v12

    goto :goto_41b

    :goto_416
    move-object v4, v8

    move-object v10, v9

    goto :goto_41b

    :goto_419
    move-object v10, v4

    move-object v4, v3

    .line 2342
    :goto_41b
    :try_start_41b
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2346
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_454

    .line 2348
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_431

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_431

    .line 2354
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_431

    :catchall_42e
    move-exception v0

    move-object v1, v0

    goto :goto_455

    .line 2360
    :cond_431
    :goto_431
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_44c

    .line 2361
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_444

    .line 2362
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_43e

    throw v0

    .line 2363
    :cond_43e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2364
    :cond_444
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2365
    :cond_44c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2366
    :cond_454
    throw v0
    :try_end_455
    .catchall {:try_start_41b .. :try_end_455} :catchall_42e

    .line 2367
    :goto_455
    :try_start_455
    throw v1
    :try_end_456
    .catchall {:try_start_455 .. :try_end_456} :catchall_456

    :catchall_456
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_45c
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d3
        :pswitch_be
        :pswitch_a9
        :pswitch_96
        :pswitch_85
        :pswitch_6f
        :pswitch_53
        :pswitch_49
        :pswitch_3c
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1028
    invoke-static {p0, p4}, Lads_mobile_sdk/bb2;->a(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 999
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/bb2;->a(Lads_mobile_sdk/bb2;Lads_mobile_sdk/i01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ta2;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ta2;

    iget v3, v2, Lads_mobile_sdk/ta2;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ta2;->g:I

    :goto_16
    move-object v8, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/ta2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ta2;-><init>(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v0, v8, Lads_mobile_sdk/ta2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 186
    iget v3, v8, Lads_mobile_sdk/ta2;->g:I

    const-string v9, "CSRB error: "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_64

    if-eq v3, v5, :cond_4b

    if-ne v3, v4, :cond_43

    iget-object v2, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iget-object v3, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    :try_start_3b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    goto/16 :goto_eb

    :catchall_40
    move-exception v0

    goto/16 :goto_191

    .line 187
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-object v3, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v7, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/bb2;

    :try_start_59
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5f

    move-object v11, v3

    move-object v12, v5

    goto :goto_8b

    :catchall_5f
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_191

    .line 188
    :cond_64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lads_mobile_sdk/s11;->G:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 368
    invoke-static {v0, v3, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 369
    :try_start_71
    iget-object v0, v1, Lads_mobile_sdk/bb2;->a:Lads_mobile_sdk/jb3;

    iput-object v1, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    iput-object v3, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iput-object v3, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iput v5, v8, Lads_mobile_sdk/ta2;->g:I

    check-cast v0, Lads_mobile_sdk/yq1;

    invoke-virtual {v0, v8}, Lads_mobile_sdk/yq1;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_195

    if-ne v0, v2, :cond_88

    goto :goto_e8

    :cond_88
    move-object v7, v1

    move-object v11, v3

    move-object v12, v11

    .line 370
    :goto_8b
    :try_start_8b
    check-cast v0, Lads_mobile_sdk/v01;

    .line 559
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_b8

    check-cast v0, Lads_mobile_sdk/i01;

    .line 560
    new-instance v13, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0xf7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v13, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    goto/16 :goto_183

    :catchall_b5
    move-exception v0

    goto/16 :goto_193

    .line 747
    :cond_b8
    const-string v3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    iget-object v3, v7, Lads_mobile_sdk/bb2;->h:Lads_mobile_sdk/j43;

    .line 750
    iget-object v0, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->o0()Lads_mobile_sdk/yp2;

    move-result-object v5

    .line 751
    iget-object v0, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->m0()Lads_mobile_sdk/hj2;

    move-result-object v0

    .line 752
    iget-object v7, v7, Lads_mobile_sdk/bb2;->k:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->w()Ljava/util/Map;

    move-result-object v7

    .line 753
    iput-object v6, v8, Lads_mobile_sdk/ta2;->a:Ljava/lang/Object;

    iput-object v12, v8, Lads_mobile_sdk/ta2;->b:Ljava/lang/Object;

    iput-object v11, v8, Lads_mobile_sdk/ta2;->c:Ljava/io/Closeable;

    iput-object v10, v8, Lads_mobile_sdk/ta2;->d:Lads_mobile_sdk/rr3;

    iput v4, v8, Lads_mobile_sdk/ta2;->g:I

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/j43;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e6
    .catchall {:try_start_8b .. :try_end_e6} :catchall_b5

    if-ne v0, v2, :cond_e9

    :goto_e8
    return-object v2

    :cond_e9
    move-object v2, v11

    move-object v3, v12

    .line 754
    :goto_eb
    :try_start_eb
    check-cast v0, Lads_mobile_sdk/v01;

    .line 768
    sget-object v5, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v5, Lads_mobile_sdk/ua2;

    invoke-direct {v5, v0}, Lads_mobile_sdk/ua2;-><init>(Lads_mobile_sdk/v01;)V

    invoke-static {v5}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 771
    instance-of v5, v0, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_15e

    .line 774
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v12, v5, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    .line 775
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v13, v5, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    if-eqz v13, :cond_128

    const-string v14, ","

    const/16 v20, 0x3e

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    goto :goto_129

    :cond_128
    move-object v14, v10

    .line 776
    :goto_129
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v13, v5, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    .line 777
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-boolean v5, v5, Lads_mobile_sdk/zt;->d:Z

    .line 778
    iget-object v6, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    .line 779
    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/q01;

    invoke-virtual {v7}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/zt;

    iget-object v7, v7, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 780
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    .line 784
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v18, 0x41

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 785
    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    iput-object v11, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    goto :goto_181

    .line 796
    :cond_15e
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_181

    .line 798
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0xf7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 799
    iput-object v11, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;
    :try_end_181
    .catchall {:try_start_eb .. :try_end_181} :catchall_40

    :cond_181
    :goto_181
    move-object v11, v2

    move-object v12, v3

    .line 961
    :goto_183
    :try_start_183
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_18d

    .line 962
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    invoke-static {v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_18d
    .catchall {:try_start_183 .. :try_end_18d} :catchall_b5

    .line 963
    :cond_18d
    invoke-static {v11, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_191
    move-object v11, v2

    goto :goto_197

    :goto_193
    move-object v3, v12

    goto :goto_197

    :catchall_195
    move-exception v0

    move-object v11, v3

    .line 973
    :goto_197
    :try_start_197
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 977
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1d0

    .line 979
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1ad

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1ad

    .line 985
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1ad

    :catchall_1aa
    move-exception v0

    move-object v2, v0

    goto :goto_1d1

    .line 991
    :cond_1ad
    :goto_1ad
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1c8

    .line 992
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1c0

    .line 993
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1ba

    throw v0

    .line 994
    :cond_1ba
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 995
    :cond_1c0
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 996
    :cond_1c8
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 997
    :cond_1d0
    throw v0
    :try_end_1d1
    .catchall {:try_start_197 .. :try_end_1d1} :catchall_1aa

    .line 998
    :goto_1d1
    :try_start_1d1
    throw v2
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_1d2

    :catchall_1d2
    move-exception v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
