###### Class ads_mobile_sdk.hf (ads_mobile_sdk.hf)
.class public final Lads_mobile_sdk/hf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/List;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Landroid/content/Context;

.field public final d:Lads_mobile_sdk/rv1;

.field public final e:Lads_mobile_sdk/kf;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/pn;

.field public final h:Lads_mobile_sdk/tx;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/g83;

.field public final k:Lads_mobile_sdk/ja1;

.field public final l:Lkotlinx/coroutines/sync/Mutex;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:J

.field public p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

.field public q:J

.field public r:J

.field public s:I

.field public t:J

.field public final u:Lkotlinx/coroutines/sync/Mutex;

.field public final v:Ljava/util/LinkedHashSet;

.field public final w:Ljava/util/LinkedHashSet;

.field public x:Ljava/util/Set;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final z:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 624
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    const-string v1, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Lads_mobile_sdk/rv1;Lads_mobile_sdk/kf;Lads_mobile_sdk/f0;Lads_mobile_sdk/pn;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/ja1;)V
    .registers 13

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdapterProxyFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterStatusMapUpdater"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 81
    iput-object p2, p0, Lads_mobile_sdk/hf;->b:Lkotlin/coroutines/CoroutineContext;

    .line 82
    iput-object p3, p0, Lads_mobile_sdk/hf;->c:Landroid/content/Context;

    .line 83
    iput-object p4, p0, Lads_mobile_sdk/hf;->d:Lads_mobile_sdk/rv1;

    .line 84
    iput-object p5, p0, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 85
    iput-object p6, p0, Lads_mobile_sdk/hf;->f:Lads_mobile_sdk/f0;

    .line 86
    iput-object p7, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    .line 87
    iput-object p8, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    .line 88
    iput-object p9, p0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    .line 89
    iput-object p10, p0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    .line 90
    iput-object p11, p0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 93
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 97
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 104
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    .line 106
    sget-object p4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->o:J

    const/4 p5, 0x7

    .line 107
    invoke-static {p3, p3, p5}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 108
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->q:J

    .line 110
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->r:J

    .line 112
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p4

    iput-wide p4, p0, Lads_mobile_sdk/hf;->t:J

    .line 119
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 123
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    .line 126
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    .line 131
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lads_mobile_sdk/hf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 35988
    instance-of v0, p2, Lads_mobile_sdk/ef;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ef;

    iget v1, v0, Lads_mobile_sdk/ef;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ef;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ef;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ef;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ef;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35989
    iget v2, v0, Lads_mobile_sdk/ef;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lads_mobile_sdk/ef;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/ef;->b:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    iget-object v0, v0, Lads_mobile_sdk/ef;->a:Lads_mobile_sdk/hf;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v0

    goto :goto_4e

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35990
    iget-object p2, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 36482
    iput-object p0, v0, Lads_mobile_sdk/ef;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ef;->b:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    iput-object p2, v0, Lads_mobile_sdk/ef;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ef;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    .line 36483
    :cond_4e
    :goto_4e
    :try_start_4e
    iput-object p1, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 36484
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 36486
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lads_mobile_sdk/hf;->o:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/hf;->q:J

    .line 36487
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_6f

    .line 36980
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_6f
    move-exception p0

    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 32000
    instance-of v0, p3, Lads_mobile_sdk/bf;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/bf;

    iget v1, v0, Lads_mobile_sdk/bf;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bf;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bf;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/bf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/bf;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32558
    iget v2, v0, Lads_mobile_sdk/bf;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p0, v0, Lads_mobile_sdk/bf;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/bf;->c:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/bf;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v0, v0, Lads_mobile_sdk/bf;->a:Lads_mobile_sdk/hf;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v0

    goto :goto_52

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32561
    iget-object p3, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 33053
    iput-object p0, v0, Lads_mobile_sdk/bf;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/bf;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object p2, v0, Lads_mobile_sdk/bf;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/bf;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/bf;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    .line 33054
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result p1

    if-nez p1, :cond_63

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_60

    .line 33549
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_60
    move-exception p0

    goto/16 :goto_d1

    .line 33550
    :cond_63
    :try_start_63
    iget-object p1, p0, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    const/4 v0, 0x0

    if-nez p1, :cond_70

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_60

    .line 34041
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 34042
    :cond_70
    :try_start_70
    iget-object v1, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lads_mobile_sdk/pn;->a(Ljava/util/Collection;Lads_mobile_sdk/ex0;)Ljava/util/List;

    move-result-object p2

    .line 34528
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_8a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_c9

    .line 34529
    :cond_8a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34530
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 35018
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a7

    goto :goto_c0

    .line 35019
    :cond_a7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ab
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35020
    iget-object v1, p0, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ab

    goto :goto_c1

    :cond_c0
    :goto_c0
    move v3, v0

    .line 35502
    :goto_c1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_c5
    .catchall {:try_start_70 .. :try_end_c5} :catchall_60

    .line 35503
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 35504
    :cond_c9
    :goto_c9
    :try_start_c9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_60

    .line 35987
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_d1
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 13339
    instance-of v4, v3, Lads_mobile_sdk/te;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/te;

    iget v5, v4, Lads_mobile_sdk/te;->m:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/te;->m:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lads_mobile_sdk/te;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/te;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_20
    iget-object v3, v4, Lads_mobile_sdk/te;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 13508
    iget v6, v4, Lads_mobile_sdk/te;->m:I

    const-string v7, "getInitializedAdapterClassesList(...)"

    const-string v8, "toBuilder(...)"

    const-string v9, "Timeout."

    const-string v10, "getExcludedAdapterClassesList(...)"

    const-string v11, "getAllowedAdapterClassesList(...)"

    const-string v12, "getAllowedFormatsList(...)"

    const-string v13, "getAllowedAdUnitsList(...)"

    const-string v14, "newBuilder(...)"

    const-string v15, "No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect."

    move-object/from16 p3, v3

    const-string v3, "build(...)"

    move/from16 v17, v6

    const-string v6, "builder"

    move-object/from16 v18, v15

    const-string v15, "values"

    move-object/from16 v20, v7

    const-string v7, "<this>"

    move-object/from16 v21, v8

    packed-switch v17, :pswitch_data_a7c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_57
    iget-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ie;

    iget-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v11, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v13, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_73
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_87

    move-object/from16 p3, v1

    move-object v1, v0

    move-object/from16 v0, p3

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    move-object/from16 p3, v9

    move-object v14, v12

    move-object/from16 v26, v15

    move-object v12, v7

    goto/16 :goto_92c

    :catchall_87
    move-exception v0

    goto/16 :goto_a2d

    .line 13509
    :pswitch_8a
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ie;

    iget-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v11, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v13, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_a2
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_87

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    move-object/from16 p3, v9

    move-object v14, v12

    move-object/from16 v26, v15

    move-object v3, v2

    move-object v12, v7

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_90a

    .line 13510
    :pswitch_b4
    iget-object v0, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v2, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v10, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v11, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/ie;

    iget-object v12, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v12, Ljava/io/Closeable;

    iget-object v13, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v13, Lads_mobile_sdk/rr3;

    iget-object v14, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v8, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 v18, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_d8
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_ec

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    move-object/from16 p3, v9

    move-object v6, v12

    move-object/from16 v26, v15

    const/4 v9, 0x0

    move-object v3, v2

    move-object v12, v7

    move-object v2, v0

    move-object/from16 v0, v18

    goto/16 :goto_8ba

    :catchall_ec
    move-exception v0

    goto/16 :goto_8d5

    .line 13511
    :pswitch_ef
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v8, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_10f
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_12f

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    move-object/from16 p3, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object v3, v14

    move-object/from16 v28, v15

    move-object/from16 v9, p0

    move-object v6, v0

    move-object v12, v7

    move-object v10, v8

    move-object v15, v13

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object v8, v2

    move-object/from16 v2, p1

    goto/16 :goto_72b

    :catchall_12f
    move-exception v0

    goto/16 :goto_a37

    .line 13512
    :pswitch_132
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v8, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_152
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_12f

    move-object/from16 v22, v3

    move-object/from16 p3, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object v3, v14

    move-object/from16 v9, p0

    move-object v11, v0

    move-object v0, v1

    move-object v12, v7

    move-object v10, v8

    move-object v7, v15

    move-object/from16 v1, p2

    move-object v8, v2

    move-object v15, v13

    move-object/from16 v2, p1

    goto/16 :goto_6c6

    .line 13513
    :pswitch_16f
    iget-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ie;

    iget-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v10, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_18b
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_199

    move-object/from16 v22, v3

    move-object/from16 v27, v7

    move-object/from16 p3, v9

    move-object/from16 v26, v15

    move-object v3, v0

    goto/16 :goto_539

    :catchall_199
    move-exception v0

    goto/16 :goto_63f

    .line 13514
    :pswitch_19c
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ie;

    iget-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v10, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_1b4
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_199

    move-object/from16 p3, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, p3

    move-object/from16 v22, v3

    move-object/from16 v27, v7

    move-object/from16 p3, v9

    move-object/from16 v26, v15

    goto/16 :goto_51a

    .line 13515
    :pswitch_1c7
    iget-object v0, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v2, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v8, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/ie;

    iget-object v11, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v11, Ljava/io/Closeable;

    iget-object v12, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v13, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v14, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 v16, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_1eb
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1fc

    move-object/from16 v27, v7

    move-object/from16 p3, v9

    move-object v7, v11

    move-object v9, v12

    move-object/from16 v26, v15

    const/4 v12, 0x0

    move-object v11, v0

    move-object/from16 v0, v16

    goto/16 :goto_4c5

    :catchall_1fc
    move-exception v0

    goto/16 :goto_4e5

    .line 13516
    :pswitch_1ff
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_220
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_223
    .catchall {:try_start_220 .. :try_end_223} :catchall_240

    move-object/from16 v22, v3

    move-object/from16 v27, v7

    move-object v3, v8

    move-object/from16 p3, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v9, 0x0

    move-object/from16 v7, p0

    move-object v8, v0

    move-object v10, v2

    move-object v15, v13

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    goto/16 :goto_343

    :catchall_240
    move-exception v0

    move-object v10, v2

    goto/16 :goto_63f

    .line 13517
    :pswitch_244
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_265
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_268
    .catchall {:try_start_265 .. :try_end_268} :catchall_240

    move-object/from16 v22, v3

    move-object/from16 v27, v7

    move-object v3, v8

    move-object/from16 p3, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v15

    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    move-object v10, v2

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    goto :goto_2df

    .line 13518
    :pswitch_281
    invoke-static/range {p3 .. p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13522
    iget-object v8, v0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    move-object/from16 p3, v9

    .line 13523
    sget-object v9, Lads_mobile_sdk/s11;->h:Lads_mobile_sdk/s11;

    move-object/from16 v22, v3

    .line 13524
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v23, v10

    .line 13525
    new-instance v10, Lads_mobile_sdk/ks3;

    move-object/from16 v24, v11

    .line 13526
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v25, v12

    .line 13527
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v26, v15

    .line 13528
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v27, v7

    .line 13529
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 13530
    invoke-direct {v10, v11, v12, v15, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 13531
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v7

    if-nez v7, :cond_683

    .line 13532
    invoke-static {v8, v9, v3, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 13533
    :try_start_2bd
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 13534
    iget-object v8, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 14032
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2da
    .catchall {:try_start_2bd .. :try_end_2da} :catchall_641

    if-ne v10, v5, :cond_2de

    goto/16 :goto_927

    :cond_2de
    move-object v10, v3

    .line 14033
    :goto_2df
    :try_start_2df
    iget-wide v11, v0, Lads_mobile_sdk/hf;->o:J

    sget-object v9, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object v15, v13

    move-object/from16 v28, v14

    invoke-virtual {v9}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_309

    const/4 v9, 0x1

    .line 14034
    iput-boolean v9, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14035
    iget-object v9, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v11

    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v9}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    iput-wide v11, v0, Lads_mobile_sdk/hf;->o:J

    goto :goto_309

    :catchall_305
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_63b

    .line 14037
    :cond_309
    :goto_309
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_30b
    .catchall {:try_start_2df .. :try_end_30b} :catchall_305

    const/4 v9, 0x0

    .line 14534
    :try_start_30c
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14535
    iget-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v8, :cond_359

    .line 14536
    iget-object v8, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v8}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v8

    if-eqz v8, :cond_359

    .line 14537
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_359

    .line 14538
    iget-object v8, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 15029
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_33a
    .catchall {:try_start_30c .. :try_end_33a} :catchall_352

    if-ne v11, v5, :cond_33e

    goto/16 :goto_927

    :cond_33e
    move-object/from16 v34, v1

    move-object v1, v0

    move-object/from16 v0, v34

    .line 15030
    :goto_343
    :try_start_343
    iget-object v11, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11
    :try_end_349
    .catchall {:try_start_343 .. :try_end_349} :catchall_35c

    .line 15525
    :try_start_349
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v11, :cond_356

    .line 15527
    invoke-static/range {v18 .. v18}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto :goto_356

    :catchall_352
    move-exception v0

    move-object v8, v3

    goto/16 :goto_63f

    :cond_356
    :goto_356
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :cond_359
    move-object v13, v2

    move-object v8, v3

    goto :goto_362

    :catchall_35c
    move-exception v0

    const/4 v9, 0x0

    .line 16020
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_362
    .catchall {:try_start_349 .. :try_end_362} :catchall_352

    .line 16022
    :goto_362
    :try_start_362
    invoke-static {}, Lads_mobile_sdk/ie;->v()Lads_mobile_sdk/he;

    move-result-object v2

    move-object/from16 v3, v28

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16023
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_432

    .line 16024
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getInitializationTimeoutMs()J

    move-result-wide v11

    .line 16025
    invoke-virtual {v2, v11, v12}, Lads_mobile_sdk/he;->a(J)V

    .line 16026
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 16027
    invoke-virtual {v2}, Lads_mobile_sdk/he;->h()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16028
    invoke-direct {v3, v9}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16029
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdUnitIds()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v11, v27

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v26

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16030
    invoke-virtual {v2, v9}, Lads_mobile_sdk/he;->a(Ljava/util/Set;)V

    .line 16031
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 16032
    invoke-virtual {v2}, Lads_mobile_sdk/he;->j()Ljava/util/List;

    move-result-object v9

    move-object/from16 v14, v25

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16033
    invoke-direct {v3, v9}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16034
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdFormats()Ljava/util/Set;

    move-result-object v9

    .line 16520
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v9, v15}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 16521
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3b5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3f0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 16522
    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    .line 16523
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16524
    sget-object v16, Lads_mobile_sdk/je;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v16, v15

    packed-switch v15, :pswitch_data_a96

    .line 16534
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_3d5
    sget-object v15, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16535
    :pswitch_3d8
    sget-object v15, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16536
    :pswitch_3db
    sget-object v15, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16537
    :pswitch_3de
    sget-object v15, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16538
    :pswitch_3e1
    sget-object v15, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16539
    :pswitch_3e4
    sget-object v15, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16540
    :pswitch_3e7
    sget-object v15, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    goto :goto_3ec

    .line 16541
    :pswitch_3ea
    sget-object v15, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    .line 16542
    :goto_3ec
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b5

    .line 16543
    :cond_3f0
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16544
    invoke-virtual {v2, v14}, Lads_mobile_sdk/he;->a(Ljava/util/ArrayList;)V

    .line 16545
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 16546
    invoke-virtual {v2}, Lads_mobile_sdk/he;->i()Ljava/util/List;

    move-result-object v9

    move-object/from16 v14, v24

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16547
    invoke-direct {v3, v9}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16548
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdapterClasses()Ljava/util/Set;

    move-result-object v9

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16549
    invoke-virtual {v2, v9}, Lads_mobile_sdk/he;->b(Ljava/util/Set;)V

    .line 16550
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 16551
    invoke-virtual {v2}, Lads_mobile_sdk/he;->k()Ljava/util/List;

    move-result-object v9

    move-object/from16 v14, v23

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16552
    invoke-direct {v3, v9}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16553
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getExcludedAdapterClasses()Ljava/util/Set;

    move-result-object v9

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16554
    invoke-virtual {v2, v9}, Lads_mobile_sdk/he;->c(Ljava/util/Set;)V

    .line 16555
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_436

    :cond_432
    move-object/from16 v12, v26

    move-object/from16 v11, v27

    .line 16556
    :goto_436
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/ie;

    .line 16557
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v9

    invoke-virtual {v9}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v9

    iput-object v2, v9, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    .line 16565
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16567
    iget-boolean v7, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v7, :cond_46b

    .line 16568
    iget-object v7, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v7}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v7

    if-eqz v7, :cond_46b

    .line 16569
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_46b

    move-object/from16 v22, v3

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    goto/16 :goto_5b1

    .line 16577
    :cond_46b
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v1, :cond_477

    .line 16578
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v14

    goto :goto_47d

    .line 16579
    :cond_477
    iget-object v14, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v14}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v14

    .line 16580
    :goto_47d
    iput-wide v14, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 16582
    sget-object v16, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    invoke-virtual/range {v16 .. v16}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v14, v15, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v11

    if-gtz v11, :cond_497

    .line 16583
    iget-object v11, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    iput-wide v11, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_497
    if-eqz v1, :cond_4e9

    .line 16591
    iget-object v11, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 17050
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v13, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v8, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v11, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/4 v12, 0x3

    iput v12, v4, Lads_mobile_sdk/te;->m:I

    const/4 v12, 0x0

    invoke-interface {v11, v12, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_4b7
    .catchall {:try_start_362 .. :try_end_4b7} :catchall_199

    if-ne v14, v5, :cond_4bb

    goto/16 :goto_927

    :cond_4bb
    move-object v14, v10

    move-object v10, v2

    move-object v2, v9

    move-object v9, v14

    move-object v14, v8

    move-object v8, v7

    move-object v7, v14

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    .line 17051
    :goto_4c5
    :try_start_4c5
    iget-object v15, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4cb
    .catchall {:try_start_4c5 .. :try_end_4cb} :catchall_4df

    .line 17514
    :try_start_4cb
    invoke-interface {v11, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 17515
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object v0, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v0

    move-object v0, v8

    move-object v8, v7

    move-object v7, v0

    move-object v0, v1

    move-object v1, v14

    goto :goto_4e9

    :catchall_4db
    move-exception v0

    move-object v11, v7

    move-object v12, v9

    goto :goto_4e5

    :catchall_4df
    move-exception v0

    const/4 v12, 0x0

    .line 17978
    invoke-interface {v11, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_4e5
    .catchall {:try_start_4cb .. :try_end_4e5} :catchall_4db

    :goto_4e5
    move-object v8, v11

    move-object v3, v12

    goto/16 :goto_643

    .line 17979
    :cond_4e9
    :goto_4e9
    :try_start_4e9
    sget-object v11, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v14, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v12, Lads_mobile_sdk/ve;

    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-direct {v12, v0, v1, v9, v3}, Lads_mobile_sdk/ve;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v13, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v3, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x4

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    invoke-virtual {v11, v14, v15, v12, v4}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_515

    goto/16 :goto_927

    :cond_515
    move-object v12, v0

    move-object v0, v2

    move-object v2, v7

    move-object v1, v9

    move-object v11, v13

    .line 17992
    :goto_51a
    iget-object v3, v12, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 18446
    iput-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v11, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v0, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v3, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_534
    .catchall {:try_start_4e9 .. :try_end_534} :catchall_199

    if-ne v7, v5, :cond_538

    goto/16 :goto_927

    :cond_538
    move-object v5, v0

    .line 18447
    :goto_539
    :try_start_539
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 18448
    iget-object v9, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/yd;

    if-nez v9, :cond_554

    goto :goto_53d

    .line 18450
    :cond_554
    sget-object v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    sget-object v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    filled-new-array {v13, v14}, [Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 18451
    iget-object v14, v9, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 18452
    invoke-interface {v14}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a0

    .line 18454
    iget-object v13, v12, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 18455
    iget-object v14, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 18456
    iget-object v9, v9, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 18457
    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;
    :try_end_574
    .catchall {:try_start_539 .. :try_end_574} :catchall_59c

    move-object/from16 v29, v7

    move-object/from16 p0, v8

    .line 18459
    :try_start_578
    iget-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v8, p3

    .line 18460
    invoke-static {v15, v8, v7}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v31

    .line 18465
    invoke-virtual {v12}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v32

    .line 18466
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v9

    move-object/from16 v28, v14

    invoke-static/range {v28 .. v33}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 p3, v8

    move-object/from16 v8, p0

    goto :goto_53d

    :catchall_598
    move-exception v0

    :goto_599
    const/4 v9, 0x0

    goto/16 :goto_637

    :catchall_59c
    move-exception v0

    move-object/from16 p0, v8

    goto :goto_599

    :cond_5a0
    move-object/from16 p0, v8

    goto :goto_53d

    :cond_5a3
    move-object/from16 p0, v8

    .line 18479
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5a7
    .catchall {:try_start_578 .. :try_end_5a7} :catchall_598

    const/4 v9, 0x0

    .line 18918
    :try_start_5a8
    invoke-interface {v3, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_5ab
    .catchall {:try_start_5a8 .. :try_end_5ab} :catchall_633

    move-object/from16 v8, p0

    move-object v9, v1

    move-object v2, v5

    move-object v13, v11

    move-object v0, v12

    .line 18919
    :goto_5b1
    :try_start_5b1
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 19357
    invoke-virtual {v2}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v2

    move-object/from16 v7, v21

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/he;

    .line 19358
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19359
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 19360
    invoke-virtual {v2}, Lads_mobile_sdk/he;->l()Ljava/util/List;

    move-result-object v5

    move-object/from16 v11, v20

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19361
    invoke-direct {v3, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    move-object/from16 v12, v27

    .line 19362
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v26

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19363
    invoke-virtual {v2, v9}, Lads_mobile_sdk/he;->d(Ljava/util/Set;)V

    .line 19364
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19365
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    move-object/from16 v5, v22

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/ie;

    .line 19366
    iput-object v2, v1, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    if-eqz v13, :cond_62c

    .line 19371
    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 19806
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19807
    sget-object v2, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19808
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19809
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19810
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    .line 19816
    new-instance v1, Lads_mobile_sdk/we;

    const/4 v12, 0x0

    invoke-direct {v1, v12, v13, v0, v9}, Lads_mobile_sdk/we;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lads_mobile_sdk/hf;Ljava/util/Set;)V

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_628
    .catchall {:try_start_5b1 .. :try_end_628} :catchall_199

    move-object/from16 v17, v3

    :goto_62a
    const/4 v9, 0x0

    goto :goto_62f

    :cond_62c
    const/16 v17, 0x0

    goto :goto_62a

    .line 19820
    :goto_62f
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v17

    :catchall_633
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_63f

    .line 19871
    :goto_637
    :try_start_637
    invoke-interface {v3, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_63b
    .catchall {:try_start_637 .. :try_end_63b} :catchall_633

    .line 19872
    :goto_63b
    :try_start_63b
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_63f
    .catchall {:try_start_63b .. :try_end_63f} :catchall_352

    :goto_63f
    move-object v3, v10

    goto :goto_643

    :catchall_641
    move-exception v0

    move-object v8, v3

    .line 19932
    :goto_643
    :try_start_643
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 19936
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_67c

    .line 19938
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_659

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_659

    .line 19944
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_659

    :catchall_656
    move-exception v0

    move-object v1, v0

    goto :goto_67d

    .line 19950
    :cond_659
    :goto_659
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_674

    .line 19951
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_66c

    .line 19952
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_666

    throw v0

    .line 19953
    :cond_666
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 19954
    :cond_66c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 19955
    :cond_674
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 19956
    :cond_67c
    throw v0
    :try_end_67d
    .catchall {:try_start_643 .. :try_end_67d} :catchall_656

    .line 19957
    :goto_67d
    :try_start_67d
    throw v1
    :try_end_67e
    .catchall {:try_start_67d .. :try_end_67e} :catchall_67e

    :catchall_67e
    move-exception v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_683
    move-object v15, v13

    move-object v3, v14

    move-object/from16 v11, v22

    move-object/from16 v10, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v7, v26

    move-object/from16 v12, v27

    .line 20055
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x1

    invoke-static {v9, v8, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 20056
    :try_start_69a
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 20057
    iget-object v11, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 20555
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v8, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    const/4 v1, 0x0

    invoke-interface {v11, v1, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6b7
    .catchall {:try_start_69a .. :try_end_6b7} :catchall_a39

    if-ne v2, v5, :cond_6bb

    goto/16 :goto_927

    :cond_6bb
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v23, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object v10, v8

    .line 20556
    :goto_6c6
    :try_start_6c6
    iget-wide v13, v0, Lads_mobile_sdk/hf;->o:J

    sget-object v26, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-virtual/range {v26 .. v26}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_6f1

    const/4 v14, 0x1

    .line 20557
    iput-boolean v14, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 20558
    iget-object v6, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v6

    sget-object v13, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v13}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    iput-wide v6, v0, Lads_mobile_sdk/hf;->o:J

    goto :goto_6f1

    :catchall_6ed
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_a33

    .line 20560
    :cond_6f1
    :goto_6f1
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6f3
    .catchall {:try_start_6c6 .. :try_end_6f3} :catchall_6ed

    const/4 v6, 0x0

    .line 21057
    :try_start_6f4
    invoke-interface {v11, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 21058
    iget-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_742

    .line 21059
    iget-object v6, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v6}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v6

    if-eqz v6, :cond_742

    .line 21060
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_742

    .line 21061
    iget-object v6, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;
    :try_end_70c
    .catchall {:try_start_6f4 .. :try_end_70c} :catchall_73a

    .line 21642
    :try_start_70c
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;
    :try_end_70e
    .catchall {:try_start_70c .. :try_end_70e} :catchall_74b

    :try_start_70e
    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;
    :try_end_712
    .catchall {:try_start_70e .. :try_end_712} :catchall_73a

    :try_start_712
    iput-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;
    :try_end_714
    .catchall {:try_start_712 .. :try_end_714} :catchall_74b

    :try_start_714
    iput-object v8, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v4, Lads_mobile_sdk/te;->m:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_722
    .catchall {:try_start_714 .. :try_end_722} :catchall_73a

    if-ne v11, v5, :cond_726

    goto/16 :goto_927

    :cond_726
    move-object/from16 v34, v1

    move-object v1, v0

    move-object/from16 v0, v34

    .line 21643
    :goto_72b
    :try_start_72b
    iget-object v11, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11
    :try_end_731
    .catchall {:try_start_72b .. :try_end_731} :catchall_745

    .line 22228
    :try_start_731
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v11, :cond_73f

    .line 22230
    invoke-static/range {v18 .. v18}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto :goto_73f

    :catchall_73a
    move-exception v0

    move-object v2, v8

    move-object v8, v10

    goto/16 :goto_a37

    :cond_73f
    :goto_73f
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :cond_742
    move-object v14, v2

    move-object v13, v10

    goto :goto_750

    :catchall_745
    move-exception v0

    const/4 v9, 0x0

    .line 22813
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_74b
    .catchall {:try_start_731 .. :try_end_74b} :catchall_73a

    :catchall_74b
    move-exception v0

    move-object v12, v8

    move-object v8, v10

    goto/16 :goto_a3b

    .line 22814
    :goto_750
    :try_start_750
    invoke-static {}, Lads_mobile_sdk/ie;->v()Lads_mobile_sdk/he;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v27

    .line 22815
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_823

    .line 22816
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getInitializationTimeoutMs()J

    move-result-wide v6

    .line 22817
    invoke-virtual {v2, v6, v7}, Lads_mobile_sdk/he;->a(J)V

    .line 22818
    new-instance v6, Lads_mobile_sdk/lo0;

    .line 22819
    invoke-virtual {v2}, Lads_mobile_sdk/he;->h()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22820
    invoke-direct {v6, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22821
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdUnitIds()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v28

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22822
    invoke-virtual {v2, v7}, Lads_mobile_sdk/he;->a(Ljava/util/Set;)V

    .line 22823
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 22824
    invoke-virtual {v2}, Lads_mobile_sdk/he;->j()Ljava/util/List;

    move-result-object v10

    move-object/from16 v11, v25

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22825
    invoke-direct {v7, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22826
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdFormats()Ljava/util/Set;

    move-result-object v10

    .line 23312
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v27, v3

    const/16 v15, 0xa

    invoke-static {v10, v15}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23313
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 23314
    check-cast v10, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    .line 23315
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23316
    sget-object v15, Lads_mobile_sdk/je;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v15, v10

    packed-switch v10, :pswitch_data_aaa

    .line 23326
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catchall_7c3
    move-exception v0

    goto/16 :goto_a30

    :pswitch_7c6
    sget-object v10, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23327
    :pswitch_7c9
    sget-object v10, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23328
    :pswitch_7cc
    sget-object v10, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23329
    :pswitch_7cf
    sget-object v10, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23330
    :pswitch_7d2
    sget-object v10, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23331
    :pswitch_7d5
    sget-object v10, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23332
    :pswitch_7d8
    sget-object v10, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    goto :goto_7dd

    .line 23333
    :pswitch_7db
    sget-object v10, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    .line 23334
    :goto_7dd
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a3

    .line 23335
    :cond_7e1
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23336
    invoke-virtual {v2, v11}, Lads_mobile_sdk/he;->a(Ljava/util/ArrayList;)V

    .line 23337
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 23338
    invoke-virtual {v2}, Lads_mobile_sdk/he;->i()Ljava/util/List;

    move-result-object v7

    move-object/from16 v10, v24

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23339
    invoke-direct {v3, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 23340
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdapterClasses()Ljava/util/Set;

    move-result-object v7

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23341
    invoke-virtual {v2, v7}, Lads_mobile_sdk/he;->b(Ljava/util/Set;)V

    .line 23342
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 23343
    invoke-virtual {v2}, Lads_mobile_sdk/he;->k()Ljava/util/List;

    move-result-object v7

    move-object/from16 v10, v23

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23344
    invoke-direct {v3, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 23345
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getExcludedAdapterClasses()Ljava/util/Set;

    move-result-object v7

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23346
    invoke-virtual {v2, v7}, Lads_mobile_sdk/he;->c(Ljava/util/Set;)V

    .line 23347
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_827

    :cond_823
    move-object/from16 v27, v3

    move-object/from16 v6, v28

    .line 23348
    :goto_827
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    check-cast v11, Lads_mobile_sdk/ie;

    .line 23349
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-object v11, v2, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    .line 23357
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23359
    iget-boolean v7, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v7, :cond_85e

    .line 23360
    iget-object v7, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v7}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v7

    if-eqz v7, :cond_85e

    .line 23361
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_85e

    move-object/from16 v22, v3

    move-object/from16 v16, v4

    move-object/from16 v26, v6

    move-object v10, v8

    goto/16 :goto_9a2

    .line 23369
    :cond_85e
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v1, :cond_86e

    .line 23370
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v18

    :goto_869
    move-object/from16 v26, v6

    move-wide/from16 v6, v18

    goto :goto_875

    .line 23371
    :cond_86e
    iget-object v7, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v18

    goto :goto_869

    .line 23372
    :goto_875
    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 23374
    sget-object v9, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 p0, v2

    move-object/from16 v22, v3

    invoke-virtual {v9}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v2

    if-gtz v2, :cond_88f

    .line 23375
    iget-object v2, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v2

    iput-wide v2, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_88f
    if-eqz v1, :cond_8d8

    .line 23383
    iget-object v2, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 23926
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v13, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v8, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    move-object/from16 v3, p0

    iput-object v3, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v2, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/16 v6, 0x8

    iput v6, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v2, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8b2
    .catchall {:try_start_750 .. :try_end_8b2} :catchall_7c3

    if-ne v6, v5, :cond_8b6

    goto/16 :goto_927

    :cond_8b6
    move-object v6, v8

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 23927
    :goto_8ba
    :try_start_8ba
    iget-object v7, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8c0
    .catchall {:try_start_8ba .. :try_end_8c0} :catchall_8cf

    .line 24474
    :try_start_8c0
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 24475
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object v0, v1

    move-object v1, v8

    :goto_8c8
    move-object v2, v3

    move-object v3, v11

    move-object v11, v13

    goto :goto_8dc

    :catchall_8cc
    move-exception v0

    move-object v12, v6

    goto :goto_8d5

    :catchall_8cf
    move-exception v0

    const/4 v9, 0x0

    .line 25022
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_8d5
    .catchall {:try_start_8c0 .. :try_end_8d5} :catchall_8cc

    :goto_8d5
    move-object v8, v13

    goto/16 :goto_a3b

    :cond_8d8
    move-object/from16 v3, p0

    move-object v6, v8

    goto :goto_8c8

    .line 25023
    :goto_8dc
    :try_start_8dc
    sget-object v7, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v8, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v13, Lads_mobile_sdk/ve;

    const/4 v15, 0x0

    invoke-direct {v13, v0, v1, v2, v15}, Lads_mobile_sdk/ve;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v14, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v15, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/16 v1, 0x9

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    invoke-virtual {v7, v8, v9, v13, v4}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_903
    .catchall {:try_start_8dc .. :try_end_903} :catchall_a2b

    if-ne v1, v5, :cond_906

    goto :goto_927

    :cond_906
    move-object v13, v0

    move-object v1, v2

    move-object v2, v10

    move-object v10, v6

    .line 25036
    :goto_90a
    :try_start_90a
    iget-object v0, v13, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 25574
    iput-object v13, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v14, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    const/16 v15, 0xa

    iput v15, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v0, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_925
    .catchall {:try_start_90a .. :try_end_925} :catchall_87

    if-ne v6, v5, :cond_928

    :goto_927
    return-object v5

    :cond_928
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v3

    .line 25575
    :goto_92c
    :try_start_92c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_930
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_996

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 25576
    iget-object v7, v13, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/yd;

    if-nez v7, :cond_947

    goto :goto_930

    .line 25578
    :cond_947
    sget-object v8, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    sget-object v9, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    filled-new-array {v8, v9}, [Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 25579
    iget-object v9, v7, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 25580
    invoke-interface {v9}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_993

    .line 25582
    iget-object v8, v13, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 25583
    iget-object v9, v13, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 25584
    iget-object v7, v7, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 25585
    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-object/from16 p0, v3

    move-object/from16 v16, v4

    .line 25587
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v4, p3

    .line 25588
    invoke-static {v15, v4, v3}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v31

    .line 25593
    invoke-virtual {v13}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v32

    .line 25594
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v9

    invoke-static/range {v28 .. v33}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 v3, p0

    move-object/from16 p3, v4

    move-object/from16 v4, v16

    goto :goto_930

    :catchall_98f
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_a27

    :cond_993
    move-object/from16 v16, v4

    goto :goto_930

    :cond_996
    move-object/from16 v16, v4

    .line 25607
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_99a
    .catchall {:try_start_92c .. :try_end_99a} :catchall_98f

    const/4 v9, 0x0

    .line 26130
    :try_start_99b
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_99e
    .catchall {:try_start_99b .. :try_end_99e} :catchall_87

    move-object v2, v0

    move-object v0, v13

    move-object v13, v11

    move-object v11, v5

    .line 26131
    :goto_9a2
    :try_start_9a2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 26569
    invoke-virtual {v11}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v3

    move-object/from16 v7, v21

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/he;

    move-object/from16 v4, v27

    .line 26570
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26571
    new-instance v4, Lads_mobile_sdk/lo0;

    .line 26572
    invoke-virtual {v3}, Lads_mobile_sdk/he;->l()Ljava/util/List;

    move-result-object v5

    move-object/from16 v11, v20

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26573
    invoke-direct {v4, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 26574
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v26

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26575
    invoke-virtual {v3, v2}, Lads_mobile_sdk/he;->d(Ljava/util/Set;)V

    .line 26576
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26577
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    move-object/from16 v5, v22

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/ie;

    .line 26578
    iput-object v3, v1, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    if-eqz v14, :cond_a20

    .line 26583
    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 27023
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27024
    sget-object v3, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27025
    sget-object v3, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27026
    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27027
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    .line 27033
    new-instance v1, Lads_mobile_sdk/we;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v14, v0, v2}, Lads_mobile_sdk/we;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lads_mobile_sdk/hf;Ljava/util/Set;)V

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_a19
    .catchall {:try_start_9a2 .. :try_end_a19} :catchall_a1d

    move-object/from16 v17, v4

    :goto_a1b
    const/4 v9, 0x0

    goto :goto_a23

    :catchall_a1d
    move-exception v0

    move-object v11, v13

    goto :goto_a2d

    :cond_a20
    const/16 v17, 0x0

    goto :goto_a1b

    .line 27107
    :goto_a23
    invoke-static {v10, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v17

    .line 27141
    :goto_a27
    :try_start_a27
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_a2b
    .catchall {:try_start_a27 .. :try_end_a2b} :catchall_87

    :catchall_a2b
    move-exception v0

    move-object v10, v6

    :goto_a2d
    move-object v12, v10

    move-object v8, v11

    goto :goto_a3b

    :goto_a30
    move-object v12, v8

    goto/16 :goto_8d5

    .line 27142
    :goto_a33
    :try_start_a33
    invoke-interface {v11, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_a37
    .catchall {:try_start_a33 .. :try_end_a37} :catchall_73a

    :goto_a37
    move-object v12, v2

    goto :goto_a3b

    :catchall_a39
    move-exception v0

    move-object v12, v8

    .line 27272
    :goto_a3b
    :try_start_a3b
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 27276
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_a74

    .line 27278
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a51

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a51

    .line 27284
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a51

    :catchall_a4e
    move-exception v0

    move-object v1, v0

    goto :goto_a75

    .line 27290
    :cond_a51
    :goto_a51
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a6c

    .line 27291
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a64

    .line 27292
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_a5e

    throw v0

    .line 27293
    :cond_a5e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27294
    :cond_a64
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 27295
    :cond_a6c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 27296
    :cond_a74
    throw v0
    :try_end_a75
    .catchall {:try_start_a3b .. :try_end_a75} :catchall_a4e

    .line 27297
    :goto_a75
    :try_start_a75
    throw v1
    :try_end_a76
    .catchall {:try_start_a75 .. :try_end_a76} :catchall_a76

    :catchall_a76
    move-exception v0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_a7c
    .packed-switch 0x0
        :pswitch_281
        :pswitch_244
        :pswitch_1ff
        :pswitch_1c7
        :pswitch_19c
        :pswitch_16f
        :pswitch_132
        :pswitch_ef
        :pswitch_b4
        :pswitch_8a
        :pswitch_57
    .end packed-switch

    :pswitch_data_a96
    .packed-switch 0x1
        :pswitch_3ea
        :pswitch_3e7
        :pswitch_3e4
        :pswitch_3e1
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d8
        :pswitch_3d5
    .end packed-switch

    :pswitch_data_aaa
    .packed-switch 0x1
        :pswitch_7db
        :pswitch_7d8
        :pswitch_7d5
        :pswitch_7d2
        :pswitch_7cf
        :pswitch_7cc
        :pswitch_7c9
        :pswitch_7c6
    .end packed-switch
.end method

.method public static final a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 5426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5427
    instance-of v2, v1, Lads_mobile_sdk/xe;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/xe;

    iget v3, v2, Lads_mobile_sdk/xe;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/xe;->j:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/xe;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/xe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/xe;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 5722
    iget v4, v2, Lads_mobile_sdk/xe;->j:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_88

    if-eq v4, v9, :cond_78

    if-eq v4, v8, :cond_6a

    if-eq v4, v7, :cond_5b

    if-eq v4, v6, :cond_46

    if-ne v4, v5, :cond_3e

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1dd

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iget-object v4, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iget-object v8, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iget-object v11, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v12, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_171

    :cond_5b
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v7, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d3

    :cond_6a
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v8, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b5

    :cond_78
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v9, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, v9

    goto :goto_a1

    :cond_88
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5726
    iget-object v1, v0, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    iput-object v0, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v9, v2, Lads_mobile_sdk/xe;->j:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a1

    goto/16 :goto_1dc

    .line 5736
    :cond_a1
    :goto_a1
    iget-object v1, v0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object v0, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v8, v2, Lads_mobile_sdk/xe;->j:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/pn;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b3

    goto/16 :goto_1dc

    :cond_b3
    move-object v8, v0

    move-object v0, v11

    .line 5737
    :goto_b5
    check-cast v1, Ljava/util/Set;

    .line 5752
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5754
    iget-object v0, v8, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object v8, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v7, v2, Lads_mobile_sdk/xe;->j:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5755
    invoke-static {v0, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_cf

    goto/16 :goto_1dc

    :cond_cf
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v7, v8

    .line 5756
    :goto_d3
    check-cast v1, Lads_mobile_sdk/jm;

    invoke-virtual {v1}, Lads_mobile_sdk/jm;->z()Ljava/util/Map;

    move-result-object v1

    const-string v8, "getAdapterInitializationConfigsMap(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6281
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6282
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_eb
    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 6283
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_eb

    .line 6810
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_eb

    .line 6811
    :cond_10d
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v4, :cond_119

    .line 6812
    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v11

    goto :goto_11f

    :cond_119
    iget-object v1, v7, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    .line 6813
    :goto_11f
    iput-wide v11, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 6815
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-gtz v1, :cond_135

    .line 6816
    iget-object v1, v7, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    iput-wide v11, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 7341
    :cond_135
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7342
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v11, v0

    move-object v0, v1

    move-object v8, v4

    move-object v12, v7

    :goto_14a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Map$Entry;

    .line 7343
    iget-object v4, v12, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 7871
    iput-object v12, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v11, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput-object v8, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iput-object v7, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iput-object v4, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iput v6, v2, Lads_mobile_sdk/xe;->j:I

    invoke-interface {v4, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_170

    goto :goto_1dc

    :cond_170
    move-object v9, v0

    .line 7872
    :goto_171
    :try_start_171
    iget-object v1, v12, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-nez v1, :cond_1b8

    .line 7874
    iget-object v13, v12, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/ye;

    invoke-direct {v1, v12, v7, v11, v10}, Lads_mobile_sdk/ye;-><init>(Lads_mobile_sdk/hf;Ljava/util/Map$Entry;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 7875
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7876
    const-string v15, "<this>"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "context"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "block"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8134
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v1, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 8135
    iget-object v13, v12, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v14, "<get-key>(...)"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b5
    .catchall {:try_start_171 .. :try_end_1b5} :catchall_1b6

    goto :goto_1b8

    :catchall_1b6
    move-exception v0

    goto :goto_1c0

    .line 8657
    :cond_1b8
    :goto_1b8
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 8658
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_14a

    .line 8668
    :goto_1c0
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 8670
    :cond_1c4
    check-cast v0, Ljava/util/List;

    .line 8671
    iput-object v10, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v10, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput-object v10, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iput-object v10, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iput-object v10, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v10, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iput v5, v2, Lads_mobile_sdk/xe;->j:I

    invoke-static {v0, v2}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1dd

    :goto_1dc
    return-object v3

    .line 8672
    :cond_1dd
    :goto_1dd
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final a(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    instance-of v6, v5, Lads_mobile_sdk/qe;

    if-eqz v6, :cond_20

    move-object v6, v5

    check-cast v6, Lads_mobile_sdk/qe;

    iget v7, v6, Lads_mobile_sdk/qe;->i:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_20

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/qe;->i:I

    goto :goto_25

    :cond_20
    new-instance v6, Lads_mobile_sdk/qe;

    invoke-direct {v6, v0, v5}, Lads_mobile_sdk/qe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_25
    iget-object v5, v6, Lads_mobile_sdk/qe;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 2017
    iget v8, v6, Lads_mobile_sdk/qe;->i:I

    const-string v9, "Timeout."

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v8, :cond_93

    if-eq v8, v14, :cond_81

    if-eq v8, v12, :cond_6c

    if-eq v8, v11, :cond_5a

    if-ne v8, v10, :cond_52

    iget-object v0, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v6, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_49
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4f

    move-object v5, v0

    goto/16 :goto_26e

    :catchall_4f
    move-exception v0

    goto/16 :goto_2c4

    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v1, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_62
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_4f

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    goto/16 :goto_23f

    :cond_6c
    iget-object v0, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v6, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_78
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7e

    move-object v5, v0

    goto/16 :goto_14b

    :catchall_7e
    move-exception v0

    goto/16 :goto_1a1

    :cond_81
    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v1, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_89
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_7e

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    goto/16 :goto_11b

    :cond_93
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2022
    iget-object v5, v0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    sget-object v8, Lads_mobile_sdk/s11;->i:Lads_mobile_sdk/s11;

    .line 2536
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 2537
    new-instance v11, Lads_mobile_sdk/ks3;

    .line 2538
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 2539
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2540
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 2541
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 2542
    invoke-direct {v11, v12, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2543
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 2544
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v13, "block"

    const-string v14, "context"

    const-string v15, "<this>"

    if-nez v12, :cond_1e5

    .line 2545
    invoke-static {v5, v8, v10, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 2549
    :try_start_c9
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 2550
    iget-object v8, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 2551
    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 2552
    iput-object v1, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 2560
    iget-object v8, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v12

    new-instance v10, Lads_mobile_sdk/se;

    invoke-direct {v10, v0, v1, v2, v11}, Lads_mobile_sdk/se;-><init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    .line 2561
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2809
    new-instance v2, Lads_mobile_sdk/vs3;

    invoke-direct {v2, v10, v11}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 2810
    sget-object v8, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    new-instance v10, Lads_mobile_sdk/re;

    invoke-direct {v10, v2, v11}, Lads_mobile_sdk/re;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v5, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    const/4 v2, 0x1

    iput v2, v6, Lads_mobile_sdk/qe;->i:I

    invoke-virtual {v8, v3, v4, v10, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_114
    .catchall {:try_start_c9 .. :try_end_114} :catchall_1a3

    if-ne v2, v7, :cond_118

    goto/16 :goto_269

    :cond_118
    move-object v3, v5

    move-object v5, v2

    move-object v2, v3

    .line 2811
    :goto_11b
    :try_start_11b
    move-object v4, v5

    check-cast v4, Lads_mobile_sdk/v01;

    .line 2830
    instance-of v5, v4, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_129

    .line 2831
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 2832
    invoke-static {v5, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 2833
    :cond_129
    instance-of v5, v4, Lads_mobile_sdk/r01;

    if-eqz v5, :cond_191

    .line 2834
    iget-object v5, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 3337
    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iput-object v4, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iput-object v5, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v8, 0x2

    iput v8, v6, Lads_mobile_sdk/qe;->i:I

    const/4 v11, 0x0

    invoke-interface {v5, v11, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_143
    .catchall {:try_start_11b .. :try_end_143} :catchall_7e

    if-ne v6, v7, :cond_147

    goto/16 :goto_269

    :cond_147
    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v0

    .line 3338
    :goto_14b
    :try_start_14b
    iget-object v0, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    if-eqz v0, :cond_15b

    .line 3339
    iget-object v0, v0, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    goto :goto_15c

    :catchall_158
    move-exception v0

    const/4 v11, 0x0

    goto :goto_18d

    :cond_15b
    const/4 v0, 0x0

    .line 3340
    :goto_15c
    iget-object v7, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 3341
    iget-object v8, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 3345
    sget-object v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    .line 3347
    iget-object v11, v6, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v11

    long-to-int v11, v11

    .line 3348
    invoke-static {v10, v9, v11}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v9

    .line 3353
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v10

    .line 3354
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v0

    move-object/from16 p1, v4

    move-object/from16 p0, v8

    move-object/from16 p3, v9

    move-wide/from16 p4, v10

    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 3365
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_187
    .catchall {:try_start_14b .. :try_end_187} :catchall_158

    const/4 v11, 0x0

    .line 3859
    :try_start_188
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_191

    :goto_18d
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 3861
    :cond_191
    :goto_191
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_19c

    .line 3862
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 3863
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_19c
    .catchall {:try_start_188 .. :try_end_19c} :catchall_7e

    :cond_19c
    const/4 v11, 0x0

    .line 3864
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_1a1
    move-object v5, v3

    goto :goto_1a5

    :catchall_1a3
    move-exception v0

    move-object v2, v5

    .line 3885
    :goto_1a5
    :try_start_1a5
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3889
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1de

    .line 3891
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1bb

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1bb

    .line 3897
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1bb

    :catchall_1b8
    move-exception v0

    move-object v1, v0

    goto :goto_1df

    .line 3903
    :cond_1bb
    :goto_1bb
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1d6

    .line 3904
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1ce

    .line 3905
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1c8

    throw v0

    .line 3906
    :cond_1c8
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3907
    :cond_1ce
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3908
    :cond_1d6
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3909
    :cond_1de
    throw v0
    :try_end_1df
    .catchall {:try_start_1a5 .. :try_end_1df} :catchall_1b8

    .line 3910
    :goto_1df
    :try_start_1df
    throw v1
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1e0

    :catchall_1e0
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3957
    :cond_1e5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v8, v5, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 3963
    :try_start_1ee
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 3964
    iget-object v8, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 3965
    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 3966
    iput-object v1, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 3974
    iget-object v8, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v10

    new-instance v12, Lads_mobile_sdk/se;

    invoke-direct {v12, v0, v1, v2, v11}, Lads_mobile_sdk/se;-><init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    .line 3975
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4223
    new-instance v2, Lads_mobile_sdk/vs3;

    invoke-direct {v2, v12, v11}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 4224
    sget-object v8, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    new-instance v10, Lads_mobile_sdk/re;

    invoke-direct {v10, v2, v11}, Lads_mobile_sdk/re;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v5, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    const/4 v2, 0x3

    iput v2, v6, Lads_mobile_sdk/qe;->i:I

    invoke-virtual {v8, v3, v4, v10, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_239
    .catchall {:try_start_1ee .. :try_end_239} :catchall_2c6

    if-ne v2, v7, :cond_23c

    goto :goto_269

    :cond_23c
    move-object v3, v5

    move-object v5, v2

    move-object v2, v3

    .line 4225
    :goto_23f
    :try_start_23f
    move-object v4, v5

    check-cast v4, Lads_mobile_sdk/v01;

    .line 4244
    instance-of v5, v4, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_24d

    .line 4245
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 4246
    invoke-static {v5, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 4247
    :cond_24d
    instance-of v5, v4, Lads_mobile_sdk/r01;

    if-eqz v5, :cond_2b4

    .line 4248
    iget-object v5, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 4751
    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iput-object v4, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iput-object v5, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v8, 0x4

    iput v8, v6, Lads_mobile_sdk/qe;->i:I

    const/4 v11, 0x0

    invoke-interface {v5, v11, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_267
    .catchall {:try_start_23f .. :try_end_267} :catchall_4f

    if-ne v6, v7, :cond_26a

    :goto_269
    return-object v7

    :cond_26a
    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v0

    .line 4752
    :goto_26e
    :try_start_26e
    iget-object v0, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    if-eqz v0, :cond_27e

    .line 4753
    iget-object v0, v0, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    goto :goto_27f

    :catchall_27b
    move-exception v0

    const/4 v11, 0x0

    goto :goto_2b0

    :cond_27e
    const/4 v0, 0x0

    .line 4754
    :goto_27f
    iget-object v7, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 4755
    iget-object v8, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 4759
    sget-object v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    .line 4761
    iget-object v11, v6, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v11

    long-to-int v11, v11

    .line 4762
    invoke-static {v10, v9, v11}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v9

    .line 4767
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v10

    .line 4768
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v0

    move-object/from16 p1, v4

    move-object/from16 p0, v8

    move-object/from16 p3, v9

    move-wide/from16 p4, v10

    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 4779
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2aa
    .catchall {:try_start_26e .. :try_end_2aa} :catchall_27b

    const/4 v11, 0x0

    .line 5273
    :try_start_2ab
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_2b4

    :goto_2b0
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 5314
    :cond_2b4
    :goto_2b4
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_2bf

    .line 5315
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 5316
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2bf
    .catchall {:try_start_2ab .. :try_end_2bf} :catchall_4f

    :cond_2bf
    const/4 v11, 0x0

    .line 5317
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_2c4
    move-object v5, v3

    goto :goto_2c8

    :catchall_2c6
    move-exception v0

    move-object v2, v5

    .line 5327
    :goto_2c8
    :try_start_2c8
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5331
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_301

    .line 5333
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2de

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2de

    .line 5339
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2de

    :catchall_2db
    move-exception v0

    move-object v1, v0

    goto :goto_302

    .line 5345
    :cond_2de
    :goto_2de
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2f9

    .line 5346
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2f1

    .line 5347
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2eb

    throw v0

    .line 5348
    :cond_2eb
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5349
    :cond_2f1
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 5350
    :cond_2f9
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 5351
    :cond_301
    throw v0
    :try_end_302
    .catchall {:try_start_2c8 .. :try_end_302} :catchall_2db

    .line 5352
    :goto_302
    :try_start_302
    throw v1
    :try_end_303
    .catchall {:try_start_302 .. :try_end_303} :catchall_303

    :catchall_303
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    instance-of v3, v2, Lads_mobile_sdk/me;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/me;

    iget v4, v3, Lads_mobile_sdk/me;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1c

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/me;->f:I

    goto :goto_21

    :cond_1c
    new-instance v3, Lads_mobile_sdk/me;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/me;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_21
    iget-object v2, v3, Lads_mobile_sdk/me;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 467
    iget v5, v3, Lads_mobile_sdk/me;->f:I

    const-string v6, "The adapter was unable to be instantiated via reflection."

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v5, :cond_68

    if-eq v5, v9, :cond_59

    if-eq v5, v8, :cond_4b

    if-eq v5, v7, :cond_46

    if-ne v5, v10, :cond_3e

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d5

    :cond_4b
    iget-object v0, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iget-object v5, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    goto :goto_ac

    :cond_59
    iget-object v0, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/be;

    iget-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iget-object v5, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v5

    :cond_66
    move-object v13, v1

    goto :goto_8c

    :cond_68
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 475
    sget-object v2, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 477
    :cond_7b
    iput-object v0, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v9, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v0, v3}, Lads_mobile_sdk/hf;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_66

    goto :goto_f0

    .line 480
    :goto_8c
    iget-object v12, v0, Lads_mobile_sdk/hf;->d:Lads_mobile_sdk/rv1;

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v12 .. v17}, Lads_mobile_sdk/rv1;->a(Lads_mobile_sdk/rv1;Ljava/lang/String;ZZLads_mobile_sdk/j53;I)Lads_mobile_sdk/jf;

    move-result-object v1

    if-nez v1, :cond_e2

    .line 482
    iget-object v1, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 1032
    iput-object v0, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v13, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v1, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v8, v3, Lads_mobile_sdk/me;->f:I

    invoke-interface {v1, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_ab

    goto :goto_f0

    :cond_ab
    move-object v5, v0

    .line 1033
    :goto_ac
    :try_start_ac
    iget-object v0, v5, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 1034
    iget-object v12, v5, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 1037
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    invoke-static {v2, v6, v10}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v15

    .line 1038
    invoke-virtual {v5}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v16

    .line 1039
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 1046
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c3
    .catchall {:try_start_ac .. :try_end_c3} :catchall_dd

    .line 1592
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1593
    iput-object v11, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v11, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v11, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v7, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v5, v3}, Lads_mobile_sdk/hf;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_d5

    goto :goto_f0

    .line 1594
    :cond_d5
    :goto_d5
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1595
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1596
    invoke-direct {v0, v6, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    :catchall_dd
    move-exception v0

    .line 1597
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1598
    :cond_e2
    iput-object v11, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v11, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v11, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v10, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v0, v1, v13, v2, v3}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/jf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f1

    :goto_f0
    return-object v4

    :cond_f1
    return-object v0
.end method

.method public static a(Lads_mobile_sdk/hf;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 10765
    const-string v0, "max(...)"

    const-string v1, "com.google.android.libraries.ads.mobile.sdk.MobileAds"

    instance-of v2, p2, Lads_mobile_sdk/oe;

    if-eqz v2, :cond_17

    move-object v2, p2

    check-cast v2, Lads_mobile_sdk/oe;

    iget v3, v2, Lads_mobile_sdk/oe;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/oe;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/oe;

    invoke-direct {v2, p0, p2}, Lads_mobile_sdk/oe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object p2, v2, Lads_mobile_sdk/oe;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 11253
    iget v4, v2, Lads_mobile_sdk/oe;->f:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3e

    if-ne v4, v5, :cond_36

    iget-object p0, v2, Lads_mobile_sdk/oe;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v2, Lads_mobile_sdk/oe;->b:Ljava/util/Set;

    iget-object v2, v2, Lads_mobile_sdk/oe;->a:Lads_mobile_sdk/hf;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_52

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11255
    iget-object p2, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 11780
    iput-object p0, v2, Lads_mobile_sdk/oe;->a:Lads_mobile_sdk/hf;

    iput-object p1, v2, Lads_mobile_sdk/oe;->b:Ljava/util/Set;

    iput-object p2, v2, Lads_mobile_sdk/oe;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/oe;->f:I

    invoke-interface {p2, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_52

    return-object v3

    .line 11781
    :cond_52
    :goto_52
    :try_start_52
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-wide v3, p0, Lads_mobile_sdk/hf;->q:J

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11783
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object p1, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_6b

    :catchall_68
    move-exception p0

    goto/16 :goto_13d

    .line 11784
    :cond_6b
    :goto_6b
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 11785
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_77
    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11788
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    .line 11789
    iget-object v5, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/yd;

    if-eqz v5, :cond_96

    .line 11790
    iget-wide v7, v5, Lads_mobile_sdk/yd;->c:J

    goto :goto_9c

    .line 11791
    :cond_96
    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v5}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    :goto_9c
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    .line 11792
    invoke-static {v4, v5}, Lcom/google/common/collect/Comparators;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v4

    .line 11793
    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11802
    iget-object v4, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yd;

    if-eqz v3, :cond_c2

    .line 11803
    iget-object v3, v3, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    if-eqz v3, :cond_c2

    .line 11804
    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v3

    goto :goto_c3

    :cond_c2
    move-object v3, v6

    .line 11805
    :goto_c3
    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v3, v4, :cond_77

    .line 11808
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v3

    invoke-virtual {p0}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v4

    sget-object v7, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v7}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Comparators;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 11809
    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_77

    .line 11815
    :cond_eb
    iget-object p1, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/16 v0, 0xa

    .line 12317
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 12318
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12320
    move-object v4, v0

    check-cast v4, Ljava/util/Map$Entry;

    .line 12321
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12826
    check-cast v0, Ljava/util/Map$Entry;

    .line 12827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    .line 12828
    iget-object v0, v0, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 12829
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10a

    .line 12830
    :cond_12b
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 12831
    iget-object p0, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12832
    new-instance p0, Lads_mobile_sdk/pe;

    invoke-direct {p0, v2, p1}, Lads_mobile_sdk/pe;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Map;)V
    :try_end_139
    .catchall {:try_start_52 .. :try_end_139} :catchall_68

    .line 13338
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_13d
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 8673
    instance-of v0, p1, Lads_mobile_sdk/ne;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ne;

    iget v1, v0, Lads_mobile_sdk/ne;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ne;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ne;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ne;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ne;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9156
    iget v2, v0, Lads_mobile_sdk/ne;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/ne;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ne;->a:Lads_mobile_sdk/hf;

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

    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 9677
    iput-object p0, v0, Lads_mobile_sdk/ne;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ne;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ne;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 9678
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_54

    .line 10202
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_54
    move-exception p0

    .line 10203
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/cf;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cf;

    iget v1, v0, Lads_mobile_sdk/cf;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cf;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cf;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/cf;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lads_mobile_sdk/cf;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_51

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object p0, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ad

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    iget-object p0, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v4, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_77

    :cond_4b
    iget-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :cond_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput v5, v0, Lads_mobile_sdk/cf;->f:I

    invoke-virtual {p1, v6, v0}, Lads_mobile_sdk/pn;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_61

    goto :goto_ab

    .line 153
    :cond_61
    :goto_61
    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    .line 155
    iget-object p1, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 646
    iput-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput-object v2, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/cf;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_75

    goto :goto_ab

    :cond_75
    move-object v4, p0

    move-object p0, p1

    .line 647
    :goto_77
    :try_start_77
    iget-object p1, v4, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    if-nez p1, :cond_84

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_84

    :catchall_81
    move-exception v0

    move-object p1, v0

    goto :goto_f0

    .line 648
    :cond_84
    :goto_84
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 649
    iput-object p1, v4, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    .line 650
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_81

    .line 1141
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1142
    iget-object p0, v4, Lads_mobile_sdk/hf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_9b

    .line 1143
    iget-object p0, v4, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1146
    :cond_9b
    iget-object p0, v4, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1638
    iput-object v4, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput-object p0, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/cf;->f:I

    invoke-interface {p0, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_ac

    :goto_ab
    return-object v1

    :cond_ac
    move-object v0, v4

    .line 1639
    :goto_ad
    :try_start_ad
    iget-object p1, v0, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 1640
    iget-object v7, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/df;

    invoke-direct {v2, v0, v1, v6}, Lads_mobile_sdk/df;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)V

    .line 1641
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1642
    const-string v1, "<this>"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1900
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, v2, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_b3

    :catchall_e3
    move-exception v0

    move-object p1, v0

    goto :goto_ec

    .line 1901
    :cond_e6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e8
    .catchall {:try_start_ad .. :try_end_e8} :catchall_e3

    .line 2393
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 2394
    :goto_ec
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 2395
    :goto_f0
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final a()J
    .registers 7

    .line 10754
    iget v0, p0, Lads_mobile_sdk/hf;->s:I

    if-nez v0, :cond_7

    .line 10755
    iget-wide v0, p0, Lads_mobile_sdk/hf;->r:J

    goto :goto_24

    .line 10757
    :cond_7
    iget-wide v0, p0, Lads_mobile_sdk/hf;->r:J

    .line 10758
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 10760
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iget-wide v4, p0, Lads_mobile_sdk/hf;->t:J

    invoke-static {v2, v3, v4, v5}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v2

    .line 10761
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 10764
    :goto_24
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lads_mobile_sdk/jf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 27298
    instance-of v3, v2, Lads_mobile_sdk/ze;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ze;

    iget v4, v3, Lads_mobile_sdk/ze;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ze;->k:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/ze;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/ze;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/ze;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 27723
    iget v5, v3, Lads_mobile_sdk/ze;->k:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v5, :cond_c4

    if-eq v5, v9, :cond_a5

    if-eq v5, v8, :cond_8d

    if-eq v5, v7, :cond_6a

    if-eq v5, v10, :cond_54

    if-ne v5, v6, :cond_4c

    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/v01;

    iget-object v5, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_49
    move-object v2, v0

    goto/16 :goto_22e

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    iget-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/v01;

    iget-object v7, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v5

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_212

    :cond_6a
    iget-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    iget-object v0, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    iget-object v12, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/v01;

    iget-object v13, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v9

    :goto_89
    move-object v6, v15

    move-object v15, v13

    goto/16 :goto_1de

    :cond_8d
    iget-wide v8, v3, Lads_mobile_sdk/ze;->h:J

    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/tx;

    iget-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v12, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v12

    move-object v15, v13

    :goto_a2
    move-object v13, v5

    goto/16 :goto_161

    :cond_a5
    iget-object v0, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v9, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/be;

    iget-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/jf;

    iget-object v14, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v14

    :goto_c0
    move-object/from16 v16, v5

    move-object v15, v12

    goto :goto_10a

    :cond_c4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27730
    instance-of v2, v0, Lads_mobile_sdk/tc1;

    if-eqz v2, :cond_e9

    .line 27731
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/tc1;

    .line 27732
    iget-object v5, v2, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 27733
    invoke-virtual {v5}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v5

    .line 27734
    iget-object v2, v2, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 27735
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v2

    .line 27736
    new-instance v12, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v5, v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v12

    goto :goto_ea

    :cond_e9
    move-object v5, v11

    .line 27740
    :goto_ea
    iget-object v2, v1, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 28269
    iput-object v1, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v0, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput v9, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v2, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_106

    goto/16 :goto_229

    :cond_106
    move-object v9, v13

    move-object v13, v0

    move-object v0, v1

    goto :goto_c0

    .line 28270
    :goto_10a
    :try_start_10a
    iget-object v5, v0, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 28271
    iget-object v14, v0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 28274
    sget-object v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v6, "The adapter is still initializing."

    invoke-static {v12, v6, v10}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v17

    .line 28275
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x0

    invoke-static/range {v14 .. v19}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 v5, v16

    .line 28276
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_122
    .catchall {:try_start_10a .. :try_end_122} :catchall_248

    .line 28802
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 28803
    iget-object v2, v0, Lads_mobile_sdk/hf;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v2}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_12e

    goto :goto_130

    :cond_12e
    iget-object v2, v0, Lads_mobile_sdk/hf;->c:Landroid/content/Context;

    .line 28805
    :goto_130
    sget-object v6, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v6, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    .line 29329
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 29331
    iget-object v12, v0, Lads_mobile_sdk/hf;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lads_mobile_sdk/af;

    invoke-direct {v14, v13, v2, v9, v11}, Lads_mobile_sdk/af;-><init>(Lads_mobile_sdk/jf;Landroid/content/Context;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v15, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    const/4 v2, 0x2

    iput v2, v3, Lads_mobile_sdk/ze;->k:I

    invoke-static {v12, v14, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15b

    goto/16 :goto_229

    :cond_15b
    move-wide v8, v7

    move-object v14, v15

    move-object v15, v0

    move-object v0, v6

    goto/16 :goto_a2

    .line 29332
    :goto_161
    check-cast v2, Lads_mobile_sdk/v01;

    .line 29857
    new-instance v5, Lkotlin/Pair;

    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    .line 29859
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29860
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lads_mobile_sdk/v01;

    .line 29861
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 29866
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29867
    instance-of v0, v12, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_19e

    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v5, ""

    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b0

    .line 29868
    :cond_19e
    instance-of v0, v12, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_242

    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-object v5, v12

    check-cast v5, Lads_mobile_sdk/i01;

    invoke-static {v5}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29869
    :goto_1b0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 29870
    iget-object v0, v15, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 30397
    iput-object v15, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v13, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    const/4 v6, 0x3

    iput v6, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v0, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1d9

    goto :goto_229

    :cond_1d9
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_89

    .line 30398
    :goto_1de
    :try_start_1de
    iget-object v9, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 30399
    iget-object v13, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 30402
    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v0, v5, v7}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v16

    .line 30403
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v17

    .line 30404
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v13 .. v18}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 30411
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f7
    .catchall {:try_start_1de .. :try_end_1f7} :catchall_23d

    .line 30934
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 30935
    iput-object v6, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v3, Lads_mobile_sdk/ze;->k:I

    invoke-virtual {v6, v3}, Lads_mobile_sdk/hf;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_211

    goto :goto_229

    :cond_211
    move-object v5, v14

    .line 30937
    :goto_212
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v0, v2, :cond_23c

    .line 30938
    iget-object v0, v6, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 31463
    iput-object v6, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v5, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v0, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_22a

    :goto_229
    return-object v4

    :cond_22a
    move-object v3, v6

    move-object v4, v12

    goto/16 :goto_49

    .line 31464
    :goto_22e
    :try_start_22e
    iget-object v0, v3, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_233
    .catchall {:try_start_22e .. :try_end_233} :catchall_237

    .line 31993
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v4

    :catchall_237
    move-exception v0

    .line 31994
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_23c
    return-object v12

    :catchall_23d
    move-exception v0

    .line 31995
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 31996
    :cond_242
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catchall_248
    move-exception v0

    .line 31997
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 4

    .line 31999
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 36981
    instance-of v0, p1, Lads_mobile_sdk/ff;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ff;

    iget v1, v0, Lads_mobile_sdk/ff;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ff;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ff;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ff;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ff;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37506
    iget v2, v0, Lads_mobile_sdk/ff;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/ff;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ff;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37507
    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 38012
    iput-object p0, v0, Lads_mobile_sdk/ff;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ff;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ff;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 38013
    :goto_4a
    :try_start_4a
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    if-nez p1, :cond_74

    .line 38014
    iget-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 38015
    iget-wide v5, v0, Lads_mobile_sdk/hf;->o:J

    iput-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    goto :goto_74

    :catchall_61
    move-exception p1

    goto :goto_7f

    .line 38017
    :cond_63
    iget-object p1, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 38019
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    .line 38022
    :cond_74
    :goto_74
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    add-int/2addr p1, v3

    iput p1, v0, Lads_mobile_sdk/hf;->s:I
    :try_end_79
    .catchall {:try_start_4a .. :try_end_79} :catchall_61

    .line 38523
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 38524
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 39023
    :goto_7f
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2396
    instance-of v0, p1, Lads_mobile_sdk/gf;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/gf;

    iget v1, v0, Lads_mobile_sdk/gf;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gf;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/gf;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/gf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/gf;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2934
    iget v2, v0, Lads_mobile_sdk/gf;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/gf;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/gf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2935
    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 3438
    iput-object p0, v0, Lads_mobile_sdk/gf;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/gf;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/gf;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 3439
    :goto_4a
    :try_start_4a
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    if-ne p1, v3, :cond_70

    .line 3440
    iget-wide v2, v0, Lads_mobile_sdk/hf;->r:J

    .line 3441
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3443
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, v0, Lads_mobile_sdk/hf;->t:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3444
    invoke-static {v2, v3, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/hf;->r:J

    goto :goto_70

    :catchall_6e
    move-exception p1

    goto :goto_7c

    .line 3447
    :cond_70
    :goto_70
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lads_mobile_sdk/hf;->s:I
    :try_end_76
    .catchall {:try_start_4a .. :try_end_76} :catchall_6e

    .line 3949
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3950
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4450
    :goto_7c
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
