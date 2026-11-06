###### Class ads_mobile_sdk.bu3 (ads_mobile_sdk.bu3)
.class public final Lads_mobile_sdk/bu3;
.super Lads_mobile_sdk/ou;
.source "SourceFile"


# instance fields
.field public final l:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 14

    .line 2
    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    move-object v2, p5

    move-object v3, p6

    .line 36
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ou;-><init>(Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;)V

    .line 37
    iput-object p1, v1, Lads_mobile_sdk/bu3;->l:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->Y:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zt3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zt3;

    iget v1, v0, Lads_mobile_sdk/zt3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zt3;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zt3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zt3;-><init>(Lads_mobile_sdk/bu3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zt3;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lads_mobile_sdk/zt3;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_87

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    .line 58
    iget-object p1, p1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    const-string v2, "key"

    const-string v5, "gads:trustless_token_caching_in_signal_source_enabled"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v5, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 78
    iget-object p1, p0, Lads_mobile_sdk/bu3;->l:Lads_mobile_sdk/g30;

    iput v4, v0, Lads_mobile_sdk/zt3;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {p1, v0}, Lads_mobile_sdk/g30;->j(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_67

    goto :goto_86

    .line 80
    :cond_67
    :goto_67
    check-cast p1, Lads_mobile_sdk/v01;

    if-eqz p1, :cond_99

    .line 101
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_72

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 102
    :cond_72
    check-cast p1, Lads_mobile_sdk/q01;

    .line 103
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 104
    check-cast p1, Ljava/lang/String;

    goto :goto_9a

    .line 105
    :cond_79
    iget-object p1, p0, Lads_mobile_sdk/bu3;->l:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/zt3;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {p1, v0}, Lads_mobile_sdk/g30;->k(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_87

    :goto_86
    return-object v1

    .line 107
    :cond_87
    :goto_87
    check-cast p1, Lads_mobile_sdk/v01;

    if-eqz p1, :cond_99

    .line 126
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_92

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 127
    :cond_92
    check-cast p1, Lads_mobile_sdk/q01;

    .line 128
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 129
    check-cast p1, Ljava/lang/String;

    goto :goto_9a

    :cond_99
    const/4 p1, 0x0

    .line 130
    :goto_9a
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/yt3;

    invoke-direct {v1, p1}, Lads_mobile_sdk/yt3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/au3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/au3;

    iget v1, v0, Lads_mobile_sdk/au3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/au3;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/au3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/au3;-><init>(Lads_mobile_sdk/bu3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/au3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Lads_mobile_sdk/au3;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v5, :cond_35

    if-ne v2, v4, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/au3;->a:Lads_mobile_sdk/bu3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    .line 45
    iget-object p1, p1, Lads_mobile_sdk/ex0;->r:Lads_mobile_sdk/x00;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-string v2, "key"

    const-string v6, "gads:trustless_token_caching_in_signal_source_enabled"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v6, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/bu3;->l:Lads_mobile_sdk/g30;

    iput-object p0, v0, Lads_mobile_sdk/au3;->a:Lads_mobile_sdk/bu3;

    iput v5, v0, Lads_mobile_sdk/au3;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-static {p1, v0}, Lads_mobile_sdk/g30;->m(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    goto :goto_83

    :cond_6c
    move-object v2, p0

    .line 67
    :goto_6d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_85

    .line 71
    :cond_76
    iput-object v3, v0, Lads_mobile_sdk/au3;->a:Lads_mobile_sdk/bu3;

    iput v4, v0, Lads_mobile_sdk/au3;->d:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {v2, v0}, Lads_mobile_sdk/ou;->b(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_84

    :goto_83
    return-object v1

    :cond_84
    return-object p1

    :cond_85
    :goto_85
    return-object v3
.end method
