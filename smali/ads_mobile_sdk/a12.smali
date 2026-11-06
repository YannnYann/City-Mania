###### Class ads_mobile_sdk.a12 (ads_mobile_sdk.a12)
.class public final Lads_mobile_sdk/a12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g12;

.field public final synthetic c:Lcom/google/gson/JsonObject;

.field public final synthetic d:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/a12;->b:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/a12;->c:Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lads_mobile_sdk/a12;->d:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/a12;

    iget-object v0, p0, Lads_mobile_sdk/a12;->b:Lads_mobile_sdk/g12;

    iget-object v1, p0, Lads_mobile_sdk/a12;->c:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/a12;->d:Lads_mobile_sdk/s02;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/a12;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/a12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/a12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/a12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, v0, Lads_mobile_sdk/a12;->a:I

    const-string v3, "omid_html"

    const-string v4, "omid_partner_name"

    const-string v5, "javascript_session_service_enabled"

    const/4 v6, -0x1

    const-string v7, "media_type"

    const-string v8, "json"

    const-string v9, "omid_settings"

    const-string v10, ""

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_2c

    if-ne v2, v11, :cond_24

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_c4

    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-object v2, v0, Lads_mobile_sdk/a12;->b:Lads_mobile_sdk/g12;

    .line 126
    iget-object v2, v2, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 127
    iget-object v13, v0, Lads_mobile_sdk/a12;->c:Lcom/google/gson/JsonObject;

    iput v11, v0, Lads_mobile_sdk/a12;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-string v14, "enable_omid"

    const/4 v15, 0x0

    .line 129
    invoke-static {v13, v14, v15}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_44

    goto :goto_92

    .line 131
    :cond_44
    invoke-static {v13, v9, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v13

    if-nez v13, :cond_4b

    goto :goto_92

    .line 132
    :cond_4b
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v13, v7, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_5c

    if-eq v14, v11, :cond_59

    .line 164
    sget-object v14, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    goto :goto_5e

    .line 165
    :cond_59
    sget-object v14, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_5e

    .line 166
    :cond_5c
    sget-object v14, Lads_mobile_sdk/cg2;->b:Lads_mobile_sdk/cg2;

    .line 172
    :goto_5e
    sget-object v15, Lads_mobile_sdk/bg2;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-ne v15, v11, :cond_6b

    .line 173
    sget-object v15, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    goto :goto_6d

    .line 174
    :cond_6b
    sget-object v15, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    .line 178
    :goto_6d
    invoke-static {v13, v5, v11}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    .line 180
    invoke-static {v13, v4, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-static {v13, v3, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    const-string v6, "mediaType"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "videoEventsOwner"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "omidPartnerName"

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "omidHtml"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_94

    :goto_92
    move-object v2, v12

    goto :goto_c1

    .line 188
    :cond_94
    iget-object v6, v2, Lads_mobile_sdk/v42;->f:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/u42;

    invoke-direct {v11, v2, v13, v12}, Lads_mobile_sdk/u42;-><init>(Lads_mobile_sdk/v42;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 189
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 190
    const-string v13, "<this>"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "block"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance v13, Lads_mobile_sdk/vs3;

    invoke-direct {v13, v11, v12}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v2

    move-object/from16 v17, v6

    move-object/from16 v20, v13

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    :goto_c1
    if-ne v2, v1, :cond_c4

    return-object v1

    .line 439
    :cond_c4
    :goto_c4
    check-cast v2, Lkotlinx/coroutines/Deferred;

    if-eqz v2, :cond_cc

    iget-object v1, v0, Lads_mobile_sdk/a12;->d:Lads_mobile_sdk/s02;

    .line 440
    iput-object v2, v1, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    .line 442
    :cond_cc
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v1, v0, Lads_mobile_sdk/a12;->c:Lcom/google/gson/JsonObject;

    .line 443
    invoke-static {v1, v9, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 444
    iget-object v2, v0, Lads_mobile_sdk/a12;->d:Lads_mobile_sdk/s02;

    .line 445
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    .line 474
    invoke-static {v1, v7, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_ec

    const/4 v7, 0x1

    if-eq v6, v7, :cond_e9

    .line 477
    sget-object v6, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    :goto_e7
    move-object v12, v6

    goto :goto_f0

    .line 478
    :cond_e9
    sget-object v6, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_e7

    :cond_ec
    const/4 v7, 0x1

    .line 479
    sget-object v6, Lads_mobile_sdk/cg2;->b:Lads_mobile_sdk/cg2;

    goto :goto_e7

    .line 485
    :goto_f0
    sget-object v6, Lads_mobile_sdk/bg2;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-ne v6, v7, :cond_fe

    .line 486
    sget-object v6, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    :goto_fc
    move-object v13, v6

    goto :goto_101

    .line 487
    :cond_fe
    sget-object v6, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    goto :goto_fc

    .line 491
    :goto_101
    invoke-static {v1, v5, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v14

    .line 493
    invoke-static {v1, v4, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 495
    invoke-static {v1, v3, v10}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 496
    new-instance v11, Lads_mobile_sdk/dg2;

    invoke-direct/range {v11 .. v16}, Lads_mobile_sdk/dg2;-><init>(Lads_mobile_sdk/cg2;Lads_mobile_sdk/xh2;ZLjava/lang/String;Ljava/lang/String;)V

    .line 497
    iput-object v11, v2, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    .line 499
    :cond_114
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
