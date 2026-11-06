###### Class ads_mobile_sdk.ve2 (ads_mobile_sdk.ve2)
.class public final Lads_mobile_sdk/ve2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/h41;

.field public final synthetic c:Lads_mobile_sdk/ze2;

.field public final synthetic d:Lads_mobile_sdk/aq1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h41;Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ve2;->b:Lads_mobile_sdk/h41;

    iput-object p2, p0, Lads_mobile_sdk/ve2;->c:Lads_mobile_sdk/ze2;

    iput-object p3, p0, Lads_mobile_sdk/ve2;->d:Lads_mobile_sdk/aq1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/ve2;

    iget-object v1, p0, Lads_mobile_sdk/ve2;->b:Lads_mobile_sdk/h41;

    iget-object v2, p0, Lads_mobile_sdk/ve2;->c:Lads_mobile_sdk/ze2;

    iget-object v3, p0, Lads_mobile_sdk/ve2;->d:Lads_mobile_sdk/aq1;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/ve2;-><init>(Lads_mobile_sdk/h41;Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/ve2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ve2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ve2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lads_mobile_sdk/ve2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_90

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lads_mobile_sdk/ve2;->b:Lads_mobile_sdk/h41;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_41

    .line 88
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 89
    iget-object v6, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 90
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 91
    :cond_41
    iget-object p1, p0, Lads_mobile_sdk/ve2;->c:Lads_mobile_sdk/ze2;

    iget-object v3, p0, Lads_mobile_sdk/ve2;->d:Lads_mobile_sdk/aq1;

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 129
    iget-object v5, p1, Lads_mobile_sdk/ze2;->c:Lads_mobile_sdk/kd2;

    .line 130
    sget-object v6, Lads_mobile_sdk/tx0;->c:Lads_mobile_sdk/tx0;

    .line 131
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    const-string v7, "javaScriptSessionService"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "friendlyObstructionView"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "purpose"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v5, v5, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v7, Lads_mobile_sdk/tc2;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v4, v6, v8}, Lads_mobile_sdk/tc2;-><init>(Lads_mobile_sdk/aq1;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V

    const-string v4, "AddFriendlyObstructionToJavaScriptSessionService"

    invoke-interface {v5, v4, v7}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Unit;

    goto :goto_49

    .line 293
    :cond_7c
    iget-object p1, p0, Lads_mobile_sdk/ve2;->b:Lads_mobile_sdk/h41;

    .line 294
    iget-object p1, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 295
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iput v2, p0, Lads_mobile_sdk/ve2;->a:I

    const-string v2, "onSdkLoaded"

    invoke-virtual {p1, v1, v2, p0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_90

    return-object v0

    .line 296
    :cond_90
    :goto_90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
