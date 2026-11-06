###### Class com.google.android.libraries.ads.mobile.sdk.internal.offline.OfflinePingSender (com.google.android.libraries.ads.mobile.sdk.internal.offline.OfflinePingSender)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/offline/OfflinePingSender;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .registers 20

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 2
    iget-object v1, v1, Lads_mobile_sdk/vf0;->s1:Lads_mobile_sdk/dw2;

    .line 3
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ac2;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v2, Lads_mobile_sdk/yb2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/yb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/coroutines/Continuation;)V

    .line 6
    iget-object v3, v1, Lads_mobile_sdk/ac2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/xb2;

    invoke-direct {v6, v1, v2, v0}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    goto/16 :goto_df

    .line 7
    :catch_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "OFFLINE_DATABASE_VERSION"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    const-string v3, "HTTP_CLIENT_TIMEOUT"

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v4

    const-string v5, "USER_AGENT"

    invoke-virtual {v4, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_59

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "failure(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_59
    new-instance v5, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    const-string v6, "offline-ping-sender"

    invoke-direct {v5, v6}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v5

    .line 11
    new-instance v6, Lads_mobile_sdk/ja1;

    invoke-direct {v6}, Lads_mobile_sdk/ja1;-><init>()V

    .line 12
    iput-object v5, v6, Lads_mobile_sdk/ja1;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    .line 13
    new-instance v11, Lads_mobile_sdk/sz;

    invoke-direct {v11, v6}, Lads_mobile_sdk/sz;-><init>(Lads_mobile_sdk/ja1;)V

    .line 14
    iget-object v5, v11, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 15
    invoke-static {v5}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v5

    .line 16
    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    .line 20
    new-instance v12, Lads_mobile_sdk/ic2;

    invoke-direct {v12, v4}, Lads_mobile_sdk/ic2;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v4, Lads_mobile_sdk/cc2;

    .line 27
    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 33
    iget-object v5, v11, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 34
    invoke-static {v5}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v9

    .line 35
    new-instance v7, Lads_mobile_sdk/k70;

    .line 38
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, v18

    .line 39
    invoke-direct/range {v7 .. v16}, Lads_mobile_sdk/k70;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/sz;Lads_mobile_sdk/zw3;Landroid/content/Context;Lads_mobile_sdk/g83;Lads_mobile_sdk/ja1;Lads_mobile_sdk/cn0;)V

    move-object/from16 v16, v12

    .line 40
    invoke-direct {v4, v7}, Lads_mobile_sdk/cc2;-><init>(Lads_mobile_sdk/k70;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v5, "getApplicationContext(...)"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 75
    new-instance v12, Lads_mobile_sdk/nj0;

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v18}, Lads_mobile_sdk/nj0;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Lads_mobile_sdk/zw3;Lads_mobile_sdk/e01;Lkotlinx/coroutines/CoroutineScope;)V

    .line 76
    iget-object v1, v12, Lads_mobile_sdk/nj0;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ac2;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v2, Lads_mobile_sdk/yb2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/yb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/coroutines/Continuation;)V

    .line 79
    iget-object v3, v1, Lads_mobile_sdk/ac2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/xb2;

    invoke-direct {v6, v1, v2, v0}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 80
    :goto_df
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "success(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
