###### Class ads_mobile_sdk.a52 (ads_mobile_sdk.a52)
.class public final Lads_mobile_sdk/a52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/v3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v3;)V
    .registers 3

    .line 1
    const-string v0, "adEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/a52;->a:Lads_mobile_sdk/v3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/z42;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/z42;

    iget v0, p1, Lads_mobile_sdk/z42;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/z42;->e:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/z42;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/z42;-><init>(Lads_mobile_sdk/a52;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lads_mobile_sdk/z42;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, p1, Lads_mobile_sdk/z42;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    if-eq v1, v3, :cond_34

    if-ne v1, v2, :cond_2c

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p2, p1, Lads_mobile_sdk/z42;->b:Ljava/util/Map;

    iget-object v1, p1, Lads_mobile_sdk/z42;->a:Lads_mobile_sdk/a52;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object p3, p0, Lads_mobile_sdk/a52;->a:Lads_mobile_sdk/v3;

    iput-object p0, p1, Lads_mobile_sdk/z42;->a:Lads_mobile_sdk/a52;

    iput-object p2, p1, Lads_mobile_sdk/z42;->b:Ljava/util/Map;

    iput v3, p1, Lads_mobile_sdk/z42;->e:I

    invoke-virtual {p3, p1}, Lads_mobile_sdk/v3;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4e

    goto :goto_6f

    :cond_4e
    move-object v1, p0

    .line 25
    :goto_4f
    const-string p3, "sccg"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_73

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_60

    goto :goto_73

    .line 26
    :cond_60
    iget-object p2, v1, Lads_mobile_sdk/a52;->a:Lads_mobile_sdk/v3;

    const/4 p3, 0x0

    iput-object p3, p1, Lads_mobile_sdk/z42;->a:Lads_mobile_sdk/a52;

    iput-object p3, p1, Lads_mobile_sdk/z42;->b:Ljava/util/Map;

    iput v2, p1, Lads_mobile_sdk/z42;->e:I

    invoke-virtual {p2, p1}, Lads_mobile_sdk/v3;->f(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v0, :cond_70

    :goto_6f
    return-object v0

    .line 28
    :cond_70
    :goto_70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_73
    :goto_73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->I:Lads_mobile_sdk/u11;

    return-object v0
.end method
