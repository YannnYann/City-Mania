###### Class ads_mobile_sdk.b53 (ads_mobile_sdk.b53)
.class public final Lads_mobile_sdk/b53;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;)V
    .registers 4

    .line 1
    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/b53;->a:Lads_mobile_sdk/tx;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 26
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b53;->c:Ljava/util/LinkedHashMap;

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b53;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/b53;Lcom/google/gson/JsonObject;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 458
    instance-of v0, p4, Lads_mobile_sdk/a53;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/a53;

    iget v1, v0, Lads_mobile_sdk/a53;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a53;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a53;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/a53;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/a53;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 502
    iget v2, v0, Lads_mobile_sdk/a53;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p0, v0, Lads_mobile_sdk/a53;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/a53;->c:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/a53;->b:Lcom/google/gson/JsonObject;

    iget-object p3, v0, Lads_mobile_sdk/a53;->a:Lads_mobile_sdk/b53;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    move-object p3, p0

    move-object p0, v5

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_62

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p2}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4f

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 508
    :cond_4f
    iget-object p3, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 703
    iput-object p0, v0, Lads_mobile_sdk/a53;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/a53;->b:Lcom/google/gson/JsonObject;

    iput-object p2, v0, Lads_mobile_sdk/a53;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/a53;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/a53;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_62

    return-object v1

    .line 704
    :cond_62
    :goto_62
    :try_start_62
    invoke-static {p1}, Lads_mobile_sdk/gr3;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/hr3;

    move-result-object p1

    if-nez p1, :cond_70

    .line 706
    iget-object p0, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    :catchall_6e
    move-exception p0

    goto :goto_7d

    .line 708
    :cond_70
    iget-object p0, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_6e

    .line 902
    :goto_77
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 903
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1094
    :goto_7d
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/v43;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/v43;

    iget v1, v0, Lads_mobile_sdk/v43;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/v43;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/v43;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/v43;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/v43;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lads_mobile_sdk/v43;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/v43;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/v43;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/v43;->a:Lads_mobile_sdk/b53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto :goto_5b

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4a

    sget-object p0, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    return-object p0

    .line 71
    :cond_4a
    iget-object p2, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 257
    iput-object p0, v0, Lads_mobile_sdk/v43;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/v43;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/v43;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/v43;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5b

    return-object v1

    .line 258
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object p0, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/hr3;

    if-eqz p0, :cond_6c

    .line 259
    iget-object p0, p0, Lads_mobile_sdk/hr3;->e:Lads_mobile_sdk/zr0;

    if-nez p0, :cond_6e

    goto :goto_6c

    :catchall_6a
    move-exception p0

    goto :goto_72

    .line 260
    :cond_6c
    :goto_6c
    sget-object p0, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_6a

    .line 449
    :cond_6e
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 450
    :goto_72
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_21

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    if-nez p0, :cond_c

    goto :goto_21

    .line 455
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/w43;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/w43;

    iget v1, v0, Lads_mobile_sdk/w43;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w43;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/w43;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/w43;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/w43;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lads_mobile_sdk/w43;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/w43;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/w43;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/w43;->a:Lads_mobile_sdk/b53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto :goto_5e

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4d

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 80
    :cond_4d
    iget-object p2, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 268
    iput-object p0, v0, Lads_mobile_sdk/w43;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/w43;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/w43;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/w43;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5e

    return-object v1

    .line 269
    :cond_5e
    :goto_5e
    :try_start_5e
    iget-object p0, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_6c

    .line 461
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_6c
    move-exception p0

    .line 462
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic c(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/x43;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/x43;

    iget v1, v0, Lads_mobile_sdk/x43;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x43;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/x43;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/x43;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/x43;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lads_mobile_sdk/x43;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/x43;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/x43;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/x43;->a:Lads_mobile_sdk/b53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 114
    :cond_47
    iget-object p2, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 297
    iput-object p0, v0, Lads_mobile_sdk/x43;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/x43;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/x43;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/x43;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_58

    return-object v1

    :cond_58
    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    .line 298
    :goto_5b
    :try_start_5b
    iget-object p3, p2, Lads_mobile_sdk/b53;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p2, p2, Lads_mobile_sdk/b53;->e:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_6b

    .line 484
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 485
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_6b
    move-exception p1

    .line 668
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/y43;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/y43;

    iget v1, v0, Lads_mobile_sdk/y43;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y43;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/y43;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/y43;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/y43;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, v0, Lads_mobile_sdk/y43;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/y43;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/y43;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/y43;->a:Lads_mobile_sdk/b53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_5b

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4a

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 87
    :cond_4a
    iget-object p2, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 279
    iput-object p0, v0, Lads_mobile_sdk/y43;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/y43;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/y43;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/y43;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5b

    return-object v1

    .line 280
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object p3, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/hr3;

    if-nez p3, :cond_6e

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_6b

    .line 475
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_6b
    move-exception p0

    goto/16 :goto_df

    :cond_6e
    :try_start_6e
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lads_mobile_sdk/b53;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 477
    iget-object v0, p3, Lads_mobile_sdk/hr3;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_82

    .line 478
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_87

    .line 479
    :cond_82
    iget v0, p3, Lads_mobile_sdk/hr3;->a:I

    goto :goto_87

    .line 480
    :cond_85
    iget v0, p3, Lads_mobile_sdk/hr3;->a:I

    :goto_87
    if-gez v0, :cond_8a

    const/4 v0, 0x0

    :cond_8a
    if-gtz v0, :cond_92

    .line 481
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8e
    .catchall {:try_start_6e .. :try_end_8e} :catchall_6b

    .line 673
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 674
    :cond_92
    :try_start_92
    iget-object v1, p0, Lads_mobile_sdk/b53;->c:Ljava/util/LinkedHashMap;

    .line 864
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a2

    .line 865
    new-instance v2, Lkotlin/collections/ArrayDeque;

    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 1058
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :cond_a2
    check-cast v2, Lkotlin/collections/ArrayDeque;

    .line 1060
    iget-object p0, p0, Lads_mobile_sdk/b53;->a:Lads_mobile_sdk/tx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 1062
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-wide v5, p3, Lads_mobile_sdk/hr3;->c:J

    .line 1064
    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    sub-long/2addr p0, v5

    .line 1066
    :goto_bb
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d9

    .line 1067
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-gt p3, v0, :cond_d5

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p3, v5, p0

    if-gez p3, :cond_d9

    .line 1069
    :cond_d5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_bb

    .line 1070
    :cond_d9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_db
    .catchall {:try_start_92 .. :try_end_db} :catchall_6b

    .line 1249
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 1250
    :goto_df
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/z43;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/z43;

    iget v1, v0, Lads_mobile_sdk/z43;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z43;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/z43;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/z43;-><init>(Lads_mobile_sdk/b53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/z43;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget v2, v0, Lads_mobile_sdk/z43;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/z43;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/z43;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/z43;->a:Lads_mobile_sdk/b53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_63

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/j53;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_52

    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p0

    return-object p0

    .line 130
    :cond_52
    iget-object p2, p0, Lads_mobile_sdk/b53;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 308
    iput-object p0, v0, Lads_mobile_sdk/z43;->a:Lads_mobile_sdk/b53;

    iput-object p1, v0, Lads_mobile_sdk/z43;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/z43;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/z43;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_63

    return-object v1

    .line 309
    :cond_63
    :goto_63
    :try_start_63
    iget-object p3, p0, Lads_mobile_sdk/b53;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/collections/ArrayDeque;

    if-eqz p3, :cond_ff

    .line 310
    invoke-virtual {p3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    goto/16 :goto_ff

    .line 313
    :cond_75
    iget-object v0, p0, Lads_mobile_sdk/b53;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hr3;

    if-nez v0, :cond_90

    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p0
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_8d

    .line 490
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_8d
    move-exception p0

    goto/16 :goto_10d

    :cond_90
    :try_start_90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 491
    iget-object v1, p0, Lads_mobile_sdk/b53;->e:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 492
    iget-object v1, v0, Lads_mobile_sdk/hr3;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_a4

    .line 493
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a9

    .line 494
    :cond_a4
    iget v1, v0, Lads_mobile_sdk/hr3;->a:I

    goto :goto_a9

    .line 495
    :cond_a7
    iget v1, v0, Lads_mobile_sdk/hr3;->a:I

    :goto_a9
    if-gez v1, :cond_ac

    const/4 v1, 0x0

    .line 496
    :cond_ac
    iget-object v2, p0, Lads_mobile_sdk/b53;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 498
    iget-wide v5, v0, Lads_mobile_sdk/hr3;->c:J

    .line 499
    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 501
    :goto_bc
    invoke-virtual {p3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_da

    .line 502
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-gt v5, v1, :cond_d6

    invoke-virtual {p3}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_da

    .line 504
    :cond_d6
    invoke-static {p3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_bc

    :cond_da
    if-lez v1, :cond_f1

    .line 505
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-lt p3, v1, :cond_f1

    .line 506
    iget-object p0, p0, Lads_mobile_sdk/b53;->e:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    iget-wide p0, v0, Lads_mobile_sdk/hr3;->d:J

    .line 508
    invoke-static {p0, p1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p0
    :try_end_ed
    .catchall {:try_start_90 .. :try_end_ed} :catchall_8d

    .line 672
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 673
    :cond_f1
    :try_start_f1
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p0
    :try_end_fb
    .catchall {:try_start_f1 .. :try_end_fb} :catchall_8d

    .line 835
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 836
    :cond_ff
    :goto_ff
    :try_start_ff
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p0
    :try_end_109
    .catchall {:try_start_ff .. :try_end_109} :catchall_8d

    .line 1015
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_10d
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;
    .registers 4

    .line 457
    invoke-static {p0, p2, p1, p3}, Lads_mobile_sdk/b53;->b(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/xa2;)Ljava/lang/Object;
    .registers 4

    .line 464
    invoke-static {p0, p2, p1, p3}, Lads_mobile_sdk/b53;->e(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
