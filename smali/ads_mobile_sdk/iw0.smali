###### Class ads_mobile_sdk.iw0 (ads_mobile_sdk.iw0)
.class public final Lads_mobile_sdk/iw0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/gson/JsonObject;

.field public final synthetic c:Z

.field public final synthetic d:Lads_mobile_sdk/k30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;Z)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/iw0;->b:Lcom/google/gson/JsonObject;

    iput-boolean p4, p0, Lads_mobile_sdk/iw0;->c:Z

    iput-object p1, p0, Lads_mobile_sdk/iw0;->d:Lads_mobile_sdk/k30;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/iw0;

    iget-object v1, p0, Lads_mobile_sdk/iw0;->b:Lcom/google/gson/JsonObject;

    iget-boolean v2, p0, Lads_mobile_sdk/iw0;->c:Z

    iget-object v3, p0, Lads_mobile_sdk/iw0;->d:Lads_mobile_sdk/k30;

    invoke-direct {v0, v3, v1, p2, v2}, Lads_mobile_sdk/iw0;-><init>(Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;Z)V

    iput-object p1, v0, Lads_mobile_sdk/iw0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lads_mobile_sdk/vv0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/iw0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/iw0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/iw0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/iw0;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/vv0;

    .line 81
    iget-object v0, p0, Lads_mobile_sdk/iw0;->b:Lcom/google/gson/JsonObject;

    iget-boolean v1, p0, Lads_mobile_sdk/iw0;->c:Z

    iget-object v2, p0, Lads_mobile_sdk/iw0;->d:Lads_mobile_sdk/k30;

    .line 187
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object p1

    const-string v3, "toBuilder(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/uv0;

    .line 188
    const-string v3, "builder"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    if-eqz v0, :cond_3e

    .line 189
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toJson(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v0}, Lads_mobile_sdk/uv0;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_3e

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, v0}, Lads_mobile_sdk/uv0;->a(I)V

    .line 237
    :cond_3e
    invoke-virtual {p1}, Lads_mobile_sdk/uv0;->j()V

    .line 238
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1, v2}, Lads_mobile_sdk/uv0;->a(Lads_mobile_sdk/k30;)V

    .line 417
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/vv0;

    return-object p1
.end method
