###### Class ads_mobile_sdk.ei (ads_mobile_sdk.ei)
.class public final Lads_mobile_sdk/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;)V
    .registers 3

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/ei;->a:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->l:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/di;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/di;

    iget v1, v0, Lads_mobile_sdk/di;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/di;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/di;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/di;-><init>(Lads_mobile_sdk/ei;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/di;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lads_mobile_sdk/di;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_40

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object v0, v0, Lads_mobile_sdk/di;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v2, v0, Lads_mobile_sdk/di;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ei;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lads_mobile_sdk/ei;->a:Lads_mobile_sdk/g30;

    iput-object p0, v0, Lads_mobile_sdk/di;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/di;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/g30;->D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_5f

    :cond_50
    move-object v2, p0

    .line 25
    :goto_51
    check-cast p1, Ljava/lang/String;

    .line 29
    iget-object v2, v2, Lads_mobile_sdk/ei;->a:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/di;->a:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/di;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/g30;->L(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_60

    :goto_5f
    return-object v1

    :cond_60
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 30
    :goto_63
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    new-instance v1, Lads_mobile_sdk/ci;

    invoke-direct {v1, v0, p1}, Lads_mobile_sdk/ci;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
