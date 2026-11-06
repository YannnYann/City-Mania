###### Class ads_mobile_sdk.s24 (ads_mobile_sdk.s24)
.class public final Lads_mobile_sdk/s24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/p24;


# instance fields
.field public final a:Lads_mobile_sdk/ls0;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/o21;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lads_mobile_sdk/i2;

.field public final f:Lads_mobile_sdk/e01;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ls0;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/o21;Lads_mobile_sdk/ex0;Lads_mobile_sdk/i2;Lads_mobile_sdk/e01;)V
    .registers 8

    .line 1
    const-string v0, "firebaseAnalyticsAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lads_mobile_sdk/s24;->a:Lads_mobile_sdk/ls0;

    .line 28
    iput-object p2, p0, Lads_mobile_sdk/s24;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 29
    iput-object p3, p0, Lads_mobile_sdk/s24;->c:Lads_mobile_sdk/o21;

    .line 30
    iput-object p4, p0, Lads_mobile_sdk/s24;->d:Lads_mobile_sdk/ex0;

    .line 31
    iput-object p5, p0, Lads_mobile_sdk/s24;->e:Lads_mobile_sdk/i2;

    .line 32
    iput-object p6, p0, Lads_mobile_sdk/s24;->f:Lads_mobile_sdk/e01;

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/q24;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/q24;

    iget v1, v0, Lads_mobile_sdk/q24;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q24;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/q24;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/q24;-><init>(Lads_mobile_sdk/s24;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/q24;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lads_mobile_sdk/q24;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_43

    if-eq v2, v3, :cond_36

    if-ne v2, v4, :cond_2e

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_104

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object p1, v0, Lads_mobile_sdk/q24;->d:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/q24;->c:Ljava/lang/String;

    iget-object v3, v0, Lads_mobile_sdk/q24;->b:Landroid/net/Uri;

    iget-object v6, v0, Lads_mobile_sdk/q24;->a:Lads_mobile_sdk/s24;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e1

    :cond_43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "toString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lads_mobile_sdk/s24;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->R()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {p2, v2, v6, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_61

    return-object v5

    .line 54
    :cond_61
    iget-object p2, p0, Lads_mobile_sdk/s24;->a:Lads_mobile_sdk/ls0;

    .line 55
    const-string v2, "generateEventId"

    invoke-virtual {p2, v2}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_72

    :cond_71
    move-object v2, v5

    :goto_72
    if-nez v2, :cond_75

    return-object v5

    .line 57
    :cond_75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    iget-object p2, p0, Lads_mobile_sdk/s24;->c:Lads_mobile_sdk/o21;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/o21;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_83

    sget-object p2, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    goto :goto_8f

    .line 59
    :cond_83
    iget-object p2, p0, Lads_mobile_sdk/s24;->c:Lads_mobile_sdk/o21;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/o21;->c(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_8e

    sget-object p2, Lads_mobile_sdk/is0;->c:Lads_mobile_sdk/is0;

    goto :goto_8f

    :cond_8e
    move-object p2, v5

    :goto_8f
    if-nez p2, :cond_92

    return-object v5

    .line 60
    :cond_92
    iget-object v6, p0, Lads_mobile_sdk/s24;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/r24;

    invoke-direct {v7, p0, p2, v2, v5}, Lads_mobile_sdk/r24;-><init>(Lads_mobile_sdk/s24;Lads_mobile_sdk/is0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object p2, v7

    .line 61
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 62
    const-string v8, "<this>"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "block"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p2, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 321
    iget-object p2, p0, Lads_mobile_sdk/s24;->a:Lads_mobile_sdk/ls0;

    .line 322
    const-string v6, "getAppInstanceId"

    invoke-virtual {p2, v6}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c5

    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c6

    :cond_c5
    move-object p2, v5

    .line 324
    :goto_c6
    iget-object v6, p0, Lads_mobile_sdk/s24;->a:Lads_mobile_sdk/ls0;

    iput-object p0, v0, Lads_mobile_sdk/q24;->a:Lads_mobile_sdk/s24;

    iput-object p1, v0, Lads_mobile_sdk/q24;->b:Landroid/net/Uri;

    iput-object v2, v0, Lads_mobile_sdk/q24;->c:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/q24;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/q24;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    invoke-static {v6, v0}, Lads_mobile_sdk/ls0;->a(Lads_mobile_sdk/ls0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_dc

    goto :goto_103

    :cond_dc
    move-object v6, v3

    move-object v3, p1

    move-object p1, p2

    move-object p2, v6

    move-object v6, p0

    .line 326
    :goto_e1
    check-cast p2, Ljava/lang/String;

    .line 356
    iget-object v6, v6, Lads_mobile_sdk/s24;->f:Lads_mobile_sdk/e01;

    .line 357
    new-instance v7, Ljava/net/URL;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v3, Lads_mobile_sdk/ss0;

    invoke-direct {v3, p2, p1, v2}, Lads_mobile_sdk/ss0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput-object v5, v0, Lads_mobile_sdk/q24;->a:Lads_mobile_sdk/s24;

    iput-object v5, v0, Lads_mobile_sdk/q24;->b:Landroid/net/Uri;

    iput-object v5, v0, Lads_mobile_sdk/q24;->c:Ljava/lang/String;

    iput-object v5, v0, Lads_mobile_sdk/q24;->d:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/q24;->g:I

    invoke-interface {v6, v7, v3, v0}, Lads_mobile_sdk/e01;->a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_104

    :goto_103
    return-object v1

    .line 360
    :cond_104
    :goto_104
    check-cast p2, Lads_mobile_sdk/v01;

    .line 397
    instance-of p1, p2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_115

    .line 398
    check-cast p2, Lads_mobile_sdk/q01;

    .line 399
    iget-object p1, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 400
    check-cast p1, Lads_mobile_sdk/h81;

    invoke-static {p1}, Lads_mobile_sdk/i81;->a(Lads_mobile_sdk/h81;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_115
    return-object v5
.end method
