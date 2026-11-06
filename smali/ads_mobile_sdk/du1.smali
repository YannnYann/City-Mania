###### Class ads_mobile_sdk.du1 (ads_mobile_sdk.du1)
.class public final Lads_mobile_sdk/du1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/g30;

.field public final d:Lads_mobile_sdk/o21;

.field public final e:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/g30;Lads_mobile_sdk/o21;Lads_mobile_sdk/ex0;)V
    .registers 7

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lads_mobile_sdk/du1;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lads_mobile_sdk/du1;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lads_mobile_sdk/du1;->c:Lads_mobile_sdk/g30;

    .line 33
    iput-object p4, p0, Lads_mobile_sdk/du1;->d:Lads_mobile_sdk/o21;

    .line 34
    iput-object p5, p0, Lads_mobile_sdk/du1;->e:Lads_mobile_sdk/ex0;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .registers 32

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v7, v2

    goto :goto_b

    :cond_9
    move-object/from16 v7, p4

    :goto_b
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    move-object v8, v2

    goto :goto_13

    :cond_11
    move-object/from16 v8, p5

    :goto_13
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_19

    move-object v9, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v9, p6

    :goto_1b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_23

    .line 677
    const-string v1, ""

    move-object v10, v1

    goto :goto_25

    :cond_23
    move-object/from16 v10, p7

    :goto_25
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2b

    move-object v11, v2

    goto :goto_2d

    :cond_2b
    move-object/from16 v11, p8

    :goto_2d
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_33

    move-object v12, v2

    goto :goto_35

    :cond_33
    move-object/from16 v12, p9

    :goto_35
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3b

    move-object v13, v2

    goto :goto_3d

    :cond_3b
    move-object/from16 v13, p10

    :goto_3d
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_43

    move-object v14, v2

    goto :goto_45

    :cond_43
    move-object/from16 v14, p11

    :goto_45
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_55

    move-object v15, v2

    :goto_4a
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v16, p13

    goto :goto_58

    :cond_55
    move-object/from16 v15, p12

    goto :goto_4a

    .line 678
    :goto_58
    invoke-virtual/range {v3 .. v16}, Lads_mobile_sdk/du1;->a(Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p13

    .line 1
    instance-of v5, v4, Lads_mobile_sdk/cu1;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/cu1;

    iget v6, v5, Lads_mobile_sdk/cu1;->j:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/cu1;->j:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lads_mobile_sdk/cu1;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/cu1;-><init>(Lads_mobile_sdk/du1;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v4, v5, Lads_mobile_sdk/cu1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 86
    iget v7, v5, Lads_mobile_sdk/cu1;->j:I

    const/4 v8, 0x1

    const-string v9, ""

    if-eqz v7, :cond_52

    if-ne v7, v8, :cond_4a

    iget-object v1, v5, Lads_mobile_sdk/cu1;->g:Ljava/lang/String;

    iget-object v2, v5, Lads_mobile_sdk/cu1;->f:Ljava/lang/String;

    iget-object v3, v5, Lads_mobile_sdk/cu1;->e:Ljava/lang/String;

    iget-object v6, v5, Lads_mobile_sdk/cu1;->d:Lkotlin/time/Duration;

    iget-object v7, v5, Lads_mobile_sdk/cu1;->c:Lads_mobile_sdk/i2;

    iget-object v8, v5, Lads_mobile_sdk/cu1;->b:Landroid/net/Uri;

    iget-object v5, v5, Lads_mobile_sdk/cu1;->a:Lads_mobile_sdk/du1;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v26, v5

    move-object v5, v4

    move-object v4, v8

    move-object/from16 v8, v26

    goto/16 :goto_24a

    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v4, "toString(...)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v4, v0, Lads_mobile_sdk/du1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-string v7, "gads:app_status_logging_for_presentation:enabled"

    const-string v11, "key"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v4, v7, v12, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 121
    iget-object v4, v0, Lads_mobile_sdk/du1;->a:Landroid/content/Context;

    invoke-static {v4}, Lads_mobile_sdk/s;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 122
    const-string v4, "1"

    goto :goto_87

    .line 124
    :cond_85
    const-string v4, "0"

    :goto_87
    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v7, v11

    .line 125
    const-string v11, "@gw_aps@"

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object v8, v12

    move-object v12, v4

    move-object v4, v8

    move-object/from16 v8, v16

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_98
    move-object v11, v10

    goto :goto_9e

    :cond_9a
    move-object v7, v11

    move-object v4, v12

    move-object v8, v13

    goto :goto_98

    .line 134
    :goto_9e
    iget-object v10, v0, Lads_mobile_sdk/du1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    const-string v12, "gads:enable_placement_id:enabled"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v10, v12, v4, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_d6

    if-eqz v2, :cond_d8

    .line 153
    iget-object v10, v2, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 154
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-lez v10, :cond_d8

    .line 156
    iget-object v2, v2, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 157
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "@gw_placement_id@"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_d6
    :goto_d6
    move-object v12, v11

    goto :goto_e5

    :cond_d8
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 159
    const-string v12, "@gw_placement_id@"

    const-string v13, ""

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_d6

    .line 162
    :goto_e5
    iget-object v2, v0, Lads_mobile_sdk/du1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    const-string v10, "gads:enable_impression_sequence:enabled"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v10, v11, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14b

    if-eqz v3, :cond_14b

    .line 182
    iget-object v2, v3, Lads_mobile_sdk/w91;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_10c

    .line 183
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10a

    goto :goto_10c

    :cond_10a
    move-object v14, v2

    goto :goto_10d

    :cond_10c
    :goto_10c
    move-object v14, v9

    :goto_10d
    const/16 v16, 0x4

    const/16 v17, 0x0

    .line 184
    const-string v13, "@gw_is@"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 190
    iget-object v2, v3, Lads_mobile_sdk/w91;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_126

    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_123

    goto :goto_126

    :cond_123
    move-object/from16 v20, v2

    goto :goto_128

    :cond_126
    :goto_126
    move-object/from16 v20, v9

    :goto_128
    const/16 v22, 0x4

    const/16 v23, 0x0

    .line 192
    const-string v19, "@gw_fis@"

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 198
    iget-object v2, v3, Lads_mobile_sdk/w91;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_141

    .line 199
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13f

    goto :goto_141

    :cond_13f
    move-object v12, v2

    goto :goto_142

    :cond_141
    :goto_141
    move-object v12, v9

    :goto_142
    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 200
    const-string v11, "@gw_sfis@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_14b
    move-object v13, v12

    .line 205
    iget-object v2, v0, Lads_mobile_sdk/du1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    const-string v3, "gads:enable_impression_data:enabled"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2, v3, v4, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17b

    if-eqz p10, :cond_169

    .line 224
    invoke-virtual/range {p10 .. p10}, Lads_mobile_sdk/t91;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_16a

    :cond_169
    const/4 v2, 0x0

    :goto_16a
    if-nez v2, :cond_16e

    move-object v15, v9

    goto :goto_16f

    :cond_16e
    move-object v15, v2

    :goto_16f
    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 225
    const-string v14, "@gw_subpn@"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_17b
    move-object v14, v13

    if-nez p11, :cond_181

    move-object/from16 v16, v9

    goto :goto_183

    :cond_181
    move-object/from16 v16, p11

    :goto_183
    const/16 v18, 0x4

    const/16 v19, 0x0

    .line 229
    const-string v15, "@pclmd@"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    if-nez p12, :cond_194

    move-object/from16 v22, v9

    goto :goto_196

    :cond_194
    move-object/from16 v22, p12

    :goto_196
    const/16 v24, 0x4

    const/16 v25, 0x0

    .line 230
    const-string v21, "@label@"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p2

    .line 234
    iget-object v2, v2, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object v2, v2, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b0

    move-object v12, v9

    goto :goto_1b1

    :cond_1b0
    move-object v12, v2

    :goto_1b1
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "@gw_adlocid@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-eqz v1, :cond_1c4

    .line 235
    iget-object v2, v1, Lads_mobile_sdk/i2;->G:Ljava/lang/String;

    if-nez v2, :cond_1c1

    goto :goto_1c4

    :cond_1c1
    move-object/from16 v18, v2

    goto :goto_1c6

    :cond_1c4
    :goto_1c4
    move-object/from16 v18, v9

    :goto_1c6
    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "@gw_adnetid@"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 236
    const-string v11, "@gw_adnetrefresh@"

    const-string v12, "0"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 237
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v17, "@gw_adnetstatus@"

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_1f0

    .line 238
    iget-object v2, v1, Lads_mobile_sdk/i2;->n:Ljava/lang/String;

    if-nez v2, :cond_1ee

    goto :goto_1f0

    :cond_1ee
    move-object v12, v2

    goto :goto_1f1

    :cond_1f0
    :goto_1f0
    move-object v12, v9

    :goto_1f1
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "@gw_allocid@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 239
    iget-object v2, v0, Lads_mobile_sdk/du1;->b:Ljava/lang/String;

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "@gw_sdkver@"

    const/16 v19, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz p4, :cond_215

    .line 240
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_213

    goto :goto_215

    :cond_213
    move-object v12, v2

    goto :goto_216

    :cond_215
    :goto_215
    move-object v12, v9

    :goto_216
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "@gw_seqnum@"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v3, v0, Lads_mobile_sdk/du1;->c:Lads_mobile_sdk/g30;

    iput-object v0, v5, Lads_mobile_sdk/cu1;->a:Lads_mobile_sdk/du1;

    move-object/from16 v4, p1

    iput-object v4, v5, Lads_mobile_sdk/cu1;->b:Landroid/net/Uri;

    iput-object v1, v5, Lads_mobile_sdk/cu1;->c:Lads_mobile_sdk/i2;

    move-object/from16 v7, p6

    iput-object v7, v5, Lads_mobile_sdk/cu1;->d:Lkotlin/time/Duration;

    move-object/from16 v8, p7

    iput-object v8, v5, Lads_mobile_sdk/cu1;->e:Ljava/lang/String;

    iput-object v2, v5, Lads_mobile_sdk/cu1;->f:Ljava/lang/String;

    const-string v10, "@gw_sessid@"

    iput-object v10, v5, Lads_mobile_sdk/cu1;->g:Ljava/lang/String;

    const/4 v11, 0x1

    iput v11, v5, Lads_mobile_sdk/cu1;->j:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    invoke-static {v3, v5}, Lads_mobile_sdk/g30;->i(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_244

    return-object v6

    :cond_244
    move-object v5, v3

    move-object v6, v7

    move-object v3, v8

    move-object v8, v0

    move-object v7, v1

    move-object v1, v10

    .line 243
    :goto_24a
    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_24f

    move-object v5, v9

    :cond_24f
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "encode(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p2, v1

    move-object/from16 p1, v2

    move-object/from16 p3, v5

    move/from16 p5, v11

    move-object/from16 p6, v12

    move/from16 p4, v13

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_271

    .line 244
    iget-object v2, v7, Lads_mobile_sdk/i2;->Y:Ljava/lang/String;

    if-nez v2, :cond_272

    :cond_271
    move-object v2, v9

    :cond_272
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v7, 0x0

    const-string v10, "@gw_qdata@"

    const/4 v11, 0x0

    move-object/from16 p1, v1

    move-object/from16 p3, v2

    move/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p2, v10

    move/from16 p4, v11

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2a4

    .line 247
    invoke-virtual {v6}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a3

    goto :goto_2a4

    :cond_2a3
    move-object v9, v2

    :cond_2a4
    :goto_2a4
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 248
    const-string v6, "@gw_ttr@"

    const/4 v7, 0x0

    move-object/from16 p1, v1

    move/from16 p5, v2

    move-object/from16 p6, v5

    move-object/from16 p2, v6

    move/from16 p4, v7

    move-object/from16 p3, v9

    invoke-static/range {p1 .. p6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 307
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d1

    iget-object v2, v8, Lads_mobile_sdk/du1;->d:Lads_mobile_sdk/o21;

    invoke-virtual {v2, v4}, Lads_mobile_sdk/o21;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2d1

    .line 308
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {v1, v3}, Lads_mobile_sdk/m21;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2d1
    return-object v1
.end method

.method public final a(Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 33

    move-object/from16 v0, p13

    .line 309
    instance-of v1, v0, Lads_mobile_sdk/bu1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/bu1;

    iget v2, v1, Lads_mobile_sdk/bu1;->r:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/bu1;->r:I

    move-object/from16 v2, p0

    goto :goto_1e

    :cond_17
    new-instance v1, Lads_mobile_sdk/bu1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/bu1;-><init>(Lads_mobile_sdk/du1;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v0, v1, Lads_mobile_sdk/bu1;->p:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 344
    iget v4, v1, Lads_mobile_sdk/bu1;->r:I

    const/4 v5, 0x1

    if-eqz v4, :cond_6f

    if-ne v4, v5, :cond_67

    iget-object v4, v1, Lads_mobile_sdk/bu1;->o:Ljava/util/Collection;

    iget-object v6, v1, Lads_mobile_sdk/bu1;->n:Ljava/util/Iterator;

    iget-object v7, v1, Lads_mobile_sdk/bu1;->m:Ljava/util/Collection;

    iget-object v8, v1, Lads_mobile_sdk/bu1;->l:Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/bu1;->k:Ljava/lang/String;

    iget-object v10, v1, Lads_mobile_sdk/bu1;->j:Lads_mobile_sdk/t91;

    iget-object v11, v1, Lads_mobile_sdk/bu1;->i:Lads_mobile_sdk/w91;

    iget-object v12, v1, Lads_mobile_sdk/bu1;->h:Lads_mobile_sdk/eo2;

    iget-object v13, v1, Lads_mobile_sdk/bu1;->g:Ljava/lang/String;

    iget-object v14, v1, Lads_mobile_sdk/bu1;->f:Lkotlin/time/Duration;

    iget-object v15, v1, Lads_mobile_sdk/bu1;->e:Ljava/lang/String;

    iget-object v5, v1, Lads_mobile_sdk/bu1;->d:Ljava/lang/Integer;

    move-object/from16 v16, v0

    iget-object v0, v1, Lads_mobile_sdk/bu1;->c:Lads_mobile_sdk/i2;

    move-object/from16 p1, v0

    iget-object v0, v1, Lads_mobile_sdk/bu1;->b:Lads_mobile_sdk/ec3;

    move-object/from16 p2, v0

    iget-object v0, v1, Lads_mobile_sdk/bu1;->a:Lads_mobile_sdk/du1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v13

    move-object v13, v12

    move-object v12, v2

    move-object/from16 v18, v1

    move-object v1, v8

    move-object/from16 v17, v10

    move-object/from16 v2, v16

    move-object/from16 v10, p1

    move-object/from16 v8, p2

    move-object/from16 v16, v11

    move-object v11, v5

    move-object v5, v0

    const/4 v0, 0x1

    goto/16 :goto_f0

    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object v5, v0

    move-object v6, v4

    move-object/from16 v0, p11

    move-object v4, v1

    move-object/from16 v1, p12

    :goto_9e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_104

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 515
    check-cast v16, Landroid/net/Uri;

    .line 516
    iput-object v2, v4, Lads_mobile_sdk/bu1;->a:Lads_mobile_sdk/du1;

    iput-object v7, v4, Lads_mobile_sdk/bu1;->b:Lads_mobile_sdk/ec3;

    iput-object v8, v4, Lads_mobile_sdk/bu1;->c:Lads_mobile_sdk/i2;

    iput-object v9, v4, Lads_mobile_sdk/bu1;->d:Ljava/lang/Integer;

    iput-object v10, v4, Lads_mobile_sdk/bu1;->e:Ljava/lang/String;

    iput-object v11, v4, Lads_mobile_sdk/bu1;->f:Lkotlin/time/Duration;

    iput-object v12, v4, Lads_mobile_sdk/bu1;->g:Ljava/lang/String;

    iput-object v13, v4, Lads_mobile_sdk/bu1;->h:Lads_mobile_sdk/eo2;

    iput-object v14, v4, Lads_mobile_sdk/bu1;->i:Lads_mobile_sdk/w91;

    iput-object v15, v4, Lads_mobile_sdk/bu1;->j:Lads_mobile_sdk/t91;

    iput-object v0, v4, Lads_mobile_sdk/bu1;->k:Ljava/lang/String;

    iput-object v1, v4, Lads_mobile_sdk/bu1;->l:Ljava/lang/String;

    iput-object v5, v4, Lads_mobile_sdk/bu1;->m:Ljava/util/Collection;

    iput-object v6, v4, Lads_mobile_sdk/bu1;->n:Ljava/util/Iterator;

    iput-object v5, v4, Lads_mobile_sdk/bu1;->o:Ljava/util/Collection;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    iput v0, v4, Lads_mobile_sdk/bu1;->r:I

    move-object/from16 v18, v4

    move-object v4, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move-object v1, v5

    move-object v5, v2

    invoke-virtual/range {v5 .. v18}, Lads_mobile_sdk/du1;->a(Landroid/net/Uri;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_df

    return-object v3

    :cond_df
    move-object v6, v11

    move-object v11, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v14

    move-object v14, v6

    move-object v6, v4

    move-object v4, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v4

    .line 517
    :goto_f0
    check-cast v2, Landroid/net/Uri;

    .line 674
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    move-object v5, v7

    move-object v7, v8

    move-object v0, v9

    move-object v8, v10

    move-object v9, v11

    move-object v11, v14

    move-object v10, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v4, v18

    goto :goto_9e

    :cond_104
    move-object v1, v5

    .line 675
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    return-object v5
.end method
