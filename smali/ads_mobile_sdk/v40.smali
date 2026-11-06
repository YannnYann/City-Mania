###### Class ads_mobile_sdk.v40 (ads_mobile_sdk.v40)
.class public final Lads_mobile_sdk/v40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zr1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/i2;

.field public final synthetic b:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/v40;->a:Lads_mobile_sdk/i2;

    iput-object p2, p0, Lads_mobile_sdk/v40;->b:Lads_mobile_sdk/cw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/a04;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/u40;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/u40;

    iget v1, v0, Lads_mobile_sdk/u40;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u40;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/u40;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/u40;-><init>(Lads_mobile_sdk/v40;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/u40;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 190
    iget v2, v0, Lads_mobile_sdk/u40;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    iget-object p2, p0, Lads_mobile_sdk/v40;->a:Lads_mobile_sdk/i2;

    iget-boolean p2, p2, Lads_mobile_sdk/i2;->H0:Z

    if-eqz p2, :cond_5a

    .line 194
    new-instance p2, Lads_mobile_sdk/i50;

    iget-object v2, p0, Lads_mobile_sdk/v40;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "get(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/r41;

    invoke-direct {p2, v2}, Lads_mobile_sdk/i50;-><init>(Lads_mobile_sdk/r41;)V

    .line 195
    iput v3, v0, Lads_mobile_sdk/u40;->c:I

    const-string v2, "/clearLocalStorageKeys"

    invoke-interface {p1, v2, p2, v0}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_57

    return-object v1

    .line 200
    :cond_57
    :goto_57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_5a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lads_mobile_sdk/or1;)Ljava/lang/Object;
    .registers 3

    .line 202
    check-cast p1, Lads_mobile_sdk/a04;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/v40;->a(Lads_mobile_sdk/a04;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
