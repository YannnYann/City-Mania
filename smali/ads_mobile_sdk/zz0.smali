###### Class ads_mobile_sdk.zz0 (ads_mobile_sdk.zz0)
.class public final Lads_mobile_sdk/zz0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lads_mobile_sdk/zz0;

.field public static final b:Lads_mobile_sdk/js1;

.field public static c:Z

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/zz0;

    invoke-direct {v0}, Lads_mobile_sdk/zz0;-><init>()V

    sput-object v0, Lads_mobile_sdk/zz0;->a:Lads_mobile_sdk/zz0;

    .line 227
    new-instance v0, Lads_mobile_sdk/js1;

    invoke-direct {v0}, Lads_mobile_sdk/js1;-><init>()V

    sput-object v0, Lads_mobile_sdk/zz0;->b:Lads_mobile_sdk/js1;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lads_mobile_sdk/zz0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lads_mobile_sdk/a01;
    .registers 2

    .line 684
    sget-boolean v0, Lads_mobile_sdk/zz0;->c:Z

    if-nez v0, :cond_f

    .line 690
    sget-object v0, Lads_mobile_sdk/zz0;->b:Lads_mobile_sdk/js1;

    const-string v1, "MobileAds.initialize must be called before using the Google Mobile Ads SDK."

    invoke-virtual {v0, v1}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/a01;

    return-object v0

    .line 691
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Google Mobile Ads SDK is stopped. Please call MobileAds.initialize again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Z)Lads_mobile_sdk/a01;
    .registers 16

    .line 52
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;

    const-string v1, "adActivityClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_af

    const/4 v1, 0x0

    if-eqz p2, :cond_74

    .line 55
    sget-object p2, Lads_mobile_sdk/zz0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 57
    sget p2, Lads_mobile_sdk/sz;->$r8$clinit:I

    .line 59
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    const-string p2, "WebView"

    .line 60
    const-string v4, "poolName"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v12, Lads_mobile_sdk/fr3;

    const/4 v4, 0x0

    .line 228
    invoke-direct {v12, p2, v4}, Lads_mobile_sdk/fr3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string p2, "threadFactory"

    invoke-static {v12, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 414
    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v8

    .line 415
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 416
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v6, 0x1

    move v7, v6

    .line 417
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 418
    const-string p2, "executorService"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "threadFactory"

    invoke-static {v12, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    const-string p2, "delegate"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance p2, Lads_mobile_sdk/rz;

    invoke-direct {p2, v5}, Lads_mobile_sdk/rz;-><init>(Ljava/util/concurrent/AbstractExecutorService;)V

    .line 595
    invoke-static {p2}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p2

    .line 596
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    .line 604
    new-instance v8, Lads_mobile_sdk/yz0;

    invoke-direct {v8, v0, v4}, Lads_mobile_sdk/yz0;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 605
    :cond_74
    sput-boolean v1, Lads_mobile_sdk/zz0;->c:Z

    .line 606
    sget-object p2, Lads_mobile_sdk/zz0;->b:Lads_mobile_sdk/js1;

    new-instance v1, Lads_mobile_sdk/xz0;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/xz0;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 607
    const-string p0, "block"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    monitor-enter p2

    .line 664
    :try_start_83
    iget-object p0, p2, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;

    if-nez p0, :cond_91

    .line 665
    invoke-virtual {v1}, Lads_mobile_sdk/xz0;->invoke()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p2, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;

    goto :goto_91

    :catchall_8e
    move-exception v0

    move-object p0, v0

    goto :goto_ad

    .line 667
    :cond_91
    :goto_91
    iget-object p0, p2, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;

    if-nez p0, :cond_9c

    const-string p0, "backingField"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9c
    .catchall {:try_start_83 .. :try_end_9c} :catchall_8e

    .line 668
    :cond_9c
    monitor-exit p2

    .line 669
    check-cast p0, Lads_mobile_sdk/a01;

    .line 678
    move-object p2, p0

    check-cast p2, Lads_mobile_sdk/vf0;

    .line 679
    iget-object p2, p2, Lads_mobile_sdk/vf0;->d:Lads_mobile_sdk/dw2;

    .line 680
    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/ja1;

    .line 681
    iput-object p1, p2, Lads_mobile_sdk/ja1;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    return-object p0

    .line 682
    :goto_ad
    monitor-exit p2

    throw p0

    .line 683
    :cond_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided application context is not an instance of Application. The Google Mobile Ads SDK should not be used from contexts like BroadcastReceivers, only Services and Activities."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 12

    .line 2
    const-string v0, "GoogleMobileAds"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    const-string v2, "early_webview_init_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5
    const-string v3, "early_webview_init_profiles"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    move-object v5, v4

    goto :goto_1a

    :cond_19
    move-object v5, v3

    .line 7
    :goto_1a
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Default"

    if-eqz v3, :cond_27

    .line 8
    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    goto :goto_41

    .line 10
    :cond_27
    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    :goto_41
    if-lez v1, :cond_60

    .line 15
    sget-object v4, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 18
    invoke-static {p0, v4, v6, v3, v5}, Lads_mobile_sdk/az3;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;ZLjava/util/Set;Lads_mobile_sdk/wz3;)V

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sub-int/2addr v1, v6

    .line 36
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_60
    return-void
.end method
