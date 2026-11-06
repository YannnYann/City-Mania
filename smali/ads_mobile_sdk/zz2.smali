###### Class ads_mobile_sdk.zz2 (ads_mobile_sdk.zz2)
.class public final Lads_mobile_sdk/zz2;
.super Lads_mobile_sdk/wy2;
.source "SourceFile"


# instance fields
.field public final D:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

.field public final E:Lads_mobile_sdk/cw2;

.field public final F:Lads_mobile_sdk/qn2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/dw2;Lads_mobile_sdk/e33;Lads_mobile_sdk/ao0;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;ZLads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;Lads_mobile_sdk/f0;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lads_mobile_sdk/dw2;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/qn2;)V
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    move-object/from16 v3, p24

    .line 1
    const-string v4, "applicationContext"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "uiContext"

    move-object/from16 v6, p2

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadContext"

    move-object/from16 v7, p3

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadScope"

    move-object/from16 v8, p4

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "backgroundScope"

    move-object/from16 v9, p5

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "componentProvider"

    move-object/from16 v10, p6

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "refreshHelper"

    move-object/from16 v11, p7

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "displayUtil"

    move-object/from16 v12, p8

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "bannerAdRequest"

    move-object/from16 v13, p9

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "traceMetaSet"

    move-object/from16 v14, p10

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "flags"

    move-object/from16 v15, p11

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "rootTraceCreator"

    move-object/from16 v5, p12

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "publisherRequestId"

    move-object/from16 v5, p13

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "requestType"

    move-object/from16 v5, p14

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "initializationConfigWrapper"

    move-object/from16 v5, p15

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "inspectorAdLifecycleMonitor"

    move-object/from16 v5, p17

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cancellationChannel"

    move-object/from16 v5, p18

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "appState"

    move-object/from16 v5, p19

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "activityTracker"

    move-object/from16 v5, p20

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pipAdRequest"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pipPresenterProvider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "uiScope"

    move-object/from16 v5, p23

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pipAdConfig"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p19}, Lads_mobile_sdk/wy2;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/dw2;Lads_mobile_sdk/e33;Lads_mobile_sdk/ao0;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;ZLads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V

    .line 3
    iput-object v1, v0, Lads_mobile_sdk/zz2;->D:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    .line 4
    iput-object v2, v0, Lads_mobile_sdk/zz2;->E:Lads_mobile_sdk/cw2;

    .line 6
    iput-object v3, v0, Lads_mobile_sdk/zz2;->F:Lads_mobile_sdk/qn2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lads_mobile_sdk/o53;
    .registers 6

    .line 2
    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lads_mobile_sdk/do2;

    iget-object v1, p0, Lads_mobile_sdk/zz2;->F:Lads_mobile_sdk/qn2;

    new-instance v2, Lads_mobile_sdk/xz2;

    invoke-direct {v2, p0}, Lads_mobile_sdk/xz2;-><init>(Lads_mobile_sdk/zz2;)V

    invoke-direct {v0, p2, p1, v1, v2}, Lads_mobile_sdk/do2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Landroid/content/Context;Lads_mobile_sdk/qn2;Lads_mobile_sdk/xz2;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 6
    instance-of v0, p2, Lads_mobile_sdk/yz2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/yz2;

    iget v1, v0, Lads_mobile_sdk/yz2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yz2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/yz2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/yz2;-><init>(Lads_mobile_sdk/zz2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/yz2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lads_mobile_sdk/yz2;->e:I

    const-string v3, "listener"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4a

    if-eq v2, v5, :cond_3e

    if-ne v2, v4, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/yz2;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/ao2;

    iget-object v0, v0, Lads_mobile_sdk/yz2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/ck1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-object p1, v0, Lads_mobile_sdk/yz2;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/ck1;

    iget-object v2, v0, Lads_mobile_sdk/yz2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/zz2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_4a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    iput-object p0, v0, Lads_mobile_sdk/yz2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/yz2;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/yz2;->e:I

    .line 106
    invoke-static {p0, p1, v0}, Lads_mobile_sdk/wy2;->a(Lads_mobile_sdk/wy2;Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5a

    goto :goto_77

    :cond_5a
    move-object v2, p0

    .line 107
    :goto_5b
    invoke-virtual {v2}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object p2

    .line 108
    iget-object p2, p2, Lads_mobile_sdk/ao2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_9b

    .line 110
    invoke-virtual {v2}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object p2

    .line 111
    iput-object p1, v0, Lads_mobile_sdk/yz2;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/yz2;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/yz2;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/wy2;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_78

    :goto_77
    return-object v1

    :cond_78
    move-object v6, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v6

    .line 112
    :goto_7c
    check-cast p2, Lads_mobile_sdk/do2;

    .line 118
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p2, p1, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    .line 225
    iget-object p2, p1, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p1, Lads_mobile_sdk/ao2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_ae

    .line 227
    :cond_9b
    invoke-virtual {v2}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object p2

    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object p2, p2, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 530
    :goto_ae
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/zh1;Lads_mobile_sdk/yw2;)Ljava/lang/Object;
    .registers 3

    .line 5
    check-cast p1, Lads_mobile_sdk/ck1;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/zz2;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ck1;)V
    .registers 4

    .line 531
    const-string v0, "oldAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 644
    monitor-enter v0

    .line 645
    monitor-exit v0

    .line 646
    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V

    .line 647
    iget-object p1, p0, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 648
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {p1, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 649
    check-cast p1, Lads_mobile_sdk/ck1;

    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V

    .line 651
    invoke-virtual {p0}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object p1

    .line 652
    iget-object v0, p0, Lads_mobile_sdk/wy2;->u:Lads_mobile_sdk/js1;

    .line 653
    const-string v1, "The backing field has not yet been initialized."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 654
    check-cast v0, Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    const-string v1, "listener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    iget-object p1, p1, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .registers 12

    .line 123
    invoke-virtual {p0}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object v0

    .line 124
    iget-object v1, v0, Lads_mobile_sdk/ao2;->m:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    .line 125
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 126
    :cond_d
    iget-object v1, v0, Lads_mobile_sdk/ao2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v1, v0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v1, v0, Lads_mobile_sdk/ao2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 129
    iget-object v1, v0, Lads_mobile_sdk/ao2;->a:Lads_mobile_sdk/f0;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/f0;->b(Lads_mobile_sdk/n;)V

    .line 131
    :cond_25
    iget-object v5, v0, Lads_mobile_sdk/ao2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/vn2;

    invoke-direct {v1, v0, v3}, Lads_mobile_sdk/vn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    .line 132
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 133
    const-string v2, "<this>"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 392
    iget-object v1, v0, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 393
    iget-object v0, v0, Lads_mobile_sdk/ao2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 394
    invoke-super {p0}, Lads_mobile_sdk/wy2;->b()V

    return-void
.end method

.method public final d()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;
    .registers 2

    .line 120
    iget-object v0, p0, Lads_mobile_sdk/zz2;->D:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    return-object v0
.end method

.method public final f()Lads_mobile_sdk/ao2;
    .registers 3

    .line 91
    iget-object v0, p0, Lads_mobile_sdk/zz2;->E:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ao2;

    return-object v0
.end method
