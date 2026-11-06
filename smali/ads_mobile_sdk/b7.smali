###### Class ads_mobile_sdk.b7 (ads_mobile_sdk.b7)
.class public final Lads_mobile_sdk/b7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/o6;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o6;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/b7;->b:Lads_mobile_sdk/o6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/b7;

    iget-object v1, p0, Lads_mobile_sdk/b7;->b:Lads_mobile_sdk/o6;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/b7;-><init>(Lads_mobile_sdk/o6;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/b7;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lads_mobile_sdk/u7;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/b7;

    iget-object v1, p0, Lads_mobile_sdk/b7;->b:Lads_mobile_sdk/o6;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/b7;-><init>(Lads_mobile_sdk/o6;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/b7;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/b7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 304
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/b7;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/u7;

    .line 305
    iget-object v0, p0, Lads_mobile_sdk/b7;->b:Lads_mobile_sdk/o6;

    .line 339
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object p1

    const-string v1, "toBuilder(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/t7;

    .line 340
    const-string v1, "builder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance v1, Lads_mobile_sdk/no0;

    .line 342
    invoke-virtual {p1}, Lads_mobile_sdk/t7;->h()Ljava/util/Map;

    move-result-object v2

    const-string v3, "getQueryIdToAdQualityDataMapMap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-direct {v1, v2}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 344
    invoke-virtual {v0}, Lads_mobile_sdk/o6;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGwsQueryId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 345
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "key"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/t7;->a(Ljava/lang/String;Lads_mobile_sdk/o6;)V

    .line 404
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/u7;

    return-object p1
.end method
