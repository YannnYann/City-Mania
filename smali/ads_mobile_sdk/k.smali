###### Class ads_mobile_sdk.k (ads_mobile_sdk.k)
.class public final Lads_mobile_sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    .line 1
    const-string v0, "actionHandlers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/k;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ac3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/j;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j;

    iget v1, v0, Lads_mobile_sdk/j;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/j;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j;-><init>(Lads_mobile_sdk/k;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/j;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lads_mobile_sdk/j;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lads_mobile_sdk/j;->b:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/j;->a:Lads_mobile_sdk/k;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p1, Lads_mobile_sdk/ac3;->c:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/yb3;

    .line 17
    iget-object v4, p2, Lads_mobile_sdk/yb3;->b:Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_3f

    iget-object v5, v2, Lads_mobile_sdk/k;->a:Ljava/util/Map;

    iget-object p2, p2, Lads_mobile_sdk/yb3;->a:Ljava/lang/String;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/m;

    if-eqz p2, :cond_3f

    iput-object v2, v0, Lads_mobile_sdk/j;->a:Lads_mobile_sdk/k;

    iput-object p1, v0, Lads_mobile_sdk/j;->b:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/j;->e:I

    invoke-interface {p2, v4, v0}, Lads_mobile_sdk/m;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/j;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3f

    return-object v1

    .line 19
    :cond_68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
