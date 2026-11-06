###### Class ads_mobile_sdk.yd2 (ads_mobile_sdk.yd2)
.class public final Lads_mobile_sdk/yd2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/h41;

.field public final synthetic d:Lads_mobile_sdk/je2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/yd2;->c:Lads_mobile_sdk/h41;

    iput-object p1, p0, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/yd2;

    iget-object v0, p0, Lads_mobile_sdk/yd2;->c:Lads_mobile_sdk/h41;

    iget-object v1, p0, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    invoke-direct {p1, v1, v0, p2}, Lads_mobile_sdk/yd2;-><init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/yd2;

    iget-object v0, p0, Lads_mobile_sdk/yd2;->c:Lads_mobile_sdk/h41;

    iget-object v1, p0, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    invoke-direct {p1, v1, v0, p2}, Lads_mobile_sdk/yd2;-><init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/yd2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget v1, p0, Lads_mobile_sdk/yd2;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    iget-object v0, p0, Lads_mobile_sdk/yd2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/k9;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    goto/16 :goto_a9

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    iget-object v1, p0, Lads_mobile_sdk/yd2;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/r31;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    goto :goto_6b

    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lads_mobile_sdk/yd2;->c:Lads_mobile_sdk/h41;

    .line 70
    iget-object v5, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 71
    iget-object p1, p0, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    .line 72
    iget-object v1, p1, Lads_mobile_sdk/je2;->d:Lads_mobile_sdk/i2;

    .line 73
    iget-object v4, v1, Lads_mobile_sdk/i2;->T:Lads_mobile_sdk/dg2;

    iget-object v6, v4, Lads_mobile_sdk/dg2;->a:Lads_mobile_sdk/cg2;

    .line 74
    iget-object v9, v4, Lads_mobile_sdk/dg2;->b:Lads_mobile_sdk/xh2;

    .line 77
    sget-object v4, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    if-ne v6, v4, :cond_41

    .line 78
    sget-object v7, Lads_mobile_sdk/x91;->b:Lads_mobile_sdk/x91;

    goto :goto_4c

    .line 80
    :cond_41
    iget-object v7, v1, Lads_mobile_sdk/i2;->H:Lads_mobile_sdk/e2;

    sget-object v8, Lads_mobile_sdk/e2;->e:Lads_mobile_sdk/e2;

    if-ne v7, v8, :cond_4a

    .line 81
    sget-object v7, Lads_mobile_sdk/x91;->e:Lads_mobile_sdk/x91;

    goto :goto_4c

    .line 83
    :cond_4a
    sget-object v7, Lads_mobile_sdk/x91;->d:Lads_mobile_sdk/x91;

    :goto_4c
    if-ne v6, v4, :cond_52

    .line 89
    sget-object v4, Lads_mobile_sdk/l40;->e:Lads_mobile_sdk/l40;

    :goto_50
    move-object v8, v4

    goto :goto_55

    .line 91
    :cond_52
    sget-object v4, Lads_mobile_sdk/l40;->c:Lads_mobile_sdk/l40;

    goto :goto_50

    .line 92
    :goto_55
    iget-object v4, p1, Lads_mobile_sdk/je2;->e:Lads_mobile_sdk/kd2;

    .line 93
    sget-object v6, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    .line 97
    iget-object v10, v1, Lads_mobile_sdk/i2;->x:Ljava/lang/String;

    .line 98
    iput-object v5, p0, Lads_mobile_sdk/yd2;->a:Ljava/lang/Object;

    iput v3, p0, Lads_mobile_sdk/yd2;->b:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v11, p0

    .line 99
    invoke-static/range {v4 .. v11}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/kd2;Lads_mobile_sdk/r31;Lads_mobile_sdk/xh2;Lads_mobile_sdk/x91;Lads_mobile_sdk/l40;Lads_mobile_sdk/xh2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6a

    goto :goto_a7

    :cond_6a
    move-object v1, v5

    .line 100
    :goto_6b
    check-cast p1, Lads_mobile_sdk/k9;

    if-nez p1, :cond_72

    .line 107
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 108
    :cond_72
    iget-object v3, v11, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    .line 109
    iget-object v3, v3, Lads_mobile_sdk/je2;->e:Lads_mobile_sdk/kd2;

    .line 110
    iget-object v4, v11, Lads_mobile_sdk/yd2;->c:Lads_mobile_sdk/h41;

    invoke-virtual {v3, p1, v4}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/k9;Landroid/view/View;)Lkotlin/Unit;

    .line 111
    iget-object v3, v11, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    .line 112
    iget-object v3, v3, Lads_mobile_sdk/je2;->e:Lads_mobile_sdk/kd2;

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const-string v4, "adSession"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v3, v3, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v4, Lads_mobile_sdk/id2;

    invoke-direct {v4, p1}, Lads_mobile_sdk/id2;-><init>(Lads_mobile_sdk/k9;)V

    const-string v5, "StartOmidSession"

    invoke-interface {v3, v5, v4}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 247
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p1, v11, Lads_mobile_sdk/yd2;->a:Ljava/lang/Object;

    iput v2, v11, Lads_mobile_sdk/yd2;->b:I

    const-string v2, "onSdkLoaded"

    invoke-virtual {v1, v3, v2, p0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a8

    :goto_a7
    return-object v0

    :cond_a8
    move-object v0, p1

    .line 248
    :goto_a9
    iget-object p1, v11, Lads_mobile_sdk/yd2;->d:Lads_mobile_sdk/je2;

    .line 249
    iput-object v0, p1, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    .line 250
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
