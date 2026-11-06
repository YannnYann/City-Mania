###### Class ads_mobile_sdk.dw (ads_mobile_sdk.dw)
.class public final Lads_mobile_sdk/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/rb;

.field public final b:Lads_mobile_sdk/v3;

.field public final c:Lads_mobile_sdk/d63;

.field public final d:Lads_mobile_sdk/qs0;

.field public final e:Lads_mobile_sdk/i2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rb;Lads_mobile_sdk/v3;Lads_mobile_sdk/d63;Lads_mobile_sdk/qs0;Lads_mobile_sdk/i2;)V
    .registers 7

    .line 1
    const-string v0, "adSpamClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsEventHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/dw;->a:Lads_mobile_sdk/rb;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/dw;->b:Lads_mobile_sdk/v3;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/dw;->c:Lads_mobile_sdk/d63;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/dw;->d:Lads_mobile_sdk/qs0;

    .line 32
    iput-object p5, p0, Lads_mobile_sdk/dw;->e:Lads_mobile_sdk/i2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/cw;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/cw;

    iget v1, v0, Lads_mobile_sdk/cw;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cw;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cw;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/cw;-><init>(Lads_mobile_sdk/dw;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/cw;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lads_mobile_sdk/cw;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_47

    if-eq v2, v3, :cond_3a

    if-ne v2, v5, :cond_32

    iget-object p1, v0, Lads_mobile_sdk/cw;->b:Lads_mobile_sdk/r31;

    iget-object p2, v0, Lads_mobile_sdk/cw;->a:Lads_mobile_sdk/dw;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_af

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object p1, v0, Lads_mobile_sdk/cw;->c:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/cw;->b:Lads_mobile_sdk/r31;

    iget-object v2, v0, Lads_mobile_sdk/cw;->a:Lads_mobile_sdk/dw;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    move-object p2, v2

    goto :goto_8f

    :cond_47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    const-string p3, "u"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_6c

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "URL is missing from a click GMSG: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, v4, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 43
    :cond_6c
    const-string v2, "sc"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "1"

    const/4 v6, 0x0

    invoke-static {p2, v2, v6, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 44
    iget-object p2, p0, Lads_mobile_sdk/dw;->b:Lads_mobile_sdk/v3;

    iput-object p0, v0, Lads_mobile_sdk/cw;->a:Lads_mobile_sdk/dw;

    iput-object p1, v0, Lads_mobile_sdk/cw;->b:Lads_mobile_sdk/r31;

    iput-object p3, v0, Lads_mobile_sdk/cw;->c:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/cw;->f:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/v3;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8e

    goto :goto_ae

    :cond_8e
    move-object p2, p0

    .line 50
    :goto_8f
    iget-object v2, p2, Lads_mobile_sdk/dw;->d:Lads_mobile_sdk/qs0;

    .line 51
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v3, "parse(...)"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v3, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 53
    iget-object v6, p2, Lads_mobile_sdk/dw;->e:Lads_mobile_sdk/i2;

    iget-object v6, v6, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 54
    iput-object p2, v0, Lads_mobile_sdk/cw;->a:Lads_mobile_sdk/dw;

    iput-object p1, v0, Lads_mobile_sdk/cw;->b:Lads_mobile_sdk/r31;

    iput-object v4, v0, Lads_mobile_sdk/cw;->c:Ljava/lang/String;

    iput v5, v0, Lads_mobile_sdk/cw;->f:I

    invoke-virtual {v2, p3, v3, v6, v0}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_af

    :goto_ae
    return-object v1

    .line 55
    :cond_af
    :goto_af
    check-cast p3, Landroid/net/Uri;

    .line 76
    :try_start_b1
    iget-object v0, p2, Lads_mobile_sdk/dw;->a:Lads_mobile_sdk/rb;

    invoke-virtual {v0, p3, p1}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    iget-object p2, p2, Lads_mobile_sdk/dw;->c:Lads_mobile_sdk/d63;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "toString(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 79
    const-string p3, "toUriWithURLValidation(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lads_mobile_sdk/d63;->a(Lads_mobile_sdk/d63;Landroid/net/Uri;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_d7} :catch_d8

    goto :goto_de

    :catch_d8
    move-exception p1

    .line 81
    sget-object p2, Lads_mobile_sdk/xs3;->a:Lads_mobile_sdk/xs3;

    invoke-static {p2, p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/xs3;Ljava/lang/Exception;)V

    .line 83
    :goto_de
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->f:Lads_mobile_sdk/u11;

    return-object v0
.end method
