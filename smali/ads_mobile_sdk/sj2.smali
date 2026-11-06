###### Class ads_mobile_sdk.sj2 (ads_mobile_sdk.sj2)
.class public final Lads_mobile_sdk/sj2;
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
    iput-object p1, p0, Lads_mobile_sdk/sj2;->a:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->N:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/rj2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/rj2;

    iget v1, v0, Lads_mobile_sdk/rj2;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/rj2;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/rj2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/rj2;-><init>(Lads_mobile_sdk/sj2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/rj2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lads_mobile_sdk/rj2;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lads_mobile_sdk/sj2;->a:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/rj2;->c:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/g30;->J(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3f

    return-object v1

    .line 23
    :cond_3f
    :goto_3f
    check-cast p1, Lads_mobile_sdk/v01;

    if-eqz p1, :cond_51

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_4a

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 47
    :cond_4a
    check-cast p1, Lads_mobile_sdk/q01;

    .line 48
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 49
    check-cast p1, Lads_mobile_sdk/pj2;

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    .line 50
    :goto_52
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/qj2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/qj2;-><init>(Lads_mobile_sdk/pj2;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
