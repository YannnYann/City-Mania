###### Class ads_mobile_sdk.tz1 (ads_mobile_sdk.tz1)
.class public final Lads_mobile_sdk/tz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/b24;


# instance fields
.field public final a:Lads_mobile_sdk/ix1;

.field public final b:Ljava/util/Optional;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ix1;Ljava/util/Optional;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 5

    .line 1
    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalWebView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/tz1;->a:Lads_mobile_sdk/ix1;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/tz1;->b:Ljava/util/Optional;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/tz1;->c:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 30
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/tz1;->d:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/tz1;Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 98
    instance-of v0, p2, Lads_mobile_sdk/rz1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/rz1;

    iget v1, v0, Lads_mobile_sdk/rz1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/rz1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/rz1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/rz1;-><init>(Lads_mobile_sdk/tz1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/rz1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 131
    iget v2, v0, Lads_mobile_sdk/rz1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lads_mobile_sdk/rz1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/rz1;->b:Lads_mobile_sdk/ey3;

    iget-object v0, v0, Lads_mobile_sdk/rz1;->a:Lads_mobile_sdk/tz1;

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

    .line 132
    iget-object p2, p0, Lads_mobile_sdk/tz1;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 158
    iput-object p0, v0, Lads_mobile_sdk/rz1;->a:Lads_mobile_sdk/tz1;

    iput-object p1, v0, Lads_mobile_sdk/rz1;->b:Lads_mobile_sdk/ey3;

    iput-object p2, v0, Lads_mobile_sdk/rz1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/rz1;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    .line 159
    :cond_4e
    :goto_4e
    :try_start_4e
    iget-object v0, p0, Lads_mobile_sdk/tz1;->b:Ljava/util/Optional;

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-nez v0, :cond_59

    goto :goto_74

    .line 160
    :cond_59
    iget-object p1, p1, Lads_mobile_sdk/ey3;->d:Landroid/graphics/Rect;

    .line 161
    iget-object v1, p0, Lads_mobile_sdk/tz1;->e:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_74

    .line 164
    :cond_64
    iput-object p1, p0, Lads_mobile_sdk/tz1;->e:Landroid/graphics/Rect;

    .line 165
    iget-object v5, p0, Lads_mobile_sdk/tz1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/sz1;

    invoke-direct {v8, p0, v0, p1, v4}, Lads_mobile_sdk/sz1;-><init>(Lads_mobile_sdk/tz1;Lads_mobile_sdk/r31;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 174
    :goto_74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_4e .. :try_end_76} :catchall_7a

    .line 188
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_7a
    move-exception v0

    move-object p0, v0

    .line 189
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/tz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/qz1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qz1;

    iget v1, v0, Lads_mobile_sdk/qz1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qz1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/qz1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qz1;-><init>(Lads_mobile_sdk/tz1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/qz1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, v0, Lads_mobile_sdk/qz1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/qz1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/qz1;->a:Lads_mobile_sdk/tz1;

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

    iget-object p1, p0, Lads_mobile_sdk/tz1;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 72
    iput-object p0, v0, Lads_mobile_sdk/qz1;->a:Lads_mobile_sdk/tz1;

    iput-object p1, v0, Lads_mobile_sdk/qz1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/qz1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 73
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/tz1;->e:Landroid/graphics/Rect;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_50

    .line 96
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_50
    move-exception p0

    .line 97
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final b(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/tz1;->a(Lads_mobile_sdk/tz1;Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
