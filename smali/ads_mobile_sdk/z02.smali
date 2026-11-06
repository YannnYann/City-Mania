###### Class ads_mobile_sdk.z02 (ads_mobile_sdk.z02)
.class public final Lads_mobile_sdk/z02;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g12;

.field public final synthetic c:Lcom/google/gson/JsonObject;

.field public final synthetic d:Lads_mobile_sdk/eo2;

.field public final synthetic e:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/z02;->b:Lads_mobile_sdk/g12;

    iput-object p4, p0, Lads_mobile_sdk/z02;->c:Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lads_mobile_sdk/z02;->d:Lads_mobile_sdk/eo2;

    iput-object p2, p0, Lads_mobile_sdk/z02;->e:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/z02;

    iget-object v3, p0, Lads_mobile_sdk/z02;->b:Lads_mobile_sdk/g12;

    iget-object v4, p0, Lads_mobile_sdk/z02;->c:Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lads_mobile_sdk/z02;->d:Lads_mobile_sdk/eo2;

    iget-object v2, p0, Lads_mobile_sdk/z02;->e:Lads_mobile_sdk/s02;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/z02;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/z02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/z02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget v1, p0, Lads_mobile_sdk/z02;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b0

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lads_mobile_sdk/z02;->b:Lads_mobile_sdk/g12;

    .line 114
    iget-object p1, p1, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 115
    iget-object v1, p0, Lads_mobile_sdk/z02;->c:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/z02;->d:Lads_mobile_sdk/eo2;

    iput v3, p0, Lads_mobile_sdk/z02;->a:I

    invoke-virtual {p1, v1, v4, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    goto/16 :goto_ac

    .line 116
    :cond_34
    :goto_34
    check-cast p1, Lads_mobile_sdk/r31;

    if-eqz p1, :cond_b0

    iget-object v1, p0, Lads_mobile_sdk/z02;->e:Lads_mobile_sdk/s02;

    iget-object v3, p0, Lads_mobile_sdk/z02;->b:Lads_mobile_sdk/g12;

    iget-object v4, p0, Lads_mobile_sdk/z02;->c:Lcom/google/gson/JsonObject;

    .line 117
    iput-object p1, v1, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    .line 118
    iput-object p1, v1, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    .line 119
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v5

    iput-object v5, v1, Lads_mobile_sdk/s02;->l:Lads_mobile_sdk/q41;

    .line 120
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v5

    iput-object v5, v1, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    .line 121
    iget-object v5, v3, Lads_mobile_sdk/g12;->f:Lads_mobile_sdk/ex0;

    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    const-string v6, "gads:immersive_video_ads:enabled"

    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v6, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 141
    const-string v5, "video"

    const/4 v6, 0x0

    .line 142
    invoke-static {v4, v5, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_b0

    .line 143
    const-string v5, "flags"

    invoke-static {v4, v5}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    if-eqz v4, :cond_b0

    .line 144
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_80
    if-ge v6, v5, :cond_b0

    .line 145
    invoke-static {v4, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v8

    if-nez v8, :cond_89

    goto :goto_ad

    .line 147
    :cond_89
    const-string v9, ""

    invoke-static {v8, v7, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 148
    const-string v11, "afma_video_player_type"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 150
    :try_start_97
    const-string v4, "value"

    .line 151
    invoke-static {v8, v4, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_a1} :catch_b0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b0

    .line 153
    iput v2, p0, Lads_mobile_sdk/z02;->a:I

    invoke-static {v3, v1, p1, p0}, Lads_mobile_sdk/g12;->a(Lads_mobile_sdk/g12;Lads_mobile_sdk/s02;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b0

    :goto_ac
    return-object v0

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 156
    :catch_b0
    :cond_b0
    :goto_b0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
