###### Class ads_mobile_sdk.cb3 (ads_mobile_sdk.cb3)
.class public final Lads_mobile_sdk/cb3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public e:Lkotlinx/coroutines/Deferred;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks1;Lads_mobile_sdk/tx;)V
    .registers 5

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/cb3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/cb3;->b:Lads_mobile_sdk/ks1;

    .line 34
    iput-object p3, p0, Lads_mobile_sdk/cb3;->c:Lads_mobile_sdk/tx;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 37
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/cb3;->d:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 263
    instance-of v0, p2, Lads_mobile_sdk/ya3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ya3;

    iget v1, v0, Lads_mobile_sdk/ya3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ya3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ya3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ya3;-><init>(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ya3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 338
    iget v2, v0, Lads_mobile_sdk/ya3;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ya3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/ya3;->b:Lads_mobile_sdk/ua3;

    iget-object v0, v0, Lads_mobile_sdk/ya3;->a:Lads_mobile_sdk/cb3;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_83

    goto :goto_72

    .line 339
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ya3;->a:Lads_mobile_sdk/cb3;

    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_83

    goto :goto_5c

    .line 340
    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    :try_start_44
    iget-object p2, p0, Lads_mobile_sdk/cb3;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/za3;

    invoke-direct {v2, p0, p1, v5}, Lads_mobile_sdk/za3;-><init>(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/ya3;->a:Lads_mobile_sdk/cb3;

    iput v4, v0, Lads_mobile_sdk/ya3;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_6f

    .line 344
    :cond_5c
    :goto_5c
    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/ua3;

    .line 353
    iget-object p2, p0, Lads_mobile_sdk/cb3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 406
    iput-object p0, v0, Lads_mobile_sdk/ya3;->a:Lads_mobile_sdk/cb3;

    iput-object p1, v0, Lads_mobile_sdk/ya3;->b:Lads_mobile_sdk/ua3;

    iput-object p2, v0, Lads_mobile_sdk/ya3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ya3;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_83

    if-ne v0, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v0, p0

    move-object p0, p2

    .line 407
    :goto_72
    :try_start_72
    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/cb3;->e:Lkotlinx/coroutines/Deferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7e

    .line 464
    :try_start_7a
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_97

    :catchall_7e
    move-exception p1

    .line 465
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    .line 466
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 471
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 472
    :goto_97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/wa3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/wa3;

    iget v1, v0, Lads_mobile_sdk/wa3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wa3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wa3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wa3;-><init>(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/wa3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lads_mobile_sdk/wa3;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p0, v0, Lads_mobile_sdk/wa3;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/wa3;->a:Lads_mobile_sdk/cb3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_51

    :cond_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lads_mobile_sdk/cb3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 116
    iput-object p0, v0, Lads_mobile_sdk/wa3;->a:Lads_mobile_sdk/cb3;

    iput-object p1, v0, Lads_mobile_sdk/wa3;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/wa3;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_51

    goto :goto_79

    .line 117
    :cond_51
    :goto_51
    :try_start_51
    iget-object v2, p0, Lads_mobile_sdk/cb3;->e:Lkotlinx/coroutines/Deferred;

    if-nez v2, :cond_6a

    .line 119
    iget-object v6, p0, Lads_mobile_sdk/cb3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/xa3;

    invoke-direct {v9, p0, v5}, Lads_mobile_sdk/xa3;-><init>(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 122
    iput-object v2, p0, Lads_mobile_sdk/cb3;->e:Lkotlinx/coroutines/Deferred;
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_67

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    .line 193
    :cond_6a
    :goto_6a
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 194
    iput-object v5, v0, Lads_mobile_sdk/wa3;->a:Lads_mobile_sdk/cb3;

    iput-object v5, v0, Lads_mobile_sdk/wa3;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/wa3;->e:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7a

    :goto_79
    return-object v1

    :cond_7a
    return-object p0

    .line 262
    :goto_7b
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/ab3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ab3;

    iget v1, v0, Lads_mobile_sdk/ab3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ab3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ab3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ab3;-><init>(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ab3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lads_mobile_sdk/ab3;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ab3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/ab3;->b:Lads_mobile_sdk/ua3;

    iget-object v0, v0, Lads_mobile_sdk/ab3;->a:Lads_mobile_sdk/cb3;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_83

    goto :goto_72

    .line 58
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ab3;->a:Lads_mobile_sdk/cb3;

    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_83

    goto :goto_5c

    .line 59
    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    :try_start_44
    iget-object p2, p0, Lads_mobile_sdk/cb3;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/bb3;

    invoke-direct {v2, p0, p1, v5}, Lads_mobile_sdk/bb3;-><init>(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/ab3;->a:Lads_mobile_sdk/cb3;

    iput v4, v0, Lads_mobile_sdk/ab3;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_6f

    .line 63
    :cond_5c
    :goto_5c
    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/ua3;

    .line 72
    iget-object p2, p0, Lads_mobile_sdk/cb3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 133
    iput-object p0, v0, Lads_mobile_sdk/ab3;->a:Lads_mobile_sdk/cb3;

    iput-object p1, v0, Lads_mobile_sdk/ab3;->b:Lads_mobile_sdk/ua3;

    iput-object p2, v0, Lads_mobile_sdk/ab3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ab3;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_83

    if-ne v0, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v0, p0

    move-object p0, p2

    .line 134
    :goto_72
    :try_start_72
    invoke-static {p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/cb3;->e:Lkotlinx/coroutines/Deferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7e

    .line 199
    :try_start_7a
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_97

    :catchall_7e
    move-exception p1

    .line 200
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    .line 201
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 206
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 207
    :goto_97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
