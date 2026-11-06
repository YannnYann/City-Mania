###### Class ads_mobile_sdk.r33 (ads_mobile_sdk.r33)
.class public final Lads_mobile_sdk/r33;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/du1;

.field public b:Ljava/util/List;

.field public c:Lads_mobile_sdk/ec3;

.field public d:Lads_mobile_sdk/i2;

.field public e:Ljava/lang/Integer;

.field public f:I

.field public final synthetic g:Lads_mobile_sdk/v33;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lads_mobile_sdk/i2;

.field public final synthetic j:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v33;Ljava/util/List;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    iput-object p2, p0, Lads_mobile_sdk/r33;->h:Ljava/util/List;

    iput-object p3, p0, Lads_mobile_sdk/r33;->i:Lads_mobile_sdk/i2;

    iput-wide p4, p0, Lads_mobile_sdk/r33;->j:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/r33;

    iget-object v1, p0, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    iget-object v2, p0, Lads_mobile_sdk/r33;->h:Ljava/util/List;

    iget-object v3, p0, Lads_mobile_sdk/r33;->i:Lads_mobile_sdk/i2;

    iget-wide v4, p0, Lads_mobile_sdk/r33;->j:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/r33;-><init>(Lads_mobile_sdk/v33;Ljava/util/List;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/r33;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/r33;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/r33;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v13, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v15

    .line 136
    iget v0, v13, Lads_mobile_sdk/r33;->f:I

    const-string v16, "serverTransaction"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_39

    if-eq v0, v2, :cond_24

    if-ne v0, v1, :cond_1c

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v17, v3

    goto/16 :goto_a4

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, v13, Lads_mobile_sdk/r33;->e:Ljava/lang/Integer;

    iget-object v2, v13, Lads_mobile_sdk/r33;->d:Lads_mobile_sdk/i2;

    iget-object v4, v13, Lads_mobile_sdk/r33;->c:Lads_mobile_sdk/ec3;

    iget-object v5, v13, Lads_mobile_sdk/r33;->b:Ljava/util/List;

    iget-object v6, v13, Lads_mobile_sdk/r33;->a:Lads_mobile_sdk/du1;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_72

    :cond_39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    iget-object v0, v13, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    .line 139
    iget-object v6, v0, Lads_mobile_sdk/v33;->d:Lads_mobile_sdk/du1;

    .line 140
    iget-object v5, v13, Lads_mobile_sdk/r33;->h:Ljava/util/List;

    .line 141
    iget-object v0, v0, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    if-nez v0, :cond_4b

    .line 142
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_4c

    :cond_4b
    move-object v4, v0

    .line 143
    :goto_4c
    iget-object v0, v13, Lads_mobile_sdk/r33;->i:Lads_mobile_sdk/i2;

    .line 144
    iget-object v7, v13, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    .line 145
    iget v7, v7, Lads_mobile_sdk/v33;->g:I

    .line 146
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    .line 147
    iget-object v8, v13, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    iput-object v6, v13, Lads_mobile_sdk/r33;->a:Lads_mobile_sdk/du1;

    iput-object v5, v13, Lads_mobile_sdk/r33;->b:Ljava/util/List;

    iput-object v4, v13, Lads_mobile_sdk/r33;->c:Lads_mobile_sdk/ec3;

    iput-object v0, v13, Lads_mobile_sdk/r33;->d:Lads_mobile_sdk/i2;

    iput-object v7, v13, Lads_mobile_sdk/r33;->e:Ljava/lang/Integer;

    iput v2, v13, Lads_mobile_sdk/r33;->f:I

    invoke-static {v8, v13}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_6b

    goto :goto_a3

    :cond_6b
    move-object/from16 v18, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v6

    move-object/from16 v6, v18

    .line 148
    :goto_72
    check-cast v2, Ljava/lang/String;

    .line 156
    iget-wide v8, v13, Lads_mobile_sdk/r33;->j:J

    invoke-static {v8, v9}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v8

    .line 157
    iput-object v3, v13, Lads_mobile_sdk/r33;->a:Lads_mobile_sdk/du1;

    iput-object v3, v13, Lads_mobile_sdk/r33;->b:Ljava/util/List;

    iput-object v3, v13, Lads_mobile_sdk/r33;->c:Lads_mobile_sdk/ec3;

    iput-object v3, v13, Lads_mobile_sdk/r33;->d:Lads_mobile_sdk/i2;

    iput-object v3, v13, Lads_mobile_sdk/r33;->e:Ljava/lang/Integer;

    iput v1, v13, Lads_mobile_sdk/r33;->f:I

    const/4 v12, 0x0

    const/16 v14, 0xfc0

    move-object v1, v3

    move-object v3, v0

    move-object v0, v7

    const/4 v7, 0x0

    move-object v9, v1

    move-object v1, v6

    move-object v6, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v2, v18

    invoke-static/range {v0 .. v14}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_a4

    :goto_a3
    return-object v15

    .line 158
    :cond_a4
    :goto_a4
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 168
    iget-object v3, v13, Lads_mobile_sdk/r33;->i:Lads_mobile_sdk/i2;

    if-eqz v3, :cond_c4

    .line 169
    iget-object v0, v13, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    .line 170
    iget-object v1, v0, Lads_mobile_sdk/v33;->c:Lads_mobile_sdk/c63;

    .line 171
    iget-object v0, v0, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    if-nez v0, :cond_b8

    .line 172
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v0, v17

    :cond_b8
    iget-object v0, v0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v4, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    .line 173
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    goto :goto_cb

    .line 179
    :cond_c4
    iget-object v0, v13, Lads_mobile_sdk/r33;->g:Lads_mobile_sdk/v33;

    .line 180
    iget-object v0, v0, Lads_mobile_sdk/v33;->c:Lads_mobile_sdk/c63;

    .line 181
    invoke-virtual {v0, v2}, Lads_mobile_sdk/c63;->a(Ljava/util/List;)V

    .line 183
    :goto_cb
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
