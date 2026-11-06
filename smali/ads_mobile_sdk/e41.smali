###### Class ads_mobile_sdk.e41 (ads_mobile_sdk.e41)
.class public final Lads_mobile_sdk/e41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g41;

.field public final synthetic c:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/e41;->b:Lads_mobile_sdk/g41;

    iput-object p2, p0, Lads_mobile_sdk/e41;->c:Landroid/webkit/WebResourceRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/e41;

    iget-object v0, p0, Lads_mobile_sdk/e41;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/e41;->c:Landroid/webkit/WebResourceRequest;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/e41;-><init>(Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/e41;

    iget-object v0, p0, Lads_mobile_sdk/e41;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/e41;->c:Landroid/webkit/WebResourceRequest;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/e41;-><init>(Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 237
    iget v1, p0, Lads_mobile_sdk/e41;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/e41;->b:Lads_mobile_sdk/g41;

    .line 238
    iget-object p1, p1, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    if-eqz p1, :cond_38

    .line 239
    iget-object v1, p0, Lads_mobile_sdk/e41;->c:Landroid/webkit/WebResourceRequest;

    invoke-interface {v1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lads_mobile_sdk/e41;->a:I

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/s93;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    return-object v0

    :cond_38
    :goto_38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
