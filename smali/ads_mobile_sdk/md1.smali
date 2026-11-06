###### Class ads_mobile_sdk.md1 (ads_mobile_sdk.md1)
.class public final Lads_mobile_sdk/md1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;
.implements Lads_mobile_sdk/li1;


# instance fields
.field public final a:Lads_mobile_sdk/if1;

.field public final b:Lads_mobile_sdk/j53;

.field public final c:Ljava/util/Optional;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Lcom/google/gson/Gson;

.field public final h:Lads_mobile_sdk/ex0;

.field public final i:Ljava/util/Optional;

.field public j:Ljava/lang/String;

.field public final k:Lkotlinx/coroutines/sync/Mutex;

.field public l:Lads_mobile_sdk/ed1;

.field public m:Z

.field public n:Z

.field public o:Lcom/google/gson/JsonObject;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Lcom/google/gson/JsonObject;

.field public t:Lcom/google/gson/JsonObject;

.field public u:Lads_mobile_sdk/i01;

.field public v:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

.field public w:J

.field public volatile x:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/j53;Ljava/util/Optional;Ljava/lang/String;ZLads_mobile_sdk/tx;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Ljava/util/Optional;)V
    .registers 11

    .line 1
    const-string v0, "inspectorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalRequest"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    .line 43
    iput-object p2, p0, Lads_mobile_sdk/md1;->b:Lads_mobile_sdk/j53;

    .line 44
    iput-object p3, p0, Lads_mobile_sdk/md1;->c:Ljava/util/Optional;

    .line 45
    iput-object p4, p0, Lads_mobile_sdk/md1;->d:Ljava/lang/String;

    .line 46
    iput-boolean p5, p0, Lads_mobile_sdk/md1;->e:Z

    .line 47
    iput-object p6, p0, Lads_mobile_sdk/md1;->f:Lads_mobile_sdk/tx;

    .line 48
    iput-object p7, p0, Lads_mobile_sdk/md1;->g:Lcom/google/gson/Gson;

    .line 49
    iput-object p8, p0, Lads_mobile_sdk/md1;->h:Lads_mobile_sdk/ex0;

    .line 50
    iput-object p9, p0, Lads_mobile_sdk/md1;->i:Ljava/util/Optional;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 55
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 56
    sget-object p1, Lads_mobile_sdk/ed1;->a:Lads_mobile_sdk/ed1;

    iput-object p1, p0, Lads_mobile_sdk/md1;->l:Lads_mobile_sdk/ed1;

    .line 59
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/md1;->o:Lcom/google/gson/JsonObject;

    .line 60
    const-string p1, ""

    iput-object p1, p0, Lads_mobile_sdk/md1;->p:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/md1;->q:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lads_mobile_sdk/md1;->r:Ljava/lang/String;

    .line 63
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/md1;->s:Lcom/google/gson/JsonObject;

    .line 64
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/md1;->t:Lcom/google/gson/JsonObject;

    .line 67
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/md1;->w:J

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/md1;Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1932
    instance-of v0, p2, Lads_mobile_sdk/id1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/id1;

    iget v1, v0, Lads_mobile_sdk/id1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/id1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/id1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/id1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/id1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2030
    iget v2, v0, Lads_mobile_sdk/id1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4b

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object p0, v0, Lads_mobile_sdk/id1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/id1;->b:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/id1;->a:Lads_mobile_sdk/md1;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    goto/16 :goto_a4

    :catchall_34
    move-exception p1

    goto/16 :goto_c3

    .line 2031
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    iget-object p0, v0, Lads_mobile_sdk/id1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/id1;->b:Lads_mobile_sdk/ec3;

    iget-object v2, v0, Lads_mobile_sdk/id1;->a:Lads_mobile_sdk/md1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_66

    :cond_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2032
    iget-boolean p2, p0, Lads_mobile_sdk/md1;->x:Z

    if-nez p2, :cond_55

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2034
    :cond_55
    iget-object p2, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 2253
    iput-object p0, v0, Lads_mobile_sdk/id1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/id1;->b:Lads_mobile_sdk/ec3;

    iput-object p2, v0, Lads_mobile_sdk/id1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/id1;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_66

    goto :goto_9f

    .line 2254
    :cond_66
    :goto_66
    :try_start_66
    iget-object v2, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v2, v2, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v6, v2, Lads_mobile_sdk/zy;->f:Lcom/google/gson/JsonObject;

    iput-object v6, p0, Lads_mobile_sdk/md1;->o:Lcom/google/gson/JsonObject;

    .line 2255
    iget-object v6, v2, Lads_mobile_sdk/zy;->c:Ljava/lang/String;

    iput-object v6, p0, Lads_mobile_sdk/md1;->p:Ljava/lang/String;

    .line 2256
    iget-object v6, v2, Lads_mobile_sdk/zy;->b:Ljava/lang/String;

    iput-object v6, p0, Lads_mobile_sdk/md1;->r:Ljava/lang/String;

    .line 2257
    iget-object v6, v2, Lads_mobile_sdk/zy;->i:Lcom/google/gson/JsonObject;

    iput-object v6, p0, Lads_mobile_sdk/md1;->s:Lcom/google/gson/JsonObject;

    .line 2260
    iget-object v6, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    .line 2261
    iget-object v2, v2, Lads_mobile_sdk/zy;->e:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2262
    iget-object v7, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v7, v7, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v7, v7, Lads_mobile_sdk/zy;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 2263
    iput-object p0, v0, Lads_mobile_sdk/id1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/id1;->b:Lads_mobile_sdk/ec3;

    iput-object p2, v0, Lads_mobile_sdk/id1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/id1;->f:I

    invoke-virtual {v6, v2, v0}, Lads_mobile_sdk/if1;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9d
    .catchall {:try_start_66 .. :try_end_9d} :catchall_c1

    if-ne v0, v1, :cond_a0

    :goto_9f
    return-object v1

    :cond_a0
    move-object v8, v0

    move-object v0, p0

    move-object p0, p2

    move-object p2, v8

    .line 2264
    :goto_a4
    :try_start_a4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 2269
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object p2, p1, Lads_mobile_sdk/zy;->e:Lcom/google/gson/JsonObject;

    iput-object p2, v0, Lads_mobile_sdk/md1;->t:Lcom/google/gson/JsonObject;

    .line 2270
    iget-object p1, p1, Lads_mobile_sdk/zy;->d:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/md1;->q:Ljava/lang/String;

    goto :goto_bb

    .line 2272
    :cond_b9
    iput-boolean v4, v0, Lads_mobile_sdk/md1;->m:Z

    .line 2274
    :goto_bb
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bd
    .catchall {:try_start_a4 .. :try_end_bd} :catchall_34

    .line 2480
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_c1
    move-exception p1

    move-object p0, p2

    .line 2481
    :goto_c3
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Lads_mobile_sdk/md1;Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 554
    instance-of v0, p3, Lads_mobile_sdk/gd1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/gd1;

    iget v1, v0, Lads_mobile_sdk/gd1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gd1;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/gd1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/gd1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/gd1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 692
    iget v2, v0, Lads_mobile_sdk/gd1;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4d

    if-eq v2, v5, :cond_3f

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b7

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p0, v0, Lads_mobile_sdk/gd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a7

    :cond_3f
    iget-object p0, v0, Lads_mobile_sdk/gd1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/gd1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object p1, v0, Lads_mobile_sdk/gd1;->b:Lads_mobile_sdk/i01;

    iget-object v2, v0, Lads_mobile_sdk/gd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_6a

    :cond_4d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 693
    iget-boolean p3, p0, Lads_mobile_sdk/md1;->x:Z

    if-nez p3, :cond_57

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 695
    :cond_57
    iget-object p3, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 896
    iput-object p0, v0, Lads_mobile_sdk/gd1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/gd1;->b:Lads_mobile_sdk/i01;

    iput-object p2, v0, Lads_mobile_sdk/gd1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object p3, v0, Lads_mobile_sdk/gd1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/gd1;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6a

    goto :goto_b6

    .line 897
    :cond_6a
    :goto_6a
    :try_start_6a
    sget-object v2, Lads_mobile_sdk/ed1;->c:Lads_mobile_sdk/ed1;

    iput-object v2, p0, Lads_mobile_sdk/md1;->l:Lads_mobile_sdk/ed1;

    .line 898
    iput-object p1, p0, Lads_mobile_sdk/md1;->u:Lads_mobile_sdk/i01;

    .line 899
    iput-object p2, p0, Lads_mobile_sdk/md1;->v:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 900
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/md1;->f:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 902
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/md1;->w:J

    .line 903
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_87
    .catchall {:try_start_6a .. :try_end_87} :catchall_ba

    .line 1103
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1104
    iget-object p1, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    iget-object p2, p0, Lads_mobile_sdk/md1;->j:Ljava/lang/String;

    if-nez p2, :cond_96

    const-string p2, "adUnitId"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_96
    iput-object p0, v0, Lads_mobile_sdk/gd1;->a:Lads_mobile_sdk/md1;

    iput-object v6, v0, Lads_mobile_sdk/gd1;->b:Lads_mobile_sdk/i01;

    iput-object v6, v0, Lads_mobile_sdk/gd1;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/gd1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/gd1;->g:I

    invoke-virtual {p1, p2, p0, v0}, Lads_mobile_sdk/if1;->a(Ljava/lang/String;Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a7

    goto :goto_b6

    .line 1106
    :cond_a7
    :goto_a7
    iget-object p0, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v0, Lads_mobile_sdk/gd1;->a:Lads_mobile_sdk/md1;

    iput v3, v0, Lads_mobile_sdk/gd1;->g:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    invoke-static {p0, v0}, Lads_mobile_sdk/if1;->d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b7

    :goto_b6
    return-object v1

    .line 1108
    :cond_b7
    :goto_b7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_ba
    move-exception p0

    .line 1304
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/md1;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1306
    instance-of v0, p2, Lads_mobile_sdk/hd1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/hd1;

    iget v1, v0, Lads_mobile_sdk/hd1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hd1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/hd1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/hd1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/hd1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1307
    iget v2, v0, Lads_mobile_sdk/hd1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    if-eq v2, v5, :cond_3f

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_af

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p0, v0, Lads_mobile_sdk/hd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9f

    :cond_3f
    iget-object p0, v0, Lads_mobile_sdk/hd1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/hd1;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v2, v0, Lads_mobile_sdk/hd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_66

    :cond_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1312
    iget-boolean p2, p0, Lads_mobile_sdk/md1;->x:Z

    if-nez p2, :cond_55

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1314
    :cond_55
    iget-object p2, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 1517
    iput-object p0, v0, Lads_mobile_sdk/hd1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/hd1;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object p2, v0, Lads_mobile_sdk/hd1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/hd1;->f:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_66

    goto :goto_ae

    .line 1518
    :cond_66
    :goto_66
    :try_start_66
    sget-object v2, Lads_mobile_sdk/ed1;->b:Lads_mobile_sdk/ed1;

    iput-object v2, p0, Lads_mobile_sdk/md1;->l:Lads_mobile_sdk/ed1;

    .line 1519
    iput-object p1, p0, Lads_mobile_sdk/md1;->v:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 1520
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/md1;->f:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1522
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v8, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v7

    iput-wide v7, p0, Lads_mobile_sdk/md1;->w:J

    .line 1523
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_b2

    .line 1726
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1727
    iget-object p1, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    iget-object p2, p0, Lads_mobile_sdk/md1;->j:Ljava/lang/String;

    if-nez p2, :cond_90

    const-string p2, "adUnitId"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_90
    iput-object p0, v0, Lads_mobile_sdk/hd1;->a:Lads_mobile_sdk/md1;

    iput-object v6, v0, Lads_mobile_sdk/hd1;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/hd1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/hd1;->f:I

    invoke-virtual {p1, p2, p0, v0}, Lads_mobile_sdk/if1;->a(Ljava/lang/String;Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9f

    goto :goto_ae

    .line 1729
    :cond_9f
    :goto_9f
    iget-object p0, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v0, Lads_mobile_sdk/hd1;->a:Lads_mobile_sdk/md1;

    iput v3, v0, Lads_mobile_sdk/hd1;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    invoke-static {p0, v0}, Lads_mobile_sdk/if1;->d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_af

    :goto_ae
    return-object v1

    .line 1731
    :cond_af
    :goto_af
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_b2
    move-exception p0

    .line 1930
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/fd1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fd1;

    iget v1, v0, Lads_mobile_sdk/fd1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fd1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fd1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fd1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/fd1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lads_mobile_sdk/fd1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/fd1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/fd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 310
    iput-object p0, v0, Lads_mobile_sdk/fd1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/fd1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/fd1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 311
    :cond_4a
    :goto_4a
    :try_start_4a
    iput-boolean v3, p0, Lads_mobile_sdk/md1;->n:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    .line 551
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_52
    move-exception p0

    .line 552
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic b(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/jd1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/jd1;

    iget v1, v0, Lads_mobile_sdk/jd1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/jd1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/jd1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/jd1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/jd1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 77
    iget v2, v0, Lads_mobile_sdk/jd1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object p0, v0, Lads_mobile_sdk/jd1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/jd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9a

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lads_mobile_sdk/md1;->c:Ljava/util/Optional;

    invoke-static {p1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const/4 v2, 0x0

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_49
    move-object p1, v2

    :goto_4a
    const/4 v4, 0x0

    if-nez p1, :cond_4f

    move v5, v3

    goto :goto_50

    :cond_4f
    move v5, v4

    .line 82
    :goto_50
    iget-object v6, p0, Lads_mobile_sdk/md1;->i:Ljava/util/Optional;

    invoke-static {v6}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    if-nez v6, :cond_68

    iget-object v6, p0, Lads_mobile_sdk/md1;->c:Ljava/util/Optional;

    invoke-static {v6}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    if-eqz v7, :cond_67

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    goto :goto_68

    :cond_67
    move-object v6, v2

    :cond_68
    :goto_68
    if-eqz v6, :cond_6e

    .line 84
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v2

    :cond_6e
    sget-object v6, Lads_mobile_sdk/x11;->k:Lads_mobile_sdk/x11;

    if-ne v2, v6, :cond_74

    move v2, v3

    goto :goto_75

    :cond_74
    move v2, v4

    .line 86
    :goto_75
    iget-object v6, p0, Lads_mobile_sdk/md1;->h:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->b()Z

    move-result v6

    if-eqz v6, :cond_80

    if-eqz v2, :cond_80

    move v4, v3

    :cond_80
    if-eqz v5, :cond_87

    if-nez v4, :cond_87

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 93
    :cond_87
    iget-object v2, p0, Lads_mobile_sdk/md1;->a:Lads_mobile_sdk/if1;

    iput-object p0, v0, Lads_mobile_sdk/jd1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/jd1;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/jd1;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/if1;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_96

    return-object v1

    :cond_96
    move-object v8, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v8

    .line 94
    :goto_9a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_bf

    if-nez p0, :cond_bb

    .line 95
    iget-object p0, v0, Lads_mobile_sdk/md1;->b:Lads_mobile_sdk/j53;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SERVER_TO_SERVER_AD_UNIT_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_bb
    iput-object p0, v0, Lads_mobile_sdk/md1;->j:Ljava/lang/String;

    .line 96
    iput-boolean v3, v0, Lads_mobile_sdk/md1;->x:Z

    .line 98
    :cond_bf
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/gson/JsonObject;
    .registers 14

    .line 2649
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2650
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "winningAdapterClassName"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    iget-wide v1, p0, Lads_mobile_sdk/md1;->w:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "responseSecsSinceEpoch"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2652
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    iget-object v1, p0, Lads_mobile_sdk/md1;->p:Ljava/lang/String;

    const-string v2, "adRequestUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    iget-object v1, p0, Lads_mobile_sdk/md1;->r:Ljava/lang/String;

    const-string v2, "postBody"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    iget-object v1, p0, Lads_mobile_sdk/md1;->q:Ljava/lang/String;

    const-string v2, "adResponseBody"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    iget-boolean v1, p0, Lads_mobile_sdk/md1;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasExceededMemoryLimit"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2657
    iget-object v1, p0, Lads_mobile_sdk/md1;->t:Lcom/google/gson/JsonObject;

    const-string v2, "adResponseHeaders"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2658
    iget-object v1, p0, Lads_mobile_sdk/md1;->s:Lcom/google/gson/JsonObject;

    const-string v2, "transactionExtras"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2659
    iget-object v1, p0, Lads_mobile_sdk/md1;->o:Lcom/google/gson/JsonObject;

    const-string v2, "biddingData"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2661
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2662
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdSourceResponses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "underlyingError"

    const-string v5, "errorDescription"

    const-string v6, "errorCode"

    const-string v7, "errorDomain"

    if-eqz v3, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 2663
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2664
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adapterClassName"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getLatencyMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "latencyMillis"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2666
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v9

    .line 2667
    sget-object v10, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_9d
    iget-object v10, p0, Lads_mobile_sdk/md1;->g:Lcom/google/gson/Gson;

    invoke-virtual {v10, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-class v11, Lcom/google/gson/JsonObject;

    invoke-virtual {v10, v9, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonObject;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ab} :catch_ac

    goto :goto_ca

    :catch_ac
    move-exception v9

    .line 2668
    const-string v10, "t"

    invoke-static {v9, v10, v9}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v10

    .line 2669
    iget-object v10, v10, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 2670
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    :cond_c3
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :goto_ca
    if-nez v9, :cond_d1

    .line 2671
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2672
    :cond_d1
    const-string v10, "credentials"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2675
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdError()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    move-result-object v3

    if-nez v3, :cond_df

    .line 2676
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_ff

    .line 2677
    :cond_df
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2678
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2680
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v9, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object v3, v9

    .line 2682
    :goto_ff
    const-string v4, "error"

    invoke-virtual {v8, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2683
    invoke-virtual {v1, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_68

    .line 2685
    :cond_109
    const-string v2, "adNetworks"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2687
    iget-object v1, p0, Lads_mobile_sdk/md1;->u:Lads_mobile_sdk/i01;

    .line 2688
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdSourceResponses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14e

    if-eqz v1, :cond_14e

    .line 2690
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2692
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2693
    const-string v3, "com.google.android.libraries.ads.mobile.sdk"

    invoke-virtual {v2, v7, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v1}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-static {v1}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v2, v4, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2697
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 2698
    const-string v1, "errors"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_14e
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1305
    invoke-static {p0, p3, p4}, Lads_mobile_sdk/md1;->a(Lads_mobile_sdk/md1;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1931
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/md1;->a(Lads_mobile_sdk/md1;Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 553
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/md1;->a(Lads_mobile_sdk/md1;Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 99
    instance-of v0, p1, Lads_mobile_sdk/kd1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/kd1;

    iget v1, v0, Lads_mobile_sdk/kd1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kd1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kd1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/kd1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/kd1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 168
    iget v2, v0, Lads_mobile_sdk/kd1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/kd1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/kd1;->a:Lads_mobile_sdk/md1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 397
    iput-object p0, v0, Lads_mobile_sdk/kd1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/kd1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kd1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 398
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/md1;->l:Lads_mobile_sdk/ed1;

    sget-object v0, Lads_mobile_sdk/ed1;->a:Lads_mobile_sdk/ed1;

    if-eq p1, v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_5a

    .line 631
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_5a
    move-exception p1

    .line 632
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/md1;->b(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ld1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ld1;

    iget v1, v0, Lads_mobile_sdk/ld1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ld1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ld1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ld1;-><init>(Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ld1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 153
    iget v2, v0, Lads_mobile_sdk/ld1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/ld1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ld1;->a:Lads_mobile_sdk/md1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/md1;->k:Lkotlinx/coroutines/sync/Mutex;

    .line 354
    iput-object p0, v0, Lads_mobile_sdk/ld1;->a:Lads_mobile_sdk/md1;

    iput-object p1, v0, Lads_mobile_sdk/ld1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ld1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 355
    :goto_4a
    :try_start_4a
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 356
    const-string v2, "state"

    iget-object v3, v0, Lads_mobile_sdk/md1;->l:Lads_mobile_sdk/ed1;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v2, "format"

    iget-object v3, v0, Lads_mobile_sdk/md1;->b:Lads_mobile_sdk/j53;

    .line 358
    iget-object v3, v3, Lads_mobile_sdk/j53;->a:Ljava/lang/String;

    .line 359
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "toUpperCase(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "isOutOfContext"

    iget-boolean v3, v0, Lads_mobile_sdk/md1;->e:Z

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    iget-boolean v2, v0, Lads_mobile_sdk/md1;->e:Z

    if-eqz v2, :cond_8b

    .line 362
    const-string v2, "shown"

    iget-boolean v3, v0, Lads_mobile_sdk/md1;->n:Z

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_8b

    :catchall_89
    move-exception p1

    goto :goto_9c

    .line 365
    :cond_8b
    :goto_8b
    iget-object v2, v0, Lads_mobile_sdk/md1;->v:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    if-eqz v2, :cond_98

    const-string v3, "responseInfo"

    invoke-virtual {v0, v2}, Lads_mobile_sdk/md1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_98
    .catchall {:try_start_4a .. :try_end_98} :catchall_89

    .line 561
    :cond_98
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 562
    :goto_9c
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
