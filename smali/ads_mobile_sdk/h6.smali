###### Class ads_mobile_sdk.h6 (ads_mobile_sdk.h6)
.class public abstract Lads_mobile_sdk/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ox0;
.implements Lads_mobile_sdk/n92;


# static fields
.field public static final K:Ljava/util/Set;


# instance fields
.field public final C:Ljava/util/Queue;

.field public final E:Lkotlinx/coroutines/CompletableJob;

.field public F:Lkotlinx/coroutines/CompletableJob;

.field public G:Lkotlinx/coroutines/CompletableJob;

.field public H:Lkotlinx/coroutines/CompletableJob;

.field public I:Lkotlinx/coroutines/CompletableJob;

.field public J:Lkotlinx/coroutines/CompletableJob;

.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/tx;

.field public final j:Z

.field public final k:Lads_mobile_sdk/j53;

.field public final m:J

.field public final n:Z

.field public final p:I

.field public final u:Lkotlinx/coroutines/sync/Mutex;

.field public v:Lads_mobile_sdk/w4;

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 640
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_AD_RESPONSE:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->REQUEST_ID_MISMATCH:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    sget-object v3, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->APP_ID_MISSING:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->AD_RESPONSE_ALREADY_USED:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v0

    .line 641
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/h6;->K:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p1, Lads_mobile_sdk/z4;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z4;

    iget v1, v0, Lads_mobile_sdk/z4;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z4;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/z4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/z4;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 531
    iget v2, v0, Lads_mobile_sdk/z4;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p0, v0, Lads_mobile_sdk/z4;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    :try_start_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_67

    :catchall_36
    move-exception p0

    goto/16 :goto_aa

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-object p0, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, p0

    move-object p0, v12

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1532
    iput-object p0, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/z4;->f:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    goto :goto_a3

    :cond_5e
    move-object v2, p1

    .line 1533
    :goto_5f
    :try_start_5f
    iget-object p1, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object p0, p1

    .line 1534
    :cond_67
    :goto_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 1535
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yt2;

    .line 1537
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v6, v4, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1539
    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    .line 1540
    iget-wide v8, p1, Lads_mobile_sdk/yt2;->b:J

    .line 1541
    iget-wide v10, v4, Lads_mobile_sdk/h6;->m:J

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v6

    if-ltz v6, :cond_67

    .line 1542
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v4, v0, Lads_mobile_sdk/z4;->a:Lads_mobile_sdk/h6;

    iput-object v2, v0, Lads_mobile_sdk/z4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lads_mobile_sdk/z4;->c:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/z4;->f:I

    invoke-virtual {v4, p0, p1, v0}, Lads_mobile_sdk/h6;->a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_67

    :goto_a3
    return-object v1

    .line 1545
    :cond_a4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_5f .. :try_end_a6} :catchall_36

    .line 2539
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_aa
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static c(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/x4;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/x4;

    iget v1, v0, Lads_mobile_sdk/x4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x4;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/x4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/x4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/x4;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 279
    iget v2, v0, Lads_mobile_sdk/x4;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lads_mobile_sdk/x4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 280
    iput-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    iput v4, v0, Lads_mobile_sdk/x4;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-static {p0, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_69

    .line 282
    :cond_50
    :goto_50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5b

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 283
    :cond_5b
    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1233
    iput-object p0, v0, Lads_mobile_sdk/x4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/x4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/x4;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6a

    :goto_69
    return-object v1

    :cond_6a
    move-object v0, p0

    move-object p0, p1

    .line 1234
    :goto_6c
    :try_start_6c
    iget-object p1, v0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1235
    sget-object p1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    iput-object p1, v0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 1236
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_7b

    .line 2187
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_7b
    move-exception p1

    .line 2188
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/y4;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y4;

    iget v1, v0, Lads_mobile_sdk/y4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y4;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/y4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y4;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/y4;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 260
    iget v2, v0, Lads_mobile_sdk/y4;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/y4;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/y4;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1210
    iput-object p0, v0, Lads_mobile_sdk/y4;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/y4;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/y4;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1211
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->y:Z

    if-nez v0, :cond_8a

    .line 1212
    iget-object v0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lads_mobile_sdk/h6;->p:I

    if-lt v0, v1, :cond_59

    goto :goto_8a

    .line 1213
    :cond_59
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-eq v0, v1, :cond_8a

    .line 1214
    iget-object v0, p0, Lads_mobile_sdk/h6;->E:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1215
    iget-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1216
    iget-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1217
    iget-object v0, p0, Lads_mobile_sdk/h6;->F:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1218
    iget-object p0, p0, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p0

    if-eqz p0, :cond_8a

    goto :goto_8b

    :catchall_88
    move-exception p0

    goto :goto_93

    :cond_8a
    :goto_8a
    const/4 v3, 0x0

    .line 1219
    :goto_8b
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_8f
    .catchall {:try_start_4a .. :try_end_8f} :catchall_88

    .line 2172
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 2173
    :goto_93
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic e(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n5;

    iget v1, v0, Lads_mobile_sdk/n5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/n5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 256
    iget v2, v0, Lads_mobile_sdk/n5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/n5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/n5;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1199
    iput-object p0, v0, Lads_mobile_sdk/n5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/n5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/n5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1200
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v0, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-ne p0, v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_5a

    .line 2146
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_5a
    move-exception p0

    .line 2147
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 255
    instance-of v0, p1, Lads_mobile_sdk/o5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o5;

    iget v1, v0, Lads_mobile_sdk/o5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 464
    iget v2, v0, Lads_mobile_sdk/o5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/o5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o5;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1353
    iput-object p0, v0, Lads_mobile_sdk/o5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/o5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1354
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_58

    .line 2247
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_58
    move-exception p0

    .line 2248
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static g(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 45
    instance-of v0, p1, Lads_mobile_sdk/r5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/r5;

    iget v1, v0, Lads_mobile_sdk/r5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/r5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/r5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/r5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46
    iget v2, v0, Lads_mobile_sdk/r5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/r5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/r5;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1077
    iput-object p0, v0, Lads_mobile_sdk/r5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/r5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/r5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1078
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_58

    .line 2112
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_58
    move-exception p0

    goto :goto_7b

    .line 2113
    :cond_5a
    :try_start_5a
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    .line 2114
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez v0, :cond_65

    goto :goto_75

    .line 2115
    :cond_65
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v1, :cond_75

    .line 2116
    sget-object v0, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 2117
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 2118
    :cond_75
    :goto_75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_58

    .line 3149
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_7b
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic h(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/s5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/s5;

    iget v1, v0, Lads_mobile_sdk/s5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/s5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/s5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/s5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/s5;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_72

    :catchall_31
    move-exception p1

    goto :goto_78

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_59

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1038
    iput-object p0, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/s5;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    goto :goto_6e

    .line 1039
    :cond_59
    :goto_59
    :try_start_59
    iget-object v2, p0, Lads_mobile_sdk/h6;->J:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1040
    iget-boolean v2, p0, Lads_mobile_sdk/h6;->n:Z

    if-eqz v2, :cond_71

    .line 1041
    iput-object p1, v0, Lads_mobile_sdk/s5;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/s5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/s5;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/h6;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_6f

    if-ne p0, v1, :cond_71

    :goto_6e
    return-object v1

    :catchall_6f
    move-exception p0

    goto :goto_7b

    :cond_71
    move-object p0, p1

    .line 1043
    :goto_72
    :try_start_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_31

    .line 2078
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_78
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_7b
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic i(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 56
    instance-of v0, p1, Lads_mobile_sdk/t5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/t5;

    iget v1, v0, Lads_mobile_sdk/t5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/t5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/t5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lads_mobile_sdk/t5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/t5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/t5;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1102
    iput-object p0, v0, Lads_mobile_sdk/t5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/t5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/t5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1103
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    .line 2151
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_55
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static j(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/u5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/u5;

    iget v1, v0, Lads_mobile_sdk/u5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/u5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/u5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/u5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/u5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/u5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/u5;->a:Lads_mobile_sdk/h6;

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

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1042
    iput-object p0, v0, Lads_mobile_sdk/u5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/u5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/u5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 1043
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_58

    .line 2086
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_58
    move-exception p0

    goto :goto_7b

    .line 2087
    :cond_5a
    :try_start_5a
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->I:Lkotlinx/coroutines/CompletableJob;

    .line 2088
    iget-boolean v0, p0, Lads_mobile_sdk/h6;->j:Z

    if-nez v0, :cond_65

    goto :goto_75

    .line 2089
    :cond_65
    iget-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v1, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v1, :cond_75

    .line 2090
    sget-object v0, Lads_mobile_sdk/w4;->a:Lads_mobile_sdk/w4;

    iput-object v0, p0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 2091
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/h6;->H:Lkotlinx/coroutines/CompletableJob;

    .line 2092
    :cond_75
    :goto_75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_58

    .line 3132
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_7b
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 15745
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->i(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 2714
    instance-of p1, p3, Lads_mobile_sdk/a5;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/a5;

    iget v0, p1, Lads_mobile_sdk/a5;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/a5;->e:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/a5;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/a5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lads_mobile_sdk/a5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3217
    iget v0, p1, Lads_mobile_sdk/a5;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_51

    if-eq v0, v1, :cond_40

    const/4 p2, 0x2

    if-ne v0, p2, :cond_38

    iget-object p2, p1, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iget-object p1, p1, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    :try_start_2c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5316
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_35

    .line 6346
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4c

    :catchall_35
    move-exception p3

    goto/16 :goto_ea

    .line 3218
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    iget-object p2, p1, Lads_mobile_sdk/a5;->b:Lads_mobile_sdk/rr3;

    iget-object p1, p1, Lads_mobile_sdk/a5;->a:Lads_mobile_sdk/rr3;

    :try_start_44
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4240
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4f

    .line 5233
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 6347
    :goto_4c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_4f
    move-exception p3

    goto :goto_92

    .line 3219
    :cond_51
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3223
    iget-object p1, p0, Lads_mobile_sdk/h6;->e:Lads_mobile_sdk/g83;

    sget-object p3, Lads_mobile_sdk/s11;->l1:Lads_mobile_sdk/s11;

    .line 4215
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4216
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 4217
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 4218
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 4219
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 4220
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 4221
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 4222
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 4223
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v4, :cond_d1

    .line 4224
    invoke-static {p1, p3, v0, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 4225
    :try_start_81
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p3

    invoke-virtual {p3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_90

    .line 4226
    :try_start_88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4227
    throw v2
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception p2

    :goto_8d
    move-object p3, p2

    move-object p2, p1

    goto :goto_92

    :catchall_90
    move-exception p2

    goto :goto_8d

    .line 5241
    :goto_92
    :try_start_92
    invoke-virtual {p1, p3}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5245
    instance-of v0, p3, Lads_mobile_sdk/v24;

    if-nez v0, :cond_ca

    .line 5247
    instance-of v0, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_a7

    instance-of v0, p3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a7

    .line 5253
    invoke-virtual {p1, p3}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a7

    :catchall_a5
    move-exception p1

    goto :goto_cb

    .line 5259
    :cond_a7
    :goto_a7
    instance-of p1, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_c2

    .line 5260
    instance-of p1, p3, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_ba

    .line 5261
    instance-of p1, p3, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_b4

    throw p3

    .line 5262
    :cond_b4
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p3}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5263
    :cond_ba
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p3, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 5264
    :cond_c2
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p3, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 5265
    :cond_ca
    throw p3
    :try_end_cb
    .catchall {:try_start_92 .. :try_end_cb} :catchall_a5

    .line 5266
    :goto_cb
    :try_start_cb
    throw p1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 5300
    :cond_d1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p3, p1, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 5301
    :try_start_d9
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p3

    invoke-virtual {p3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_e8

    .line 5302
    :try_start_e0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5303
    throw v2
    :try_end_e4
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception p2

    :goto_e5
    move-object p3, p2

    move-object p2, p1

    goto :goto_ea

    :catchall_e8
    move-exception p2

    goto :goto_e5

    .line 7378
    :goto_ea
    :try_start_ea
    invoke-virtual {p1, p3}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7382
    instance-of v0, p3, Lads_mobile_sdk/v24;

    if-nez v0, :cond_122

    .line 7384
    instance-of v0, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_ff

    instance-of v0, p3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_ff

    .line 7390
    invoke-virtual {p1, p3}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_ff

    :catchall_fd
    move-exception p1

    goto :goto_123

    .line 7396
    :cond_ff
    :goto_ff
    instance-of p1, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_11a

    .line 7397
    instance-of p1, p3, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_112

    .line 7398
    instance-of p1, p3, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_10c

    throw p3

    .line 7399
    :cond_10c
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p3}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 7400
    :cond_112
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p3, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 7401
    :cond_11a
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p3, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 7402
    :cond_122
    throw p3
    :try_end_123
    .catchall {:try_start_ea .. :try_end_123} :catchall_fd

    .line 7403
    :goto_123
    :try_start_123
    throw p1
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_124

    :catchall_124
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 18786
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->h(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 16611
    instance-of v0, p1, Lads_mobile_sdk/b5;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/b5;

    iget v1, v0, Lads_mobile_sdk/b5;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b5;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/b5;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/b5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/b5;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16881
    iget v2, v0, Lads_mobile_sdk/b5;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/b5;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/b5;->a:Lads_mobile_sdk/h6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 17831
    iput-object p0, v0, Lads_mobile_sdk/b5;->a:Lads_mobile_sdk/h6;

    iput-object p1, v0, Lads_mobile_sdk/b5;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/b5;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 17832
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 17833
    iget-object v0, v0, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    sget-object v3, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-eq v0, v3, :cond_61

    sget-object v3, Lads_mobile_sdk/w4;->b:Lads_mobile_sdk/w4;

    if-ne v0, v3, :cond_5d

    goto :goto_61

    :cond_5d
    move p1, v2

    goto :goto_61

    :catchall_5f
    move-exception p1

    goto :goto_6e

    :cond_61
    :goto_61
    const/4 v0, 0x0

    .line 17836
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_5f

    .line 18785
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_6e
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2189
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->j(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2174
    invoke-static {p0, p3}, Lads_mobile_sdk/h6;->g(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/y5;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/y5;

    iget v3, v2, Lads_mobile_sdk/y5;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/y5;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/y5;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/y5;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/y5;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 471
    iget v4, v2, Lads_mobile_sdk/y5;->f:I

    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    if-ne v4, v5, :cond_33

    iget-wide v6, v2, Lads_mobile_sdk/y5;->c:J

    iget-object v4, v2, Lads_mobile_sdk/y5;->b:Ljava/util/Iterator;

    iget-object v8, v2, Lads_mobile_sdk/y5;->a:Lads_mobile_sdk/h6;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, v0, Lads_mobile_sdk/h6;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 474
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    .line 475
    iget-object v1, v0, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v0

    .line 476
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 477
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yt2;

    .line 478
    iget-wide v9, v1, Lads_mobile_sdk/yt2;->b:J

    .line 479
    iget-wide v11, v8, Lads_mobile_sdk/h6;->m:J

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v6, v7}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v9

    .line 480
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v11}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v11

    if-gtz v11, :cond_8c

    .line 481
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v8, v2, Lads_mobile_sdk/y5;->a:Lads_mobile_sdk/h6;

    iput-object v4, v2, Lads_mobile_sdk/y5;->b:Ljava/util/Iterator;

    iput-wide v6, v2, Lads_mobile_sdk/y5;->c:J

    iput v5, v2, Lads_mobile_sdk/y5;->f:I

    invoke-virtual {v8, v4, v1, v2}, Lads_mobile_sdk/h6;->a(Ljava/util/Iterator;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_56

    return-object v3

    .line 482
    :cond_8c
    iget-object v11, v1, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    const/4 v12, 0x0

    if-eqz v11, :cond_94

    .line 483
    invoke-static {v11, v12, v5, v12}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 484
    :cond_94
    iget-object v13, v8, Lads_mobile_sdk/h6;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/z5;

    invoke-direct {v11, v9, v10, v8, v12}, Lads_mobile_sdk/z5;-><init>(JLads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 485
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 486
    const-string v9, "<this>"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "block"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v11, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v9

    .line 745
    iput-object v9, v1, Lads_mobile_sdk/yt2;->c:Lkotlinx/coroutines/Job;

    goto :goto_56

    .line 746
    :cond_bf
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
