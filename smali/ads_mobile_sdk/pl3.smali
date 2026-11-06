###### Class ads_mobile_sdk.pl3 (ads_mobile_sdk.pl3)
.class public abstract Lads_mobile_sdk/pl3;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public c:Lads_mobile_sdk/v01;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lads_mobile_sdk/pl3;-><init>(Lads_mobile_sdk/s11;)V

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/s11;)V
    .registers 3

    const/4 v0, 0x2

    .line 288
    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/pl3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ol3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ol3;

    iget v1, v0, Lads_mobile_sdk/ol3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ol3;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ol3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ol3;-><init>(Lads_mobile_sdk/pl3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ol3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 290
    iget v2, v0, Lads_mobile_sdk/ol3;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lads_mobile_sdk/ol3;->a:Lads_mobile_sdk/pl3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    iput-object p0, v0, Lads_mobile_sdk/ol3;->a:Lads_mobile_sdk/pl3;

    iput v3, v0, Lads_mobile_sdk/ol3;->d:I

    invoke-interface {p0, v0}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_41

    return-object v1

    .line 292
    :cond_41
    :goto_41
    check-cast p1, Lads_mobile_sdk/v01;

    iput-object p1, p0, Lads_mobile_sdk/pl3;->c:Lads_mobile_sdk/v01;

    .line 294
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 2
    sget-object p1, Lads_mobile_sdk/s11;->O0:Lads_mobile_sdk/s11;

    .line 11
    sget-object v0, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 12
    :try_start_d
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/gh3;

    invoke-interface {p0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v2

    sget-object v3, Lads_mobile_sdk/q11;->c:Lads_mobile_sdk/q11;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v1, v0, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/pl3;->c:Lads_mobile_sdk/v01;

    const/4 v1, 0x0

    if-nez v0, :cond_31

    const-string v0, "result"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_31

    :catchall_2f
    move-exception v0

    goto :goto_40

    .line 26
    :cond_31
    :goto_31
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_3c

    .line 27
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 28
    invoke-static {v2, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_2f

    .line 29
    :cond_3c
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 37
    :goto_40
    :try_start_40
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 41
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_78

    .line 43
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_55

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_55

    .line 49
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_55

    :catchall_53
    move-exception v0

    goto :goto_79

    .line 55
    :cond_55
    :goto_55
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_70

    .line 56
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_68

    .line 57
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_62

    throw v0

    .line 58
    :cond_62
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :cond_68
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 60
    :cond_70
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 61
    :cond_78
    throw v0
    :try_end_79
    .catchall {:try_start_40 .. :try_end_79} :catchall_53

    .line 62
    :goto_79
    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/pl3;->a(Lads_mobile_sdk/pl3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
