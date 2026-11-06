###### Class ads_mobile_sdk.ur3 (ads_mobile_sdk.ur3)
.class public interface abstract Lads_mobile_sdk/ur3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/ed2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/tr3;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/tr3;

    iget v1, v0, Lads_mobile_sdk/tr3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tr3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tr3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/tr3;-><init>(Lads_mobile_sdk/ur3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/tr3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/tr3;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lads_mobile_sdk/tr3;->b:Ljava/lang/String;

    iget-object p0, v0, Lads_mobile_sdk/tr3;->a:Lads_mobile_sdk/ur3;

    :try_start_29
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    return-object p3

    :catch_2d
    move-exception p2

    goto :goto_48

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_3a
    iput-object p0, v0, Lads_mobile_sdk/tr3;->a:Lads_mobile_sdk/ur3;

    iput-object p1, v0, Lads_mobile_sdk/tr3;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/tr3;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/ed2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_2d

    if-ne p0, v1, :cond_47

    return-object v1

    :cond_47
    return-object p0

    .line 6
    :goto_48
    check-cast p0, Lads_mobile_sdk/as3;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4

    .line 7
    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :try_start_a
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p2

    .line 61
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
