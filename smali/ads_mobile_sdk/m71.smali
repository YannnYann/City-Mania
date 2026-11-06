###### Class ads_mobile_sdk.m71 (ads_mobile_sdk.m71)
.class public final Lads_mobile_sdk/m71;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m71;->a:Lokhttp3/Response;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/m71;

    iget-object v1, p0, Lads_mobile_sdk/m71;->a:Lokhttp3/Response;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/m71;-><init>(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/m71;

    iget-object v1, p0, Lads_mobile_sdk/m71;->a:Lokhttp3/Response;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/m71;-><init>(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/m71;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 459
    new-instance p1, Lads_mobile_sdk/p53;

    iget-object v0, p0, Lads_mobile_sdk/m71;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    if-nez v0, :cond_19

    :cond_16
    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_19
    invoke-direct {p1, v0}, Lads_mobile_sdk/p53;-><init>([B)V

    return-object p1
.end method
