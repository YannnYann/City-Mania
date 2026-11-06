###### Class ads_mobile_sdk.xb2 (ads_mobile_sdk.xb2)
.class public final Lads_mobile_sdk/xb2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lkotlin/jvm/functions/Function2;

.field public c:Lads_mobile_sdk/ac2;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/ac2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iput-object p2, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/xb2;

    iget-object v0, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iget-object v1, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/xb2;

    iget-object v0, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    iget-object v1, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget v1, p0, Lads_mobile_sdk/xb2;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2e

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_19
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    goto/16 :goto_86

    :catchall_16
    move-exception p1

    goto/16 :goto_8c

    :catch_19
    move-exception p1

    goto :goto_6c

    .line 110
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v1, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iget-object v3, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_4c

    :cond_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    invoke-static {p1}, Lads_mobile_sdk/ac2;->a(Lads_mobile_sdk/ac2;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v1, p0, Lads_mobile_sdk/xb2;->f:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lads_mobile_sdk/xb2;->e:Lads_mobile_sdk/ac2;

    .line 232
    iput-object p1, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iput-object v5, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iput v3, p0, Lads_mobile_sdk/xb2;->d:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4a

    goto :goto_63

    :cond_4a
    move-object v3, v1

    move-object v1, v5

    .line 233
    :goto_4c
    :try_start_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "getWritableDatabase(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lads_mobile_sdk/xb2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lads_mobile_sdk/xb2;->b:Lkotlin/jvm/functions/Function2;

    iput-object v4, p0, Lads_mobile_sdk/xb2;->c:Lads_mobile_sdk/ac2;

    iput v2, p0, Lads_mobile_sdk/xb2;->d:I

    invoke-interface {v3, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_68
    .catchall {:try_start_4c .. :try_end_61} :catchall_66

    if-ne v1, v0, :cond_64

    :goto_63
    return-object v0

    :cond_64
    move-object v0, p1

    goto :goto_86

    :catchall_66
    move-exception v0

    goto :goto_8f

    :catch_68
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 235
    :goto_6c
    :try_start_6c
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error interacting with offline buffered ping database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;)V

    .line 237
    :goto_86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_16

    .line 356
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_8c
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 357
    :goto_8f
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
