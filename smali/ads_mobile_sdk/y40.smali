###### Class ads_mobile_sdk.y40 (ads_mobile_sdk.y40)
.class public final Lads_mobile_sdk/y40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zr1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ry1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ry1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y40;->a:Lads_mobile_sdk/ry1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/a04;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/x40;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/x40;

    iget v1, v0, Lads_mobile_sdk/x40;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x40;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/x40;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/x40;-><init>(Lads_mobile_sdk/y40;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/x40;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 226
    iget v2, v0, Lads_mobile_sdk/x40;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    new-instance p2, Lads_mobile_sdk/w40;

    iget-object v2, p0, Lads_mobile_sdk/y40;->a:Lads_mobile_sdk/ry1;

    const/4 v4, 0x0

    invoke-direct {p2, v2, v4}, Lads_mobile_sdk/w40;-><init>(Lads_mobile_sdk/ry1;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lads_mobile_sdk/x40;->c:I

    invoke-interface {p1, p2, v0}, Lads_mobile_sdk/a04;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_45

    return-object v1

    .line 228
    :cond_45
    :goto_45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lads_mobile_sdk/or1;)Ljava/lang/Object;
    .registers 3

    .line 230
    check-cast p1, Lads_mobile_sdk/a04;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/y40;->a(Lads_mobile_sdk/a04;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
