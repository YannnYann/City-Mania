###### Class ads_mobile_sdk.r1 (ads_mobile_sdk.r1)
.class public final Lads_mobile_sdk/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .registers 3

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/p1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/p1;

    iget v1, v0, Lads_mobile_sdk/p1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/p1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/p1;-><init>(Lads_mobile_sdk/r1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/p1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lads_mobile_sdk/p1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lads_mobile_sdk/p1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/p1;->a:Lads_mobile_sdk/rr3;

    :try_start_2a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_64

    :catchall_2e
    move-exception p2

    goto :goto_70

    .line 29
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    sget-object p2, Lads_mobile_sdk/s11;->L1:Lads_mobile_sdk/s11;

    .line 61
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 62
    :try_start_47
    iget-object v2, p0, Lads_mobile_sdk/r1;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    new-instance v5, Lads_mobile_sdk/q1;

    invoke-direct {v5, p1, v4}, Lads_mobile_sdk/q1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/p1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/p1;->b:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/p1;->e:I

    invoke-interface {v2, v5, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_6c

    if-ne p1, v1, :cond_61

    return-object v1

    :cond_61
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 63
    :goto_64
    :try_start_64
    check-cast p2, Lads_mobile_sdk/o1;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_2e

    .line 101
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_6c
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 140
    :goto_70
    :try_start_70
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 144
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_a8

    .line 146
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_85

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_85

    .line 152
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_85

    :catchall_83
    move-exception p2

    goto :goto_a9

    .line 158
    :cond_85
    :goto_85
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_a0

    .line 159
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_98

    .line 160
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_92

    throw p2

    .line 161
    :cond_92
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 162
    :cond_98
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 163
    :cond_a0
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 164
    :cond_a8
    throw p2
    :try_end_a9
    .catchall {:try_start_70 .. :try_end_a9} :catchall_83

    .line 165
    :goto_a9
    :try_start_a9
    throw p2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
