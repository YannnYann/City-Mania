###### Class ads_mobile_sdk.xs0 (ads_mobile_sdk.xs0)
.class public final Lads_mobile_sdk/xs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/g30;

.field public final b:Lads_mobile_sdk/ls0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lads_mobile_sdk/ls0;)V
    .registers 4

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/xs0;->a:Lads_mobile_sdk/g30;

    .line 23
    iput-object p2, p0, Lads_mobile_sdk/xs0;->b:Lads_mobile_sdk/ls0;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->B:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ws0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ws0;

    iget v1, v0, Lads_mobile_sdk/ws0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ws0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ws0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ws0;-><init>(Lads_mobile_sdk/xs0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ws0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget v2, v0, Lads_mobile_sdk/ws0;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_50

    if-eq v2, v5, :cond_4a

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v1, v0, Lads_mobile_sdk/ws0;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/ws0;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto/16 :goto_96

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lads_mobile_sdk/ws0;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_7f

    :cond_4a
    iget-object v2, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lads_mobile_sdk/xs0;->b:Lads_mobile_sdk/ls0;

    .line 28
    iget-object p1, p1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    .line 29
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/xs0;->a:Lads_mobile_sdk/g30;

    iput-object p0, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    iput v5, v0, Lads_mobile_sdk/ws0;->f:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/g30;->G(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6a

    goto :goto_91

    :cond_6a
    move-object v2, p0

    .line 31
    :goto_6b
    check-cast p1, Ljava/lang/String;

    .line 39
    iget-object v5, v2, Lads_mobile_sdk/xs0;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    iput-object p1, v0, Lads_mobile_sdk/ws0;->b:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/ws0;->f:I

    invoke-virtual {v5, v0}, Lads_mobile_sdk/g30;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7c

    goto :goto_91

    :cond_7c
    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    .line 40
    :goto_7f
    check-cast p1, Ljava/lang/String;

    .line 49
    iget-object v5, v2, Lads_mobile_sdk/xs0;->a:Lads_mobile_sdk/g30;

    iput-object v2, v0, Lads_mobile_sdk/ws0;->a:Lads_mobile_sdk/xs0;

    iput-object v4, v0, Lads_mobile_sdk/ws0;->b:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/ws0;->c:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/ws0;->f:I

    invoke-virtual {v5, v0}, Lads_mobile_sdk/g30;->F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_92

    :goto_91
    return-object v1

    :cond_92
    move-object v3, p1

    move-object p1, v0

    move-object v0, v2

    move-object v2, v4

    .line 50
    :goto_96
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 60
    iget-object p1, v0, Lads_mobile_sdk/xs0;->b:Lads_mobile_sdk/ls0;

    .line 61
    iget-object p1, p1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    .line 62
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 63
    const-string p1, "fa"

    :goto_a5
    move-object v5, p1

    goto :goto_a9

    :cond_a7
    const/4 p1, 0x0

    goto :goto_a5

    .line 64
    :goto_a9
    new-instance v1, Lads_mobile_sdk/vs0;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/vs0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 66
    :cond_b5
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/vs0;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/vs0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
