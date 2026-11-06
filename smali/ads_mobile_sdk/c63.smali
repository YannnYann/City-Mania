###### Class ads_mobile_sdk.c63 (ads_mobile_sdk.c63)
.class public final Lads_mobile_sdk/c63;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/ac2;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/e01;

.field public final f:Lads_mobile_sdk/vw3;

.field public final g:Lads_mobile_sdk/uv;

.field public final h:Lads_mobile_sdk/g83;

.field public final i:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/ac2;Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/e01;Lads_mobile_sdk/vw3;Lads_mobile_sdk/uv;Lads_mobile_sdk/g83;Lads_mobile_sdk/ur3;)V
    .registers 11

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlPinger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariationsProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/c63;->b:Lads_mobile_sdk/ac2;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/c63;->c:Lads_mobile_sdk/tx;

    .line 44
    iput-object p4, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p5, p0, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    .line 46
    iput-object p6, p0, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 47
    iput-object p7, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    .line 48
    iput-object p8, p0, Lads_mobile_sdk/c63;->h:Lads_mobile_sdk/g83;

    .line 49
    iput-object p9, p0, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/c63;)Lads_mobile_sdk/e01;
    .registers 1

    .line 38
    iget-object p0, p0, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 76
    invoke-virtual/range {p0 .. p5}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/c63;Landroid/net/Uri;)Ljava/util/Map;
    .registers 2

    .line 78
    iget-object p0, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    .line 79
    invoke-virtual {p0, p1}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V
    .registers 14

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_5

    const/4 p4, 0x0

    :cond_5
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_c

    .line 2190
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_c
    move-object v5, p5

    .line 2191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2192
    const-string p4, "uris"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "adConfiguration"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "commonConfiguration"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 2279
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    goto :goto_23

    :cond_38
    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 80
    instance-of v0, p3, Lads_mobile_sdk/w53;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/w53;

    iget v1, v0, Lads_mobile_sdk/w53;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w53;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/w53;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/w53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/w53;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, v0, Lads_mobile_sdk/w53;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p2, v0, Lads_mobile_sdk/w53;->b:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/w53;->a:Lads_mobile_sdk/c63;

    :try_start_29
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_29 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_6e

    :catch_2d
    move-exception p3

    goto :goto_77

    :catch_2f
    move-exception p3

    goto/16 :goto_a9

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_db

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_47

    goto/16 :goto_db

    .line 90
    :cond_47
    :try_start_47
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p3

    .line 91
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lads_mobile_sdk/wc;->b(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;

    move-result-object p3

    .line 94
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    iget-object v4, p3, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-wide v5, p3, Lads_mobile_sdk/xc;->b:J

    iget-object p3, p3, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, p3}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V

    .line 95
    iput-object p0, v0, Lads_mobile_sdk/w53;->a:Lads_mobile_sdk/c63;

    iput-object p2, v0, Lads_mobile_sdk/w53;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/w53;->e:I

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/v3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;Lads_mobile_sdk/w53;)Lkotlin/Unit;

    move-result-object p1
    :try_end_6b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_47 .. :try_end_6b} :catch_74
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6b} :catch_71

    if-ne p1, v1, :cond_6e

    return-object v1

    .line 118
    :cond_6e
    :goto_6e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_71
    move-exception p3

    move-object p1, p0

    goto :goto_77

    :catch_74
    move-exception p3

    move-object p1, p0

    goto :goto_a9

    .line 119
    :goto_77
    new-instance v0, Lads_mobile_sdk/m01;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed while emitting ad paid event for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 123
    iget-object p1, p1, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 126
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 131
    :goto_a9
    new-instance v0, Lads_mobile_sdk/m01;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse ad event value from JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 135
    iget-object p1, p1, Lads_mobile_sdk/c63;->i:Lads_mobile_sdk/ur3;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 143
    :cond_db
    :goto_db
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "AdEventValueString is null or empty"

    invoke-direct {p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v0, p12

    .line 145
    instance-of v5, v0, Lads_mobile_sdk/x53;

    if-eqz v5, :cond_1d

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/x53;

    iget v6, v5, Lads_mobile_sdk/x53;->n:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/x53;->n:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lads_mobile_sdk/x53;

    invoke-direct {v5, v1, v0}, Lads_mobile_sdk/x53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v0, v5, Lads_mobile_sdk/x53;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 297
    iget v7, v5, Lads_mobile_sdk/x53;->n:I

    const-string v8, ": "

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_ad

    if-eq v7, v10, :cond_70

    if-ne v7, v9, :cond_68

    iget-wide v2, v5, Lads_mobile_sdk/x53;->k:J

    iget v4, v5, Lads_mobile_sdk/x53;->j:I

    iget-object v6, v5, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iget-object v7, v5, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iget-object v9, v5, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iget-object v10, v5, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iget-object v11, v5, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iget-object v12, v5, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iget-object v13, v5, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    iget-object v14, v5, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    iget-object v5, v5, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    :try_start_4a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    goto/16 :goto_327

    :catch_4f
    move-exception v0

    move-object/from16 v29, v8

    move-object v10, v14

    goto/16 :goto_2b3

    :catch_55
    move-exception v0

    move-object v1, v13

    move-object v13, v9

    move-object v9, v1

    move-wide v1, v2

    move v3, v4

    move-object/from16 v17, v5

    move-object/from16 v28, v6

    move-object v5, v8

    move-object/from16 v25, v10

    move-object v4, v11

    move-object v11, v12

    move-object v10, v14

    move-object v14, v7

    goto/16 :goto_2ee

    .line 298
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    iget-wide v2, v5, Lads_mobile_sdk/x53;->k:J

    iget v4, v5, Lads_mobile_sdk/x53;->j:I

    iget-object v7, v5, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iget-object v11, v5, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iget-object v12, v5, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iget-object v13, v5, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iget-object v14, v5, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iget-object v15, v5, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iget-object v9, v5, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    iget-object v10, v5, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    move-wide/from16 p1, v2

    iget-object v2, v5, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    :try_start_88
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_97

    move-object v1, v13

    move-object v13, v12

    move-object v12, v1

    move v3, v4

    move-object v4, v14

    move-object v14, v11

    move-object v11, v15

    move-object v15, v2

    move-wide/from16 v1, p1

    goto/16 :goto_f3

    :catch_97
    move-exception v0

    move-object/from16 v29, v8

    goto/16 :goto_2b3

    :catch_9c
    move-exception v0

    move-object/from16 v17, v2

    move v3, v4

    move-object/from16 v28, v7

    move-object v5, v8

    move-object/from16 v25, v13

    move-object v4, v14

    move-wide/from16 v1, p1

    move-object v14, v11

    move-object v13, v12

    move-object v11, v15

    goto/16 :goto_2ee

    .line 299
    :cond_ad
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 312
    :try_start_b0
    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_2d6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b4} :catch_277

    .line 313
    :try_start_b4
    iget-object v7, v1, Lads_mobile_sdk/c63;->e:Lads_mobile_sdk/e01;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    iput-object v2, v5, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bf} :catch_2af
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bf} :catch_277

    move-object/from16 v10, p2

    :try_start_c1
    iput-object v10, v5, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c3} :catch_2a9
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c3} :catch_277

    move-object/from16 v11, p6

    :try_start_c5
    iput-object v11, v5, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iput-object v4, v5, Lads_mobile_sdk/x53;->e:Ljava/util/Map;
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_2a3
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c9} :catch_277

    move-object/from16 v12, p8

    :try_start_cb
    iput-object v12, v5, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cd} :catch_29d
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cd} :catch_277

    move-object/from16 v13, p9

    :try_start_cf
    iput-object v13, v5, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d1} :catch_297
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d1} :catch_277

    move-object/from16 v14, p10

    :try_start_d3
    iput-object v14, v5, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d5} :catch_291
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d5} :catch_277

    move-object/from16 v15, p11

    :try_start_d7
    iput-object v15, v5, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iput v3, v5, Lads_mobile_sdk/x53;->j:I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_db} :catch_28d
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_db} :catch_277

    move-wide/from16 v1, p4

    :try_start_dd
    iput-wide v1, v5, Lads_mobile_sdk/x53;->k:J

    const/4 v0, 0x1

    iput v0, v5, Lads_mobile_sdk/x53;->n:I

    const/16 v0, 0x1a

    invoke-static {v7, v9, v4, v5, v0}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e8} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e8} :catch_277

    if-ne v0, v6, :cond_ed

    move-object v1, v6

    goto/16 :goto_162

    :cond_ed
    move-object v9, v10

    move-object v7, v15

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    .line 314
    :goto_f3
    :try_start_f3
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f5} :catch_26b
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f5} :catch_266

    move-object/from16 v29, v8

    .line 329
    :try_start_f7
    instance-of v8, v0, Lads_mobile_sdk/q01;
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_f9} :catch_24f
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_f9} :catch_179

    if-eqz v8, :cond_1bc

    if-eqz v12, :cond_19f

    const/16 v16, 0x1

    .line 332
    :try_start_ff
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19f

    .line 333
    iget-object v8, v15, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    .line 334
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v0

    .line 335
    const-string v0, "gads:ad_events_for_scar:enabled"

    move-object/from16 v16, v6

    .line 336
    const-string v6, "key"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_11b} :catch_17e
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11b} :catch_179

    move-wide/from16 v21, v1

    :try_start_11d
    sget-object v1, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v8, v0, v6, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_194

    .line 353
    iget-boolean v0, v13, Lads_mobile_sdk/i2;->B0:Z

    if-eqz v0, :cond_194

    .line 354
    move-object/from16 v0, p1

    check-cast v0, Lads_mobile_sdk/q01;

    iput-object v15, v5, Lads_mobile_sdk/x53;->a:Lads_mobile_sdk/c63;

    iput-object v10, v5, Lads_mobile_sdk/x53;->b:Landroid/net/Uri;

    iput-object v9, v5, Lads_mobile_sdk/x53;->c:Lads_mobile_sdk/ha2;

    iput-object v11, v5, Lads_mobile_sdk/x53;->d:Ljava/lang/String;

    iput-object v4, v5, Lads_mobile_sdk/x53;->e:Ljava/util/Map;

    iput-object v12, v5, Lads_mobile_sdk/x53;->f:Lads_mobile_sdk/v3;

    iput-object v13, v5, Lads_mobile_sdk/x53;->g:Lads_mobile_sdk/i2;

    iput-object v14, v5, Lads_mobile_sdk/x53;->h:Ljava/lang/Boolean;

    iput-object v7, v5, Lads_mobile_sdk/x53;->i:Lads_mobile_sdk/ks3;

    iput v3, v5, Lads_mobile_sdk/x53;->j:I
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_147} :catch_188
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_147} :catch_179

    move-wide/from16 v1, v21

    :try_start_149
    iput-wide v1, v5, Lads_mobile_sdk/x53;->k:J

    const/4 v6, 0x2

    iput v6, v5, Lads_mobile_sdk/x53;->n:I
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14e} :catch_17e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14e} :catch_179

    move-object/from16 p3, v0

    move-object/from16 p6, v5

    move-object/from16 p5, v7

    move-object/from16 p2, v10

    move-object/from16 p4, v12

    move-object/from16 p1, v15

    :try_start_15a
    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15e} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15e} :catch_163

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_327

    :goto_162
    return-object v1

    :catch_163
    move-exception v0

    move-object/from16 v18, p2

    :goto_166
    move-object/from16 v10, v18

    goto/16 :goto_2b3

    :catch_16a
    move-exception v0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v25, p4

    move-object/from16 v28, p5

    :goto_173
    move-object/from16 v10, v18

    :goto_175
    move-object/from16 v5, v29

    goto/16 :goto_2ee

    :catch_179
    move-exception v0

    :goto_17a
    move-object/from16 v18, v10

    goto/16 :goto_2b3

    :catch_17e
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v12

    :goto_185
    move-object/from16 v17, v15

    goto :goto_175

    :catch_188
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v12

    move-object/from16 v17, v15

    move-wide/from16 v1, v21

    goto :goto_175

    :cond_194
    move-object/from16 v28, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v12

    move-object/from16 v17, v15

    move-wide/from16 v1, v21

    goto :goto_1a9

    :cond_19f
    move-object/from16 p1, v0

    move-object/from16 v28, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v12

    move-object/from16 v17, v15

    .line 356
    :goto_1a9
    :try_start_1a9
    move-object/from16 v0, p1

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1b6} :catch_1ba
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_327

    :catch_1b8
    move-exception v0

    goto :goto_166

    :catch_1ba
    move-exception v0

    goto :goto_173

    :cond_1bc
    move-object/from16 v28, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v12

    move-object/from16 v17, v15

    .line 359
    :try_start_1c4
    instance-of v5, v0, Lads_mobile_sdk/k01;

    if-eqz v5, :cond_1f9

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/k01;

    invoke-virtual {v5}, Lads_mobile_sdk/k01;->c()I

    move-result v5
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1cf} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1cf} :catch_1b8

    const/16 v6, 0x1f6

    if-ne v5, v6, :cond_1f9

    move-wide/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v9

    move-object/from16 v23, v11

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 361
    :try_start_1e1
    invoke-virtual/range {v17 .. v28}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1e6
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1b8

    goto/16 :goto_327

    :catch_1e6
    move-exception v0

    move-object/from16 v10, v18

    :goto_1e9
    move-object/from16 v9, v19

    move/from16 v3, v20

    move-wide/from16 v1, v21

    move-object/from16 v11, v23

    move-object/from16 v4, v24

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    goto/16 :goto_175

    :cond_1f9
    move-wide/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v9

    move-object/from16 v23, v11

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v10, v18

    goto :goto_21b

    :catch_20a
    move-exception v0

    move-wide/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v9

    move-object/from16 v23, v11

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    goto/16 :goto_173

    .line 373
    :goto_21b
    :try_start_21b
    instance-of v1, v0, Lads_mobile_sdk/p01;

    if-nez v1, :cond_327

    .line 375
    instance-of v1, v0, Lads_mobile_sdk/o01;
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_221} :catch_24b
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_221} :catch_179

    if-eqz v1, :cond_240

    .line 377
    :try_start_223
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppressed retry for non-retryable error on URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_239} :catch_23e
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_239} :catch_23b

    goto/16 :goto_327

    :catch_23b
    move-exception v0

    goto/16 :goto_2b3

    :catch_23e
    move-exception v0

    goto :goto_1e9

    .line 378
    :cond_240
    :try_start_240
    instance-of v0, v0, Lads_mobile_sdk/k01;
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_242} :catch_24b
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_242} :catch_179

    if-nez v0, :cond_327

    move-object/from16 v18, v10

    .line 379
    :try_start_246
    invoke-virtual/range {v17 .. v28}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_246 .. :try_end_249} :catch_1e6
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_249} :catch_1b8

    goto/16 :goto_327

    :catch_24b
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_1e9

    :catch_24f
    move-exception v0

    move-wide/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v28, v7

    :goto_258
    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    goto/16 :goto_185

    :catch_266
    move-exception v0

    move-object/from16 v29, v8

    goto/16 :goto_17a

    :catch_26b
    move-exception v0

    move-wide/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    goto :goto_258

    :catch_277
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v10, p1

    goto :goto_2b3

    :catch_27d
    move-exception v0

    :goto_27e
    move-object/from16 v29, v8

    move-object/from16 v17, p0

    move-object v9, v10

    move-object/from16 v25, v12

    move-object/from16 v28, v15

    move-object/from16 v5, v29

    :goto_289
    move-object/from16 v10, p1

    goto/16 :goto_2ee

    :catch_28d
    move-exception v0

    move-wide/from16 v1, p4

    goto :goto_27e

    :catch_291
    move-exception v0

    move-wide/from16 v1, p4

    :goto_294
    move-object/from16 v15, p11

    goto :goto_27e

    :catch_297
    move-exception v0

    move-wide/from16 v1, p4

    :goto_29a
    move-object/from16 v14, p10

    goto :goto_294

    :catch_29d
    move-exception v0

    move-wide/from16 v1, p4

    :goto_2a0
    move-object/from16 v13, p9

    goto :goto_29a

    :catch_2a3
    move-exception v0

    move-wide/from16 v1, p4

    :goto_2a6
    move-object/from16 v12, p8

    goto :goto_2a0

    :catch_2a9
    move-exception v0

    :goto_2aa
    move-wide/from16 v1, p4

    move-object/from16 v11, p6

    goto :goto_2a6

    :catch_2af
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_2aa

    .line 407
    :goto_2b3
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while pinging URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    goto :goto_327

    :catch_2d6
    move-exception v0

    move-object/from16 v10, p2

    move-wide/from16 v1, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object v5, v8

    move-object/from16 v17, p0

    move-object v9, v10

    move-object/from16 v25, v12

    move-object/from16 v28, v15

    goto :goto_289

    .line 408
    :goto_2ee
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while pinging URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    move-wide/from16 p5, v1

    move/from16 p4, v3

    move-object/from16 p8, v4

    move-object/from16 p3, v9

    move-object/from16 p2, v10

    move-object/from16 p7, v11

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p1, v17

    move-object/from16 p9, v25

    move-object/from16 p12, v28

    .line 409
    invoke-virtual/range {p1 .. p12}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    .line 424
    :cond_327
    :goto_327
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 425
    instance-of v5, v4, Lads_mobile_sdk/y53;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/y53;

    iget v6, v5, Lads_mobile_sdk/y53;->f:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/y53;->f:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lads_mobile_sdk/y53;

    invoke-direct {v5, v1, v4}, Lads_mobile_sdk/y53;-><init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v4, v5, Lads_mobile_sdk/y53;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 714
    iget v7, v5, Lads_mobile_sdk/y53;->f:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_57

    if-eq v7, v9, :cond_49

    if-ne v7, v8, :cond_41

    iget-object v2, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iget-object v3, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    :try_start_39
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    goto/16 :goto_193

    :catchall_3e
    move-exception v0

    goto/16 :goto_1a4

    .line 715
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-object v2, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iget-object v3, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    :try_start_4f
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_54

    goto/16 :goto_d9

    :catchall_54
    move-exception v0

    goto/16 :goto_e9

    .line 716
    :cond_57
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    iget-object v4, v1, Lads_mobile_sdk/c63;->h:Lads_mobile_sdk/g83;

    .line 723
    sget-object v7, Lads_mobile_sdk/s11;->I0:Lads_mobile_sdk/s11;

    .line 724
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    if-nez p4, :cond_69

    .line 725
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v12

    goto :goto_6b

    :cond_69
    move-object/from16 v12, p4

    .line 845
    :goto_6b
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v13

    const-string v14, "X-Ad-Event-Value"

    const-string v15, "X-Afma-Ad-Event-Value"

    const-string v8, "Untrusted domain for ad event value: "

    if-nez v13, :cond_12d

    .line 846
    invoke-static {v4, v7, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 847
    :try_start_7b
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 848
    new-instance v3, Lads_mobile_sdk/m01;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 849
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v4

    move-object v3, v2

    goto :goto_e2

    .line 854
    :cond_a4
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c6

    .line 855
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 856
    :cond_c6
    iput-object v2, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    iput-object v4, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    iput v9, v5, Lads_mobile_sdk/y53;->f:I

    invoke-virtual {v1, v3, v0, v5}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d2
    .catchall {:try_start_7b .. :try_end_d2} :catchall_eb

    if-ne v0, v6, :cond_d6

    goto/16 :goto_18f

    :cond_d6
    move-object v0, v2

    move-object v2, v4

    move-object v3, v2

    .line 861
    :goto_d9
    :try_start_d9
    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    :goto_e2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_54

    .line 975
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1a1

    :goto_e9
    move-object v4, v3

    goto :goto_ed

    :catchall_eb
    move-exception v0

    move-object v2, v4

    .line 983
    :goto_ed
    :try_start_ed
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 987
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_126

    .line 989
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_103

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_103

    .line 995
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_103

    :catchall_100
    move-exception v0

    move-object v3, v0

    goto :goto_127

    .line 1001
    :cond_103
    :goto_103
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_11e

    .line 1002
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_116

    .line 1003
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_110

    throw v0

    .line 1004
    :cond_110
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1005
    :cond_116
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1006
    :cond_11e
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1007
    :cond_126
    throw v0
    :try_end_127
    .catchall {:try_start_ed .. :try_end_127} :catchall_100

    .line 1008
    :goto_127
    :try_start_127
    throw v3
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_128

    :catchall_128
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1042
    :cond_12d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1043
    :try_start_135
    invoke-virtual/range {p0 .. p1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_15e

    .line 1044
    new-instance v3, Lads_mobile_sdk/m01;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1045
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v4

    move-object v3, v2

    goto :goto_19c

    .line 1050
    :cond_15e
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_180

    .line 1051
    invoke-virtual {v2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Lads_mobile_sdk/h81;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1052
    :cond_180
    iput-object v2, v5, Lads_mobile_sdk/y53;->a:Lads_mobile_sdk/q01;

    iput-object v4, v5, Lads_mobile_sdk/y53;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/y53;->c:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v5, Lads_mobile_sdk/y53;->f:I

    invoke-virtual {v1, v3, v0, v5}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/v3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18d
    .catchall {:try_start_135 .. :try_end_18d} :catchall_1a6

    if-ne v0, v6, :cond_190

    :goto_18f
    return-object v6

    :cond_190
    move-object v0, v2

    move-object v2, v4

    move-object v3, v2

    .line 1057
    :goto_193
    :try_start_193
    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    :goto_19c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19e
    .catchall {:try_start_193 .. :try_end_19e} :catchall_3e

    .line 1208
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1209
    :goto_1a1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_1a4
    move-object v4, v3

    goto :goto_1a8

    :catchall_1a6
    move-exception v0

    move-object v2, v4

    .line 1361
    :goto_1a8
    :try_start_1a8
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1365
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1e1

    .line 1367
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1be

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1be

    .line 1373
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1be

    :catchall_1bb
    move-exception v0

    move-object v3, v0

    goto :goto_1e2

    .line 1379
    :cond_1be
    :goto_1be
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1d9

    .line 1380
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1d1

    .line 1381
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_1cb

    throw v0

    .line 1382
    :cond_1cb
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1383
    :cond_1d1
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1384
    :cond_1d9
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1385
    :cond_1e1
    throw v0
    :try_end_1e2
    .catchall {:try_start_1a8 .. :try_end_1e2} :catchall_1bb

    .line 1386
    :goto_1e2
    :try_start_1e2
    throw v3
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e3

    :catchall_1e3
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5

    .line 2074
    iget-object v0, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->Z()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2076
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 2078
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pa"

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2079
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2081
    :cond_37
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2082
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    .registers 27

    move-object/from16 v7, p2

    move/from16 v1, p3

    .line 3326
    iget v0, v7, Lads_mobile_sdk/ha2;->a:I

    if-lt v1, v0, :cond_50

    .line 3327
    iget-boolean v0, v7, Lads_mobile_sdk/ha2;->c:Z

    if-eqz v0, :cond_4f

    .line 3328
    iget-object v0, p0, Lads_mobile_sdk/c63;->b:Lads_mobile_sdk/ac2;

    .line 3329
    new-instance v2, Lads_mobile_sdk/sb2;

    .line 3330
    iget-object v3, p0, Lads_mobile_sdk/c63;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p1

    .line 3332
    invoke-virtual {p0, v5, v1}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 3333
    sget-object v5, Lads_mobile_sdk/rb2;->a:Lads_mobile_sdk/rb2;

    move-object/from16 v11, p6

    .line 3334
    invoke-direct {v2, v3, v4, v11, v1}, Lads_mobile_sdk/sb2;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 3335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3336
    const-string v1, "pingRecord"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3421
    new-instance v1, Lads_mobile_sdk/wb2;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/wb2;-><init>(Lads_mobile_sdk/ac2;Lads_mobile_sdk/sb2;Lkotlin/coroutines/Continuation;)V

    .line 3422
    iget-object v2, v0, Lads_mobile_sdk/ac2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/xb2;

    invoke-direct {v4, v0, v1, v3}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x0

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    move-object/from16 p3, v5

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4f
    return-void

    :cond_50
    move-object/from16 v5, p1

    move-object/from16 v11, p6

    .line 3423
    iget-object v14, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/b63;

    const/4 v13, 0x0

    move-object v9, p0

    move-wide/from16 v2, p4

    move-object/from16 v12, p7

    move-object/from16 v6, p8

    move-object/from16 v10, p10

    move-object/from16 v8, p11

    move-object v4, v5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/b63;-><init>(IJLandroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/v3;Lads_mobile_sdk/ha2;Lads_mobile_sdk/ks3;Lads_mobile_sdk/c63;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p1, v14

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V
    .registers 16

    .line 2083
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commonConfiguration"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2084
    iget-object v1, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2086
    const-string v2, "gads:use_retry_strategy:enabled"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2103
    iget-object v1, p2, Lads_mobile_sdk/i2;->x0:Lads_mobile_sdk/ga2;

    if-eqz v1, :cond_47

    move-object v2, p1

    .line 2104
    iget-object p1, p0, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/a63;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/a63;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    move-object p4, v0

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_47
    move-object v1, p0

    move-object v2, p1

    move-object p1, p2

    move-object v6, p5

    move-object v7, p6

    move-object p2, v3

    move-object v3, p4

    if-eqz v3, :cond_84

    .line 2105
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    .line 2106
    iget-object p3, v1, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2108
    const-string p4, "gads:ad_events_for_scar:enabled"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2124
    invoke-virtual {p3, p4, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_84

    .line 2125
    iget-boolean p1, p1, Lads_mobile_sdk/i2;->B0:Z

    if-eqz p1, :cond_84

    .line 2126
    iget-object p1, v1, Lads_mobile_sdk/c63;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/z53;

    const/4 v5, 0x0

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/z53;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    move-object p2, v1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_84
    move-object p2, v1

    .line 2143
    iget-object p1, p2, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 2144
    iget-object p3, p2, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    invoke-virtual {p3, v2}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p3

    .line 2145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2146
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2188
    iget-object p1, p1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance p4, Lkotlin/Pair;

    invoke-direct {p4, v2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 7

    .line 2280
    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2353
    iget-object v0, p0, Lads_mobile_sdk/c63;->f:Lads_mobile_sdk/vw3;

    .line 2687
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2688
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2689
    check-cast v2, Landroid/net/Uri;

    .line 2690
    new-instance v3, Lkotlin/Pair;

    .line 2691
    iget-object v4, p0, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    invoke-virtual {v4, v2}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v4

    .line 2692
    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3028
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3029
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3030
    const-string p1, "urisAndHeaders"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3082
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3083
    iget-object v3, v0, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_60
    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .registers 8

    .line 1445
    iget-object v0, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->O0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 1448
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    return v0

    .line 1449
    :cond_12
    iget-object v2, p0, Lads_mobile_sdk/c63;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->a()Ljava/util/List;

    move-result-object v2

    .line 1791
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_57

    .line 1792
    :cond_23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1793
    const-string v4, "."

    invoke-static {v3, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v0, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_56
    return v1

    :cond_57
    :goto_57
    return v0
.end method
