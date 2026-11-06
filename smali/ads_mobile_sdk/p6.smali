###### Class ads_mobile_sdk.p6 (ads_mobile_sdk.p6)
.class public final Lads_mobile_sdk/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;
.implements Lads_mobile_sdk/n;


# instance fields
.field public final a:Lads_mobile_sdk/r6;

.field public final b:Lads_mobile_sdk/ec3;

.field public final c:Lads_mobile_sdk/i2;

.field public final d:Lads_mobile_sdk/j53;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r6;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/util/Set;Lads_mobile_sdk/j53;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;Ljava/lang/Class;)V
    .registers 10

    .line 1
    const-string v0, "adQualityDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTypes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "requestType"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "flags"

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "activityTracker"

    invoke-static {p7, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "adActivityClass"

    invoke-static {p8, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/p6;->b:Lads_mobile_sdk/ec3;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/p6;->c:Lads_mobile_sdk/i2;

    .line 30
    iput-object p5, p0, Lads_mobile_sdk/p6;->d:Lads_mobile_sdk/j53;

    .line 31
    iput-object p6, p0, Lads_mobile_sdk/p6;->e:Lads_mobile_sdk/ex0;

    .line 33
    iput-object p8, p0, Lads_mobile_sdk/p6;->f:Ljava/lang/Class;

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-virtual {p7, p0}, Lads_mobile_sdk/f0;->a(Lads_mobile_sdk/n;)V

    return-void
.end method


# virtual methods
.method public final h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 80
    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 81
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 82
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 83
    iget-object v1, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v2, Lads_mobile_sdk/g7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/g7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    .line 84
    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 59
    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 61
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    iget-object v1, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v2, Lads_mobile_sdk/e7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/e7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    .line 63
    :cond_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lads_mobile_sdk/p6;->f:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 94
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 95
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 96
    iget-object v1, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v2, Lads_mobile_sdk/k7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/k7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    :cond_28
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 67
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 68
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 69
    iget-object v1, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v2, Lads_mobile_sdk/y6;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/y6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    :cond_1e
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    check-cast p1, Lads_mobile_sdk/q7;

    .line 75
    iget-object v0, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 76
    iget-object v1, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v2, Lads_mobile_sdk/m7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/m7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    :cond_1e
    return-void
.end method

.method public final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 48
    iget-object p1, p0, Lads_mobile_sdk/p6;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    const-string v0, "key"

    const-string v1, "gads:ad_quality_metrics:enabled"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 67
    iget-object p1, p0, Lads_mobile_sdk/p6;->d:Lads_mobile_sdk/j53;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_96

    .line 77
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 78
    :pswitch_2b
    iget-object p1, p0, Lads_mobile_sdk/p6;->c:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->E:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :cond_38
    iget-object p1, p0, Lads_mobile_sdk/p6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object p1, p0, Lads_mobile_sdk/p6;->a:Lads_mobile_sdk/r6;

    .line 81
    iget-object v0, p0, Lads_mobile_sdk/p6;->b:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v0, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v0, v0, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lads_mobile_sdk/p6;->c:Lads_mobile_sdk/i2;

    iget-object v1, v1, Lads_mobile_sdk/i2;->E:Ljava/util/List;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 130
    check-cast v3, Landroid/net/Uri;

    .line 131
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 180
    :cond_74
    check-cast p1, Lads_mobile_sdk/q7;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    const-string v1, "gwsQueryId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "urls"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v1, p1, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p1, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    new-instance v4, Lads_mobile_sdk/c7;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v0, v2, v5}, Lads_mobile_sdk/c7;-><init>(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v4}, Lads_mobile_sdk/i40;->a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f40;Lkotlin/jvm/functions/Function2;)V

    .line 325
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 326
    :cond_93
    :pswitch_93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_93
        :pswitch_2b
        :pswitch_93
        :pswitch_93
        :pswitch_2b
        :pswitch_93
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method
