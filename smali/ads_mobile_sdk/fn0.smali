###### Class ads_mobile_sdk.fn0 (ads_mobile_sdk.fn0)
.class public final Lads_mobile_sdk/fn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/cn0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/cn0;)V
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceTierManager"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/fn0;->a:Lads_mobile_sdk/cn0;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->x:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 22
    new-instance p1, Lads_mobile_sdk/q01;

    .line 23
    new-instance v0, Lads_mobile_sdk/en0;

    .line 24
    iget-object v1, p0, Lads_mobile_sdk/fn0;->a:Lads_mobile_sdk/cn0;

    .line 25
    iget-object v1, v1, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mm0;

    invoke-virtual {v1}, Lads_mobile_sdk/mm0;->getNumber()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lads_mobile_sdk/fn0;->a:Lads_mobile_sdk/cn0;

    invoke-virtual {v2}, Lads_mobile_sdk/cn0;->a()Lads_mobile_sdk/nm0;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/nm0;->getNumber()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lads_mobile_sdk/fn0;->a:Lads_mobile_sdk/cn0;

    .line 29
    iget-object v4, v3, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v5, "key"

    const-string v6, "gads:available_processors_tier:enabled"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v4, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_45

    .line 49
    sget-object v3, Lads_mobile_sdk/om0;->b:Lads_mobile_sdk/om0;

    goto :goto_63

    .line 51
    :cond_45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    .line 52
    iget-object v5, v3, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Lads_mobile_sdk/cn0;->a(I)Lads_mobile_sdk/om0;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    iget-object v3, v3, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/om0;

    .line 54
    :goto_63
    invoke-virtual {v3}, Lads_mobile_sdk/om0;->getNumber()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 55
    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/en0;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 56
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
