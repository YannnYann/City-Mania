###### Class ads_mobile_sdk.ca2 (ads_mobile_sdk.ca2)
.class public final Lads_mobile_sdk/ca2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/pa2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Ljava/util/Set;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Lads_mobile_sdk/w92;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Z

.field public j:J

.field public k:Lads_mobile_sdk/un3;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;Ljava/util/Set;)V
    .registers 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkChangeListeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    iput-object p3, p0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    .line 62
    iput-object p4, p0, Lads_mobile_sdk/ca2;->d:Lads_mobile_sdk/ur3;

    .line 63
    iput-object p5, p0, Lads_mobile_sdk/ca2;->e:Ljava/util/Set;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 72
    invoke-static {p2, p3, p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 73
    iput-boolean p3, p0, Lads_mobile_sdk/ca2;->i:Z

    .line 74
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p4

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p3, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lads_mobile_sdk/ca2;->j:J

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 115
    iget-object v0, p0, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    .line 557
    instance-of v2, v0, Lads_mobile_sdk/x92;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/x92;

    iget v3, v2, Lads_mobile_sdk/x92;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/x92;->i:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/x92;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/x92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/x92;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 685
    iget v4, v2, Lads_mobile_sdk/x92;->i:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_6d

    if-eq v4, v8, :cond_59

    if-eq v4, v7, :cond_45

    if-ne v4, v6, :cond_3d

    iget-wide v3, v2, Lads_mobile_sdk/x92;->e:J

    iget-object v6, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d4

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-boolean v3, v2, Lads_mobile_sdk/x92;->f:Z

    iget-wide v4, v2, Lads_mobile_sdk/x92;->e:J

    iget-object v6, v2, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/un3;

    iget-object v2, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v3

    goto/16 :goto_156

    :cond_59
    iget-boolean v4, v2, Lads_mobile_sdk/x92;->f:Z

    iget-wide v10, v2, Lads_mobile_sdk/x92;->e:J

    iget-object v12, v2, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkCapabilities;

    iget-object v14, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    check-cast v14, Landroid/net/Network;

    iget-object v15, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :cond_6d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 693
    iget-object v12, v1, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 832
    iput-object v1, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    move-object/from16 v0, p3

    iput-object v0, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v2, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    move-wide/from16 v10, p1

    iput-wide v10, v2, Lads_mobile_sdk/x92;->e:J

    move/from16 v13, p5

    iput-boolean v13, v2, Lads_mobile_sdk/x92;->f:Z

    iput v8, v2, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v12, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_90

    goto/16 :goto_1d1

    :cond_90
    move v14, v13

    move-object v13, v4

    move v4, v14

    move-object v14, v0

    move-object v15, v1

    .line 833
    :goto_95
    :try_start_95
    iget-wide v5, v15, Lads_mobile_sdk/ca2;->j:J

    invoke-static {v10, v11, v5, v6}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-gtz v5, :cond_a6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_a3

    .line 976
    invoke-interface {v12, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_a3
    move-exception v0

    goto/16 :goto_237

    :cond_a6
    :try_start_a6
    iget-boolean v5, v15, Lads_mobile_sdk/ca2;->i:Z
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_a3

    invoke-interface {v12, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 977
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v6, Lads_mobile_sdk/y92;

    invoke-direct {v6, v10, v11, v5}, Lads_mobile_sdk/y92;-><init>(JZ)V

    invoke-static {v6}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 980
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v5, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v5, v6}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1bc

    if-eqz v13, :cond_c4

    goto :goto_f1

    :cond_c4
    const-string v5, "connectivityManager"

    if-eqz v14, :cond_d5

    .line 985
    iget-object v4, v15, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_d0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_d0
    invoke-virtual {v4, v14}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v13

    goto :goto_f1

    :cond_d5
    if-eqz v4, :cond_f0

    .line 987
    iget-object v4, v15, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_df

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_df
    iget-object v6, v15, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_e7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v9

    :cond_e7
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v13

    goto :goto_f1

    :cond_f0
    move-object v13, v9

    :goto_f1
    if-nez v13, :cond_f4

    goto :goto_106

    :cond_f4
    const/16 v4, 0xc

    .line 988
    invoke-virtual {v13, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_106

    const/16 v4, 0x10

    .line 989
    invoke-virtual {v13, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_106

    move v5, v8

    goto :goto_107

    :cond_106
    :goto_106
    const/4 v5, 0x0

    .line 990
    :goto_107
    new-instance v0, Lads_mobile_sdk/aa2;

    invoke-direct {v0, v10, v11, v5}, Lads_mobile_sdk/aa2;-><init>(JZ)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 991
    new-instance v16, Lads_mobile_sdk/un3;

    .line 992
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 993
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0, v13}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;Landroid/net/NetworkCapabilities;)I

    move-result v18

    .line 994
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->c(Landroid/content/Context;)I

    move-result v19

    .line 995
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->d(Landroid/content/Context;)I

    move-result v20

    .line 996
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->e(Landroid/content/Context;)Z

    move-result v21

    .line 997
    iget-object v0, v15, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;)I

    move-result v22

    .line 998
    invoke-direct/range {v16 .. v22}, Lads_mobile_sdk/un3;-><init>(Ljava/lang/String;IIIZI)V

    move-object/from16 v0, v16

    .line 999
    iget-object v6, v15, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1130
    iput-object v15, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    iput-object v0, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v10, v2, Lads_mobile_sdk/x92;->e:J

    iput-boolean v5, v2, Lads_mobile_sdk/x92;->f:Z

    iput v7, v2, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v6, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_152

    goto/16 :goto_1d1

    :cond_152
    move-object v7, v0

    move v8, v5

    move-wide v4, v10

    move-object v2, v15

    .line 1131
    :goto_156
    :try_start_156
    iget-wide v10, v2, Lads_mobile_sdk/ca2;->j:J

    invoke-static {v4, v5, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gtz v0, :cond_166

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_160
    .catchall {:try_start_156 .. :try_end_160} :catchall_164

    .line 1264
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_164
    move-exception v0

    goto :goto_1b8

    .line 1265
    :cond_166
    :try_start_166
    iput-wide v4, v2, Lads_mobile_sdk/ca2;->j:J

    .line 1266
    iput-object v7, v2, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    .line 1267
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/ba2;

    invoke-direct {v0, v4, v5}, Lads_mobile_sdk/ba2;-><init>(J)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 1268
    iget-object v0, v2, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Lads_mobile_sdk/un3;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1269
    iget-object v0, v2, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Lads_mobile_sdk/un3;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1272
    iget-boolean v0, v2, Lads_mobile_sdk/ca2;->i:Z

    if-ne v8, v0, :cond_190

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18c
    .catchall {:try_start_166 .. :try_end_18c} :catchall_164

    .line 1397
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_190
    if-eqz v8, :cond_195

    .line 1398
    :try_start_192
    const-string v0, "online"

    goto :goto_197

    .line 1399
    :cond_195
    const-string v0, "offline"

    :goto_197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device is now "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 1400
    iput-boolean v8, v2, Lads_mobile_sdk/ca2;->i:Z

    .line 1401
    iget-object v0, v2, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1402
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b4
    .catchall {:try_start_192 .. :try_end_1b4} :catchall_164

    .line 1523
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_203

    .line 1524
    :goto_1b8
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1525
    :cond_1bc
    iget-object v6, v15, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1648
    iput-object v15, v2, Lads_mobile_sdk/x92;->a:Lads_mobile_sdk/ca2;

    iput-object v6, v2, Lads_mobile_sdk/x92;->b:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/x92;->c:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/x92;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v10, v2, Lads_mobile_sdk/x92;->e:J

    const/4 v4, 0x3

    iput v4, v2, Lads_mobile_sdk/x92;->i:I

    invoke-interface {v6, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1d2

    :goto_1d1
    return-object v3

    :cond_1d2
    move-wide v3, v10

    move-object v2, v15

    .line 1649
    :goto_1d4
    :try_start_1d4
    iput-wide v3, v2, Lads_mobile_sdk/ca2;->j:J

    .line 1650
    iput-boolean v8, v2, Lads_mobile_sdk/ca2;->i:Z

    .line 1651
    iget-object v5, v2, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1652
    iget-object v5, v2, Lads_mobile_sdk/ca2;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1653
    iget-object v7, v2, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    if-eqz v7, :cond_1ea

    invoke-virtual {v7}, Lads_mobile_sdk/un3;->a()I

    move-result v0

    goto :goto_1eb

    :catchall_1e8
    move-exception v0

    goto :goto_233

    :cond_1ea
    const/4 v0, 0x0

    .line 1654
    :goto_1eb
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1657
    iget-object v0, v2, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1658
    iget-object v5, v2, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;

    if-eqz v5, :cond_1f9

    invoke-virtual {v5}, Lads_mobile_sdk/un3;->b()I

    move-result v5

    goto :goto_1fa

    :cond_1f9
    const/4 v5, -0x1

    .line 1659
    :goto_1fa
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1662
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1ff
    .catchall {:try_start_1d4 .. :try_end_1ff} :catchall_1e8

    .line 1779
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-wide v4, v3

    .line 1780
    :goto_203
    iget-object v0, v2, Lads_mobile_sdk/ca2;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_209
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_230

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/n92;

    .line 1781
    iget-object v6, v2, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/z92;

    const/4 v9, 0x0

    move-object/from16 p3, v3

    move-wide/from16 p4, v4

    move-object/from16 p1, v7

    move/from16 p2, v8

    move-object/from16 p6, v9

    invoke-direct/range {p1 .. p6}, Lads_mobile_sdk/z92;-><init>(ZLads_mobile_sdk/n92;JLkotlin/coroutines/Continuation;)V

    move-object/from16 v5, p1

    move-wide/from16 v3, p4

    invoke-static {v6, v5}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-wide v4, v3

    goto :goto_209

    .line 1789
    :cond_230
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1893
    :goto_233
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1894
    :goto_237
    invoke-interface {v12, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 116
    instance-of v0, p1, Lads_mobile_sdk/o92;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o92;

    iget v1, v0, Lads_mobile_sdk/o92;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o92;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o92;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o92;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 217
    iget v2, v0, Lads_mobile_sdk/o92;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/o92;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o92;->a:Lads_mobile_sdk/ca2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lads_mobile_sdk/ca2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 380
    iput-object p0, v0, Lads_mobile_sdk/o92;->a:Lads_mobile_sdk/ca2;

    iput-object p1, v0, Lads_mobile_sdk/o92;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o92;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 381
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/ca2;->k:Lads_mobile_sdk/un3;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_7c

    .line 547
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_7b

    .line 548
    new-instance v5, Lads_mobile_sdk/un3;

    .line 549
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 550
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1, v4}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;Landroid/net/NetworkCapabilities;)I

    move-result v7

    .line 551
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->c(Landroid/content/Context;)I

    move-result v8

    .line 552
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->d(Landroid/content/Context;)I

    move-result v9

    .line 553
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->e(Landroid/content/Context;)Z

    move-result v10

    .line 554
    iget-object p1, v0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    invoke-static {p1}, Lads_mobile_sdk/db2;->a(Landroid/content/Context;)I

    move-result v11

    .line 555
    invoke-direct/range {v5 .. v11}, Lads_mobile_sdk/un3;-><init>(Ljava/lang/String;IIIZI)V

    return-object v5

    :cond_7b
    return-object p1

    :catchall_7c
    move-exception v0

    move-object p1, v0

    .line 556
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b()I
    .registers 2

    .line 117
    iget-object v0, p0, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 118
    instance-of v0, p1, Lads_mobile_sdk/p92;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/p92;

    iget v1, v0, Lads_mobile_sdk/p92;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p92;->d:I

    :goto_12
    move-object v7, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/p92;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/p92;-><init>(Lads_mobile_sdk/ca2;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p1, v7, Lads_mobile_sdk/p92;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 208
    iget v0, v7, Lads_mobile_sdk/p92;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    if-ne v0, v1, :cond_2e

    iget-object v0, v7, Lads_mobile_sdk/p92;->a:Lads_mobile_sdk/ca2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e2

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 209
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 211
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 212
    iget-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getSystemService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    .line 213
    sget-object p1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p0, Lads_mobile_sdk/ca2;->a:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_69

    goto/16 :goto_d2

    .line 216
    :cond_69
    new-instance p1, Lads_mobile_sdk/w92;

    invoke-direct {p1, p0}, Lads_mobile_sdk/w92;-><init>(Lads_mobile_sdk/ca2;)V

    .line 217
    iput-object p1, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    .line 246
    :try_start_70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_72} :catch_84

    const/16 v0, 0x1f

    const-string v4, "callback"

    const-string v5, "connectivityManager"

    const/4 v6, 0x0

    if-ge p1, v0, :cond_94

    .line 247
    :try_start_7b
    iget-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_87

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    goto :goto_87

    :catch_84
    move-exception v0

    move-object p1, v0

    goto :goto_c9

    :cond_87
    :goto_87
    iget-object v0, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    if-nez v0, :cond_8f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_90

    :cond_8f
    move-object v6, v0

    :goto_90
    invoke-virtual {p1, v6}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_d2

    .line 249
    :cond_94
    iget-object p1, p0, Lads_mobile_sdk/ca2;->f:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_9c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    .line 250
    :cond_9c
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v5, 0x0

    .line 252
    invoke-virtual {v0, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v5, 0x3

    .line 253
    invoke-virtual {v0, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 255
    iget-object v5, p0, Lads_mobile_sdk/ca2;->g:Lads_mobile_sdk/w92;

    if-nez v5, :cond_bb

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_bc

    :cond_bb
    move-object v6, v5

    .line 256
    :goto_bc
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    invoke-static {p1, v0, v6, v4}, Lads_mobile_sdk/ca2$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_c8} :catch_84

    goto :goto_d2

    .line 264
    :goto_c9
    iget-object v0, p0, Lads_mobile_sdk/ca2;->d:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v4, "Failed to register network callbacks."

    invoke-virtual {v0, v4, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_d2
    iput-object p0, v7, Lads_mobile_sdk/p92;->a:Lads_mobile_sdk/ca2;

    iput v1, v7, Lads_mobile_sdk/p92;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/ca2;->a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_e1

    return-object v8

    :cond_e1
    move-object v0, p0

    .line 266
    :goto_e2
    sput-object v0, Lads_mobile_sdk/oa2;->a:Lads_mobile_sdk/pa2;

    .line 267
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final c()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
