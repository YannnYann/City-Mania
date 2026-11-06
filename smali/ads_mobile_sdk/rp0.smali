###### Class ads_mobile_sdk.rp0 (ads_mobile_sdk.rp0)
.class public abstract Lads_mobile_sdk/rp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/eq1;


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Z

.field public c:Lads_mobile_sdk/fl1;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public a(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 567
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/hp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 6
    instance-of v0, p2, Lads_mobile_sdk/mp0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/mp0;

    iget v1, v0, Lads_mobile_sdk/mp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mp0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/mp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/mp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/mp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget v2, v0, Lads_mobile_sdk/mp0;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_65

    if-eq v2, v7, :cond_5d

    if-eq v2, v6, :cond_53

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_43

    if-eq v2, v3, :cond_3a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d3

    :cond_43
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/v01;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_4b
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/fl1;

    :try_start_4f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_b8

    goto :goto_a3

    :cond_53
    iget-object p1, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    :try_start_59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_b8

    goto :goto_96

    :cond_5d
    iget-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_65
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput v7, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_73

    goto :goto_d1

    .line 12
    :cond_73
    :goto_73
    check-cast p2, Lads_mobile_sdk/v01;

    .line 112
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7c

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 113
    :cond_7c
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 114
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 115
    check-cast p2, Lads_mobile_sdk/fl1;

    .line 120
    :try_start_87
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v6, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_ba

    if-ne v2, v1, :cond_94

    goto :goto_d1

    :cond_94
    move-object v2, p1

    move-object p1, p2

    .line 121
    :goto_96
    :try_start_96
    iput-object p1, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v5, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a3

    goto :goto_d1

    .line 122
    :cond_a3
    :goto_a3
    check-cast p2, Lads_mobile_sdk/v01;
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_b8

    .line 134
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v3, Lads_mobile_sdk/np0;

    invoke-direct {v3, p1, v8}, Lads_mobile_sdk/np0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b7

    goto :goto_d1

    :cond_b7
    return-object p2

    :catchall_b8
    move-exception p2

    goto :goto_be

    :catchall_ba
    move-exception p1

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :goto_be
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v4, Lads_mobile_sdk/np0;

    invoke-direct {v4, p1, v8}, Lads_mobile_sdk/np0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/mp0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/mp0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/mp0;->e:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d2

    :goto_d1
    return-object v1

    :cond_d2
    move-object p1, p2

    .line 135
    :goto_d3
    throw p1
.end method

.method public final a(Lads_mobile_sdk/ip0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 136
    instance-of v0, p2, Lads_mobile_sdk/op0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/op0;

    iget v1, v0, Lads_mobile_sdk/op0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/op0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/op0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/op0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/op0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget v2, v0, Lads_mobile_sdk/op0;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_62

    if-eq v2, v7, :cond_5a

    if-eq v2, v6, :cond_50

    if-eq v2, v5, :cond_48

    if-eq v2, v4, :cond_43

    if-eq v2, v3, :cond_3a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d0

    :cond_43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b2

    :cond_48
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/fl1;

    :try_start_4c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_b5

    goto :goto_a0

    :cond_50
    iget-object p1, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    :try_start_56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_b5

    goto :goto_93

    :cond_5a
    iget-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput v7, v0, Lads_mobile_sdk/op0;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_70

    goto :goto_ce

    .line 142
    :cond_70
    :goto_70
    check-cast p2, Lads_mobile_sdk/v01;

    .line 224
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_79

    .line 225
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 303
    :cond_79
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 304
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 305
    check-cast p2, Lads_mobile_sdk/fl1;

    .line 310
    :try_start_84
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v6, v0, Lads_mobile_sdk/op0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_b7

    if-ne v2, v1, :cond_91

    goto :goto_ce

    :cond_91
    move-object v2, p1

    move-object p1, p2

    .line 311
    :goto_93
    :try_start_93
    iput-object p1, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v5, v0, Lads_mobile_sdk/op0;->e:I

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_b5

    if-ne p2, v1, :cond_a0

    goto :goto_ce

    .line 313
    :cond_a0
    :goto_a0
    sget-object p2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/pp0;

    invoke-direct {v2, p1, v8}, Lads_mobile_sdk/pp0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/op0;->e:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b2

    goto :goto_ce

    .line 314
    :cond_b2
    :goto_b2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_b5
    move-exception p2

    goto :goto_bb

    :catchall_b7
    move-exception p1

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    .line 318
    :goto_bb
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v4, Lads_mobile_sdk/pp0;

    invoke-direct {v4, p1, v8}, Lads_mobile_sdk/pp0;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/op0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/op0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/op0;->e:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_cf

    :goto_ce
    return-object v1

    :cond_cf
    move-object p1, p2

    .line 319
    :goto_d0
    throw p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 5
    new-instance v0, Lads_mobile_sdk/ip0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lads_mobile_sdk/ip0;-><init>(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, p3}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/ip0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_11

    return-object p1

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lads_mobile_sdk/hp0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lads_mobile_sdk/hp0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1, p3}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/hp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/fp0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/fp0;

    iget v1, v0, Lads_mobile_sdk/fp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fp0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/fp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/fp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lads_mobile_sdk/fp0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_53

    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    .line 120
    iput-object p1, p0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    if-eqz p2, :cond_52

    .line 121
    iput-object p0, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    iput-object p1, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iput v4, v0, Lads_mobile_sdk/fp0;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/fl1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_52

    goto :goto_60

    :cond_52
    move-object v2, p0

    :goto_53
    const/4 p2, 0x0

    .line 122
    iput-object p2, v0, Lads_mobile_sdk/fp0;->a:Lads_mobile_sdk/rp0;

    iput-object p2, v0, Lads_mobile_sdk/fp0;->b:Lads_mobile_sdk/fl1;

    iput v3, v0, Lads_mobile_sdk/fp0;->e:I

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_61

    :goto_60
    return-object v1

    .line 123
    :cond_61
    :goto_61
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 124
    instance-of v0, p1, Lads_mobile_sdk/jp0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/jp0;

    iget v1, v0, Lads_mobile_sdk/jp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/jp0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/jp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/jp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/jp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 219
    iget v2, v0, Lads_mobile_sdk/jp0;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5e

    if-eq v2, v5, :cond_51

    if-eq v2, v4, :cond_44

    if-ne v2, v3, :cond_3c

    iget-object v1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/fl1;

    iget-object v0, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    goto/16 :goto_d3

    :catchall_39
    move-exception p1

    goto/16 :goto_e1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_44
    iget-object v2, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rp0;

    :try_start_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_df

    goto/16 :goto_ae

    .line 221
    :cond_51
    iget-object v2, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rp0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_72

    :cond_5e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 293
    iput-object p0, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/jp0;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_71

    goto/16 :goto_d0

    :cond_71
    move-object v5, p0

    .line 294
    :goto_72
    :try_start_72
    iget-object v2, v5, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    .line 296
    iget-boolean v7, v5, Lads_mobile_sdk/rp0;->b:Z

    if-eqz v7, :cond_89

    .line 297
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "EngineSingleton is stopped"

    .line 298
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 299
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto/16 :goto_db

    :catchall_83
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto/16 :goto_e1

    :cond_89
    if-eqz v2, :cond_9d

    .line 300
    iget-object v7, v2, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz v7, :cond_9d

    .line 301
    iget-object v7, v7, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v7, :cond_9d

    .line 302
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_9a

    goto :goto_9d

    :cond_9a
    move-object v0, p1

    move-object v1, v2

    goto :goto_d3

    .line 303
    :cond_9d
    :goto_9d
    iput-object v5, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/jp0;->e:I

    .line 304
    invoke-virtual {v5, v6, v0}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a7
    .catchall {:try_start_72 .. :try_end_a7} :catchall_83

    if-ne v2, v1, :cond_aa

    goto :goto_d0

    :cond_aa
    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v5

    .line 305
    :goto_ae
    :try_start_ae
    check-cast p1, Lads_mobile_sdk/v01;

    .line 380
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_b9

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i01;

    move-object p1, v2

    goto :goto_db

    .line 381
    :cond_b9
    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 382
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 383
    check-cast p1, Lads_mobile_sdk/fl1;

    .line 384
    iput-object v2, v0, Lads_mobile_sdk/jp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/jp0;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/jp0;->e:I

    invoke-virtual {v4, p1, v0}, Lads_mobile_sdk/rp0;->b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_ae .. :try_end_ce} :catchall_df

    if-ne v0, v1, :cond_d1

    :goto_d0
    return-object v1

    :cond_d1
    move-object v1, p1

    move-object v0, v2

    .line 388
    :goto_d3
    :try_start_d3
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_39

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 451
    :goto_db
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_df
    move-exception p1

    goto :goto_e2

    :goto_e1
    move-object v2, v0

    .line 452
    :goto_e2
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/gp0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/gp0;

    iget v1, v0, Lads_mobile_sdk/gp0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gp0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/gp0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/gp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/gp0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget v2, v0, Lads_mobile_sdk/gp0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_6e

    :catchall_31
    move-exception p2

    goto :goto_78

    .line 114
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iget-object v4, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rp0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_5e

    :cond_49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    iget-object p2, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 181
    iput-object p0, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iput-object p2, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/gp0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    goto :goto_6c

    :cond_5d
    move-object v4, p0

    .line 182
    :goto_5e
    :try_start_5e
    iput-object p2, v0, Lads_mobile_sdk/gp0;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/gp0;->b:Lads_mobile_sdk/fl1;

    iput-object v5, v0, Lads_mobile_sdk/gp0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/gp0;->f:I

    invoke-virtual {v4, p1, v0}, Lads_mobile_sdk/rp0;->b(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_74

    if-ne p1, v1, :cond_6d

    :goto_6c
    return-object v1

    :cond_6d
    move-object p1, p2

    .line 183
    :goto_6e
    :try_start_6e
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_31

    .line 252
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_74
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 253
    :goto_78
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 254
    instance-of v0, p1, Lads_mobile_sdk/kp0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/kp0;

    iget v1, v0, Lads_mobile_sdk/kp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kp0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/kp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/kp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 281
    iget v2, v0, Lads_mobile_sdk/kp0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/kp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/kp0;->a:Lads_mobile_sdk/rp0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/rp0;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 406
    iput-object p0, v0, Lads_mobile_sdk/kp0;->a:Lads_mobile_sdk/rp0;

    iput-object p1, v0, Lads_mobile_sdk/kp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kp0;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 407
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/rp0;->c:Lads_mobile_sdk/fl1;

    if-eqz p1, :cond_5f

    .line 408
    iget-object p1, p1, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_5f

    .line 409
    iget-object p1, p1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_5f

    .line 410
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_60

    :catchall_5d
    move-exception p1

    goto :goto_68

    :cond_5f
    const/4 v3, 0x0

    .line 411
    :goto_60
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_5d

    .line 538
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 539
    :goto_68
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/lp0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/lp0;

    iget v1, v0, Lads_mobile_sdk/lp0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lp0;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/lp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/lp0;-><init>(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/lp0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lads_mobile_sdk/lp0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iput v3, v0, Lads_mobile_sdk/lp0;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    .line 39
    :cond_3d
    :goto_3d
    check-cast p1, Lads_mobile_sdk/v01;

    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
