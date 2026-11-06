###### Class ads_mobile_sdk.k81 (ads_mobile_sdk.k81)
.class public final Lads_mobile_sdk/k81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/e01;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e01;)V
    .registers 3

    .line 1
    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/k81;->a:Lads_mobile_sdk/e01;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/j81;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/j81;

    iget v0, p1, Lads_mobile_sdk/j81;->c:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/j81;->c:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/j81;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/j81;-><init>(Lads_mobile_sdk/k81;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lads_mobile_sdk/j81;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget v1, p1, Lads_mobile_sdk/j81;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    if-ne v1, v2, :cond_2b

    :try_start_25
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_70

    :catch_29
    move-exception p1

    goto :goto_6b

    .line 20
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    const-string p3, "u"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p3, :cond_59

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "URL is missing from an httpTrack GMSG: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, v1, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 28
    :cond_59
    :try_start_59
    iget-object p2, p0, Lads_mobile_sdk/k81;->a:Lads_mobile_sdk/e01;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput v2, p1, Lads_mobile_sdk/j81;->c:I

    const/16 p3, 0x1e

    invoke-static {p2, v3, v1, p1, p3}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_68} :catch_29

    if-ne p1, v0, :cond_70

    return-object v0

    .line 30
    :goto_6b
    sget-object p2, Lads_mobile_sdk/xs3;->a:Lads_mobile_sdk/xs3;

    invoke-static {p2, p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/xs3;Ljava/lang/Exception;)V

    .line 32
    :cond_70
    :goto_70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->g:Lads_mobile_sdk/u11;

    return-object v0
.end method
