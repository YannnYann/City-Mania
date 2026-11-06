###### Class ads_mobile_sdk.sx3 (ads_mobile_sdk.sx3)
.class public final Lads_mobile_sdk/sx3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lads_mobile_sdk/q41;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sx3;->a:Ljava/util/Map;

    iput-object p2, p0, Lads_mobile_sdk/sx3;->b:Lads_mobile_sdk/q41;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/sx3;

    iget-object v0, p0, Lads_mobile_sdk/sx3;->a:Ljava/util/Map;

    iget-object v1, p0, Lads_mobile_sdk/sx3;->b:Lads_mobile_sdk/q41;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/sx3;-><init>(Ljava/util/Map;Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/sx3;

    iget-object v0, p0, Lads_mobile_sdk/sx3;->a:Ljava/util/Map;

    iget-object v1, p0, Lads_mobile_sdk/sx3;->b:Lads_mobile_sdk/q41;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/sx3;-><init>(Ljava/util/Map;Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/sx3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lads_mobile_sdk/sx3;->a:Ljava/util/Map;

    const-string v0, "src"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 57
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 62
    :cond_19
    iget-object v0, p0, Lads_mobile_sdk/sx3;->b:Lads_mobile_sdk/q41;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/q41;->a(Ljava/lang/String;)V

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 64
    :cond_21
    :goto_21
    iget-object p1, p0, Lads_mobile_sdk/sx3;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Src parameter missing from video GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/sx3;->b:Lads_mobile_sdk/q41;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/q41;->a(Ljava/lang/String;)V

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
