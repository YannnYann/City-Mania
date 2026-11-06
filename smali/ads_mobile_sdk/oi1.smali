###### Class ads_mobile_sdk.oi1 (ads_mobile_sdk.oi1)
.class public final Lads_mobile_sdk/oi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic b:Lads_mobile_sdk/si1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lads_mobile_sdk/si1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/oi1;->a:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lads_mobile_sdk/oi1;->b:Lads_mobile_sdk/si1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/ni1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ni1;

    iget v1, v0, Lads_mobile_sdk/ni1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ni1;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ni1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ni1;-><init>(Lads_mobile_sdk/oi1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ni1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/ni1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_110

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object p1, v0, Lads_mobile_sdk/ni1;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v2, v0, Lads_mobile_sdk/ni1;->e:Lads_mobile_sdk/v01;

    iget-object v4, v0, Lads_mobile_sdk/ni1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fa

    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/oi1;->a:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/v01;

    .line 53
    instance-of p1, v2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_d7

    .line 55
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/q01;

    .line 56
    iget-object v4, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 57
    check-cast v4, Lads_mobile_sdk/zh1;

    invoke-interface {v4}, Lads_mobile_sdk/zh1;->b()Lads_mobile_sdk/i2;

    move-result-object v4

    iget-boolean v4, v4, Lads_mobile_sdk/i2;->A0:Z

    if-nez v4, :cond_a0

    .line 58
    iget-object v4, p0, Lads_mobile_sdk/oi1;->b:Lads_mobile_sdk/si1;

    .line 59
    iget-object v4, v4, Lads_mobile_sdk/si1;->h:Lads_mobile_sdk/ks3;

    .line 60
    iget-object v6, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 61
    check-cast v6, Lads_mobile_sdk/zh1;

    invoke-interface {v6}, Lads_mobile_sdk/zh1;->a()Lads_mobile_sdk/ks3;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const-string v7, "traceMetaSet"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v7, v6, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 266
    iget-object v8, v4, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    iget v9, v7, Lads_mobile_sdk/m33;->b:I

    iput v9, v8, Lads_mobile_sdk/m33;->b:I

    .line 267
    iget-object v9, v7, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iput-object v9, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 268
    iget-object v9, v7, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iput-object v9, v8, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 269
    iget-object v9, v7, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iput-object v9, v8, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    .line 270
    iget-object v9, v7, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iput-object v9, v8, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 271
    iget-object v9, v7, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iput-object v9, v8, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    .line 272
    iget-boolean v7, v7, Lads_mobile_sdk/m33;->h:Z

    iput-boolean v7, v8, Lads_mobile_sdk/m33;->h:Z

    .line 274
    iget-object v6, v6, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    .line 275
    iget-object v4, v4, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    iget-object v7, v6, Lads_mobile_sdk/zb;->b:Ljava/lang/String;

    iput-object v7, v4, Lads_mobile_sdk/zb;->b:Ljava/lang/String;

    .line 276
    iget-object v7, v6, Lads_mobile_sdk/zb;->c:Ljava/lang/String;

    iput-object v7, v4, Lads_mobile_sdk/zb;->c:Ljava/lang/String;

    .line 277
    iget-boolean v6, v6, Lads_mobile_sdk/zb;->a:Z

    iput-boolean v6, v4, Lads_mobile_sdk/zb;->a:Z

    .line 278
    :cond_a0
    iget-object v4, p0, Lads_mobile_sdk/oi1;->b:Lads_mobile_sdk/si1;

    .line 279
    iget-object v4, v4, Lads_mobile_sdk/si1;->e:Lads_mobile_sdk/pb;

    .line 280
    iget-object v6, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 281
    check-cast v6, Lads_mobile_sdk/zh1;

    invoke-interface {v6}, Lads_mobile_sdk/zh1;->g()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 282
    new-instance v7, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 283
    iget-object v8, v4, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    if-eqz v8, :cond_b7

    .line 284
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v8

    goto :goto_b8

    :cond_b7
    move-object v8, v5

    .line 285
    :goto_b8
    iget-object v9, v4, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    .line 286
    invoke-virtual {v4, v6}, Lads_mobile_sdk/pb;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v10

    .line 287
    iget-object v11, v4, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 288
    iget-object v12, v4, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    const-string v4, "adapterResponses"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct/range {v7 .. v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)V

    .line 290
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 291
    check-cast p1, Lads_mobile_sdk/zh1;

    invoke-interface {p1, v7}, Lads_mobile_sdk/zh1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 292
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_101

    .line 294
    :cond_d7
    instance-of p1, v2, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_113

    .line 295
    iget-object p1, p0, Lads_mobile_sdk/oi1;->b:Lads_mobile_sdk/si1;

    .line 296
    iget-object p1, p1, Lads_mobile_sdk/si1;->e:Lads_mobile_sdk/pb;

    .line 297
    invoke-virtual {p1}, Lads_mobile_sdk/pb;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p1

    .line 298
    iget-object v6, p0, Lads_mobile_sdk/oi1;->b:Lads_mobile_sdk/si1;

    .line 299
    iget-object v6, v6, Lads_mobile_sdk/si1;->j:Lads_mobile_sdk/ji1;

    .line 300
    move-object v7, v2

    check-cast v7, Lads_mobile_sdk/i01;

    iput-object p2, v0, Lads_mobile_sdk/ni1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lads_mobile_sdk/ni1;->e:Lads_mobile_sdk/v01;

    iput-object p1, v0, Lads_mobile_sdk/ni1;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput v4, v0, Lads_mobile_sdk/ni1;->b:I

    invoke-virtual {v6, v7, p1, v0}, Lads_mobile_sdk/ji1;->a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_f9

    goto :goto_10f

    :cond_f9
    move-object v4, p2

    .line 301
    :goto_fa
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, p2

    move-object p2, v4

    .line 302
    :goto_101
    iput-object v5, v0, Lads_mobile_sdk/ni1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Lads_mobile_sdk/ni1;->e:Lads_mobile_sdk/v01;

    iput-object v5, v0, Lads_mobile_sdk/ni1;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput v3, v0, Lads_mobile_sdk/ni1;->b:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_110

    :goto_10f
    return-object v1

    .line 303
    :cond_110
    :goto_110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 321
    :cond_113
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
