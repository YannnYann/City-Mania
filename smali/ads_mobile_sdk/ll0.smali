###### Class ads_mobile_sdk.ll0 (ads_mobile_sdk.ll0)
.class public final Lads_mobile_sdk/ll0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 21
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    const-string v0, "start"

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 22
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object p1

    .line 23
    iget-object p2, p1, Lads_mobile_sdk/g41;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25
    invoke-virtual {p1}, Lads_mobile_sdk/g41;->d()V

    .line 26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 28
    :cond_1b
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    const-string v0, "stop"

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 29
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object p1

    .line 30
    iget-object p2, p1, Lads_mobile_sdk/g41;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 32
    invoke-virtual {p1}, Lads_mobile_sdk/g41;->d()V

    .line 33
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    :cond_36
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string p3, "cancel"

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_64

    .line 36
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object p1

    .line 37
    iget-object p2, p1, Lads_mobile_sdk/g41;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    .line 38
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    iget-object v0, p1, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    new-instance v3, Lads_mobile_sdk/y31;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Lads_mobile_sdk/y31;-><init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 41
    invoke-virtual {p1}, Lads_mobile_sdk/g41;->d()V

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1

    .line 46
    :cond_64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->i:Lads_mobile_sdk/u11;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
