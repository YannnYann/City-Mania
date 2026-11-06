###### Class ads_mobile_sdk.ek2 (ads_mobile_sdk.ek2)
.class public final Lads_mobile_sdk/ek2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zj2;
.implements Lads_mobile_sdk/ox0;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/cw2;

.field public final c:Lads_mobile_sdk/cl2;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/tx;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public h:Z

.field public i:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/dw2;Lads_mobile_sdk/cl2;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheFillManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/ek2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/ek2;->b:Lads_mobile_sdk/cw2;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/ek2;->d:Lads_mobile_sdk/g83;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/ek2;->e:Lads_mobile_sdk/tx;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p4, 0x0

    .line 14
    invoke-static {p1, p2, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ek2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    iput-boolean p2, p0, Lads_mobile_sdk/ek2;->h:Z

    .line 20
    invoke-static {p4, p2, p4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    .line 21
    iget-boolean p2, p0, Lads_mobile_sdk/ek2;->h:Z

    if-nez p2, :cond_46

    invoke-virtual {p3}, Lads_mobile_sdk/cl2;->b()Z

    move-result p2

    if-nez p2, :cond_49

    .line 22
    :cond_46
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 23
    :cond_49
    iput-object p1, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    instance-of v0, p1, Lads_mobile_sdk/dk2;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/dk2;

    iget v1, v0, Lads_mobile_sdk/dk2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dk2;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/dk2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/dk2;-><init>(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/dk2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 193
    iget v2, v0, Lads_mobile_sdk/dk2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    iget-object p0, v0, Lads_mobile_sdk/dk2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/dk2;->a:Lads_mobile_sdk/ek2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_54

    :cond_42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lads_mobile_sdk/ek2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 248
    iput-object p0, v0, Lads_mobile_sdk/dk2;->a:Lads_mobile_sdk/ek2;

    iput-object p1, v0, Lads_mobile_sdk/dk2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/dk2;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_54

    goto :goto_7b

    .line 249
    :cond_54
    :goto_54
    :try_start_54
    iget-object v2, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v2}, Lads_mobile_sdk/cl2;->b()Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_69

    .line 251
    iget-object p0, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_67

    goto :goto_6a

    :catchall_67
    move-exception p0

    goto :goto_7f

    :cond_69
    move-object p0, v5

    .line 305
    :goto_6a
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p0, :cond_7c

    .line 306
    iput-object v5, v0, Lads_mobile_sdk/dk2;->a:Lads_mobile_sdk/ek2;

    iput-object v5, v0, Lads_mobile_sdk/dk2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/dk2;->e:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7c

    :goto_7b
    return-object v1

    .line 307
    :cond_7c
    :goto_7c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 355
    :goto_7f
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic b(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/bk2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/bk2;

    iget v1, v0, Lads_mobile_sdk/bk2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bk2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bk2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/bk2;-><init>(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/bk2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/bk2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/bk2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/bk2;->a:Lads_mobile_sdk/ek2;

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

    iget-object p1, p0, Lads_mobile_sdk/ek2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 55
    iput-object p0, v0, Lads_mobile_sdk/bk2;->a:Lads_mobile_sdk/ek2;

    iput-object p1, v0, Lads_mobile_sdk/bk2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/bk2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    .line 56
    :try_start_4b
    iput-boolean v0, p0, Lads_mobile_sdk/ek2;->h:Z

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Lads_mobile_sdk/cl2;->b()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 58
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_6c

    .line 60
    :cond_66
    :goto_66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_64

    .line 112
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_6c
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static c(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ck2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ck2;

    iget v1, v0, Lads_mobile_sdk/ck2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ck2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ck2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ck2;-><init>(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ck2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/ck2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/ck2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ck2;->a:Lads_mobile_sdk/ek2;

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

    iget-object p1, p0, Lads_mobile_sdk/ek2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 59
    iput-object p0, v0, Lads_mobile_sdk/ck2;->a:Lads_mobile_sdk/ek2;

    iput-object p1, v0, Lads_mobile_sdk/ck2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ck2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 60
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    const-string v1, "gads:pc:reschedule_auto_refresh_on_app_foreground"

    .line 62
    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 79
    invoke-virtual {p0}, Lads_mobile_sdk/ek2;->a()V

    goto :goto_6c

    :catchall_6a
    move-exception p0

    goto :goto_79

    .line 81
    :cond_6c
    :goto_6c
    iput-boolean v3, p0, Lads_mobile_sdk/ek2;->h:Z

    .line 82
    iget-object p0, p0, Lads_mobile_sdk/ek2;->i:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_6a

    .line 138
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_79
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ko;J)Lkotlinx/coroutines/Job;
    .registers 11

    .line 588
    iget-object v0, p0, Lads_mobile_sdk/ek2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/ak2;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ak2;-><init>(JLads_mobile_sdk/ek2;Lads_mobile_sdk/ko;Lkotlin/coroutines/Continuation;)V

    .line 589
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 590
    const-string p2, "<this>"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v3, Lads_mobile_sdk/ws3;

    const/4 p2, 0x0

    invoke-direct {v3, v1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 10

    .line 1029
    iget-object v0, p0, Lads_mobile_sdk/ek2;->e:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1031
    iget-object v2, p0, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ko;

    .line 1032
    iget-object v4, v3, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    .line 1033
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1034
    iget-wide v4, v3, Lads_mobile_sdk/ko;->g:J

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_37

    .line 1035
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    goto :goto_3f

    :cond_37
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v6}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    .line 1036
    :goto_3f
    iget-object v6, v3, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1037
    invoke-static {v6, v8, v7, v8}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1038
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4, v5}, Lads_mobile_sdk/ek2;->a(Lads_mobile_sdk/ko;J)Lkotlinx/coroutines/Job;

    move-result-object v4

    .line 1039
    const-string v5, "<set-?>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    iput-object v4, v3, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    goto :goto_13

    :cond_55
    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V
    .registers 18

    move-object/from16 v5, p4

    .line 1077
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    const-string v1, "gads:pc:enable_auto_refresh"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_ac

    .line 1166
    :cond_2f
    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_84

    const/4 v4, 0x3

    if-eq v0, v4, :cond_66

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4a

    .line 1363
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    :goto_48
    move-wide v11, v0

    goto :goto_a0

    .line 1364
    :cond_4a
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1365
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 1366
    const-string v6, "gads:pc:native_ad_auto_refresh_interval_millis"

    invoke-static {v1, v4, v6, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 1367
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v6, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    goto :goto_48

    .line 1368
    :cond_66
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v1, 0xc

    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 1370
    const-string v6, "gads:pc:icon_ad_auto_refresh_interval_millis"

    invoke-static {v1, v4, v6, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 1371
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v6, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    goto :goto_48

    .line 1372
    :cond_84
    iget-object v0, p0, Lads_mobile_sdk/ek2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1373
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 1374
    const-string v6, "gads:pc:app_open_ad_auto_refresh_interval_millis"

    invoke-static {v1, v4, v6, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 1375
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v6, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    goto :goto_48

    .line 1376
    :goto_a0
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gtz v0, :cond_ad

    :goto_ac
    return-void

    .line 1377
    :cond_ad
    iget-object v0, v5, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 1378
    invoke-virtual {p0, v0}, Lads_mobile_sdk/ek2;->a(Ljava/lang/String;)V

    .line 1380
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/m21;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c2

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    :cond_c2
    move-object v1, v0

    .line 1382
    iget-object v0, p0, Lads_mobile_sdk/ek2;->e:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1384
    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 1387
    new-instance v0, Lads_mobile_sdk/ko;

    const/4 v2, 0x0

    .line 1395
    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    .line 1396
    invoke-direct/range {v0 .. v10}, Lads_mobile_sdk/ko;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;JJLkotlinx/coroutines/CompletableJob;)V

    .line 1407
    invoke-virtual {p0, v0, v11, v12}, Lads_mobile_sdk/ek2;->a(Lads_mobile_sdk/ko;J)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1408
    const-string p2, "<set-?>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    iput-object p1, v0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    .line 1446
    iget-object p1, p0, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1447
    iget-object p2, v5, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 1448
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 356
    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lads_mobile_sdk/ek2;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ko;

    if-eqz p1, :cond_18

    .line 487
    iget-object p1, p1, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 113
    invoke-static {p0, p3}, Lads_mobile_sdk/ek2;->c(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p3}, Lads_mobile_sdk/ek2;->b(Lads_mobile_sdk/ek2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
