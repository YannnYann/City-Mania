###### Class ads_mobile_sdk.xs (ads_mobile_sdk.xs)
.class public final Lads_mobile_sdk/xs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/e01;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;)V
    .registers 5

    .line 1
    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lads_mobile_sdk/xs;->a:Lads_mobile_sdk/e01;

    .line 28
    iput-object p2, p0, Lads_mobile_sdk/xs;->b:Lads_mobile_sdk/ex0;

    .line 29
    iput-object p3, p0, Lads_mobile_sdk/xs;->c:Lads_mobile_sdk/ur3;

    return-void
.end method

.method public static a(Lads_mobile_sdk/xs;Ljava/lang/String;DZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v0, p5

    .line 1
    instance-of v3, v0, Lads_mobile_sdk/ws;

    if-eqz v3, :cond_1d

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/ws;

    iget v4, v3, Lads_mobile_sdk/ws;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1d

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ws;->f:I

    goto :goto_22

    :cond_1d
    new-instance v3, Lads_mobile_sdk/ws;

    invoke-direct {v3, v1, v0}, Lads_mobile_sdk/ws;-><init>(Lads_mobile_sdk/xs;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v0, v3, Lads_mobile_sdk/ws;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 33
    iget v5, v3, Lads_mobile_sdk/ws;->f:I

    const-string v11, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v5, :cond_47

    if-ne v5, v12, :cond_3f

    iget-boolean v1, v3, Lads_mobile_sdk/ws;->c:Z

    iget-wide v4, v3, Lads_mobile_sdk/ws;->b:D

    iget-object v2, v3, Lads_mobile_sdk/ws;->a:Lads_mobile_sdk/xs;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v1

    move-object v1, v2

    goto/16 :goto_13b

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object v0, v1, Lads_mobile_sdk/xs;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-string v5, "key"

    const-string v6, "gads:native_bitmap_loader_supports_data_url"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 57
    const-string v0, "data:"

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {v2, v0, v14, v15, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 58
    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_88

    .line 60
    new-instance v0, Lads_mobile_sdk/m01;

    .line 62
    sget-object v2, Lads_mobile_sdk/kk1;->n:Lads_mobile_sdk/kk1;

    .line 63
    const-string v3, "Bad data URL: no \',\' found for base64 data"

    invoke-direct {v0, v3, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto/16 :goto_100

    .line 68
    :cond_88
    invoke-virtual {v2, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, ";base64"

    invoke-static {v4, v6, v14, v15, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 69
    new-instance v0, Lads_mobile_sdk/m01;

    .line 71
    sget-object v2, Lads_mobile_sdk/kk1;->n:Lads_mobile_sdk/kk1;

    .line 72
    const-string v3, "Bad data URL: only base64 is supported"

    invoke-direct {v0, v3, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_100

    :cond_a3
    const/4 v6, 0x6

    const/4 v7, 0x0

    move v4, v3

    .line 77
    const-string v3, ":"

    move/from16 v16, v4

    const/4 v4, 0x0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    move/from16 p5, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 78
    const-string v3, ";"

    move v14, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    if-eq v14, v12, :cond_f7

    add-int/lit8 v4, v14, 0x1

    .line 81
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "image/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v15, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    goto :goto_f7

    :cond_d8
    add-int/lit8 v0, v0, 0x1

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_e1
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e1 .. :try_end_ea} :catch_ec

    :goto_ea
    move-object v0, v2

    goto :goto_100

    :catch_ec
    move-exception v0

    .line 93
    new-instance v2, Lads_mobile_sdk/j01;

    .line 95
    sget-object v3, Lads_mobile_sdk/kk1;->n:Lads_mobile_sdk/kk1;

    .line 96
    const-string v4, "Bad data URL: could not decode base64"

    invoke-direct {v2, v0, v3, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;)V

    goto :goto_ea

    .line 97
    :cond_f7
    :goto_f7
    new-instance v0, Lads_mobile_sdk/m01;

    .line 99
    sget-object v2, Lads_mobile_sdk/kk1;->n:Lads_mobile_sdk/kk1;

    .line 100
    const-string v3, "Bad data URL: only image media is supported"

    invoke-direct {v0, v3, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 101
    :goto_100
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_107

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 102
    :cond_107
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 103
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 104
    check-cast v0, [B

    .line 107
    invoke-virtual {v1, v0, v8, v9, v10}, Lads_mobile_sdk/xs;->a([BDZ)Lads_mobile_sdk/v01;

    move-result-object v0

    return-object v0

    :cond_115
    move/from16 p5, v12

    .line 111
    iget-object v0, v1, Lads_mobile_sdk/xs;->a:Lads_mobile_sdk/e01;

    new-instance v5, Ljava/net/URL;

    .line 287
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v3, Lads_mobile_sdk/ws;->a:Lads_mobile_sdk/xs;

    iput-wide v8, v3, Lads_mobile_sdk/ws;->b:D

    iput-boolean v10, v3, Lads_mobile_sdk/ws;->c:Z

    move/from16 v2, p5

    iput v2, v3, Lads_mobile_sdk/ws;->f:I

    const/16 v2, 0x1e

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v3, v2}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_13a

    return-object v4

    :cond_13a
    move-wide v4, v8

    .line 289
    :goto_13b
    check-cast v0, Lads_mobile_sdk/v01;

    .line 480
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_144

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 481
    :cond_144
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 482
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 483
    check-cast v0, Lads_mobile_sdk/h81;

    .line 484
    :try_start_14d
    iget-object v0, v0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v0, :cond_15d

    .line 485
    iget-object v0, v0, Lads_mobile_sdk/p53;->a:[B
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_15b

    if-nez v0, :cond_156

    goto :goto_15d

    .line 486
    :cond_156
    invoke-virtual {v1, v0, v4, v5, v10}, Lads_mobile_sdk/xs;->a([BDZ)Lads_mobile_sdk/v01;

    move-result-object v0

    return-object v0

    :catch_15b
    move-exception v0

    goto :goto_167

    .line 487
    :cond_15d
    :goto_15d
    :try_start_15d
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v2, "HTTP response body is null"

    .line 488
    sget-object v3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 489
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_166} :catch_15b

    return-object v0

    .line 490
    :goto_167
    iget-object v1, v1, Lads_mobile_sdk/xs;->c:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    const-string v2, "Error downloading bitmap from url."

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    new-instance v1, Lads_mobile_sdk/j01;

    sget-object v2, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public final a([BDZ)Lads_mobile_sdk/v01;
    .registers 10

    .line 493
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0xa0

    int-to-double v1, v1

    mul-double/2addr v1, p2

    double-to-int p2, v1

    .line 500
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez p4, :cond_12

    .line 504
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_12
    const/4 p2, 0x1

    .line 505
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    array-length p3, p1

    const/4 p4, 0x0

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 507
    iput-boolean p4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 510
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 511
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p3, v1

    if-gtz p3, :cond_24

    goto :goto_49

    .line 521
    :cond_24
    iget-object v1, p0, Lads_mobile_sdk/xs;->b:Lads_mobile_sdk/ex0;

    const/high16 v2, 0x100000

    .line 523
    const-string v3, "key"

    const-string v4, "gads:nativeads:image:sample:pixels"

    invoke-static {v1, v4, v3, v2}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 524
    sget-object v3, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr p3, p2

    .line 525
    div-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x21

    .line 526
    div-int/lit8 p3, p3, 0x2

    shl-int/2addr p2, p3

    .line 532
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 533
    :goto_49
    array-length p2, p1

    invoke-static {p1, p4, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 534
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Cannot decode image"

    .line 535
    sget-object p3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 536
    invoke-direct {p1, p2, p3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 537
    :cond_5a
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
