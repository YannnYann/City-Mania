###### Class ads_mobile_sdk.mz1 (ads_mobile_sdk.mz1)
.class public final Lads_mobile_sdk/mz1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lkotlin/text/Regex;


# instance fields
.field public final a:Lads_mobile_sdk/an0;

.field public final b:Lads_mobile_sdk/ix1;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/e01;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/ks3;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^/\\\\\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/mz1;->i:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/an0;Lads_mobile_sdk/ix1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/e01;Lads_mobile_sdk/f0;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;)V
    .registers 10

    .line 1
    const-string v0, "deviceProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lads_mobile_sdk/mz1;->a:Lads_mobile_sdk/an0;

    .line 40
    iput-object p2, p0, Lads_mobile_sdk/mz1;->b:Lads_mobile_sdk/ix1;

    .line 41
    iput-object p3, p0, Lads_mobile_sdk/mz1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 42
    iput-object p4, p0, Lads_mobile_sdk/mz1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    iput-object p5, p0, Lads_mobile_sdk/mz1;->e:Lads_mobile_sdk/e01;

    .line 44
    iput-object p6, p0, Lads_mobile_sdk/mz1;->f:Lads_mobile_sdk/f0;

    .line 45
    iput-object p7, p0, Lads_mobile_sdk/mz1;->g:Lads_mobile_sdk/g83;

    .line 46
    iput-object p8, p0, Lads_mobile_sdk/mz1;->h:Lads_mobile_sdk/ks3;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/mz1;)Lads_mobile_sdk/e01;
    .registers 1

    .line 37
    iget-object p0, p0, Lads_mobile_sdk/mz1;->e:Lads_mobile_sdk/e01;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/mz1;Ljava/util/Map;Lads_mobile_sdk/r31;)Lkotlin/Unit;
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    .line 227
    iget-object v0, v6, Lads_mobile_sdk/mz1;->a:Lads_mobile_sdk/an0;

    invoke-virtual {v0}, Lads_mobile_sdk/an0;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 228
    const-string v0, "This feature is not available on the device."

    .line 229
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 230
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 233
    :cond_15
    iget-object v0, v6, Lads_mobile_sdk/mz1;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_25

    .line 235
    const-string v0, "Activity context is required to show store picture event alert."

    .line 236
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 237
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 240
    :cond_25
    const-string v2, "iurl"

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_104

    .line 241
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_104

    .line 246
    :cond_3a
    invoke-static {v7}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 249
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 381
    :cond_5c
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7d

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No image file name in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 386
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 389
    :cond_7d
    sget-object v2, Lads_mobile_sdk/mz1;->i:Lkotlin/text/Regex;

    invoke-virtual {v2, v8}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-eqz v2, :cond_ed

    .line 390
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_91

    goto :goto_ed

    .line 394
    :cond_91
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 396
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_allow_store_picture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ac

    goto :goto_ae

    :cond_ac
    :goto_ac
    move-object v3, v2

    goto :goto_b1

    :cond_ae
    :goto_ae
    const-string v2, "Allow Ad to store image in Picture gallery?"

    goto :goto_ac

    :goto_b1
    if-eqz v1, :cond_bb

    .line 397
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_save_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_bd

    :cond_bb
    const-string v2, "Save image"

    :cond_bd
    if-eqz v1, :cond_c7

    .line 398
    sget v4, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_alert_accept:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c9

    :cond_c7
    const-string v4, "Accept"

    :cond_c9
    if-eqz v1, :cond_d6

    .line 399
    sget v5, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->mraid_alert_decline:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d4

    goto :goto_d6

    :cond_d4
    :goto_d4
    move-object v5, v1

    goto :goto_d9

    :cond_d6
    :goto_d6
    const-string v1, "Decline"

    goto :goto_d4

    .line 400
    :goto_d9
    iget-object v12, v6, Lads_mobile_sdk/mz1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Lads_mobile_sdk/jz1;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/jz1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mz1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v10, v12

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 413
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 414
    :cond_ed
    :goto_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image file name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 416
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 417
    :cond_104
    :goto_104
    const-string v0, "Image url cannot be empty."

    .line 418
    invoke-virtual {v6, v0, v10, v1}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    .line 419
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic a(Lads_mobile_sdk/mz1;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lads_mobile_sdk/r31;)V
    .registers 6

    .line 2
    invoke-virtual/range {p0 .. p5}, Lads_mobile_sdk/mz1;->a(Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lads_mobile_sdk/r31;)V

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/mz1;Ljava/lang/String;Lads_mobile_sdk/r31;)V
    .registers 4

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, p1, p2, v0}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    return-void
.end method

.method public static final synthetic b(Lads_mobile_sdk/mz1;)Lads_mobile_sdk/g83;
    .registers 1

    .line 35
    iget-object p0, p0, Lads_mobile_sdk/mz1;->g:Lads_mobile_sdk/g83;

    return-object p0
.end method

.method public static final synthetic c(Lads_mobile_sdk/mz1;)Lads_mobile_sdk/ks3;
    .registers 1

    .line 35
    iget-object p0, p0, Lads_mobile_sdk/mz1;->h:Lads_mobile_sdk/ks3;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;
    .registers 3

    .line 225
    invoke-static {p0, p2, p1}, Lads_mobile_sdk/mz1;->a(Lads_mobile_sdk/mz1;Ljava/util/Map;Lads_mobile_sdk/r31;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lads_mobile_sdk/r31;)V
    .registers 12

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 421
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "is_pending"

    const/4 v2, 0x1

    const/16 v3, 0x1e

    if-lt p3, v3, :cond_30

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    :cond_30
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 428
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_42

    .line 430
    const-string p1, "Unable to store picture"

    .line 431
    invoke-virtual {p0, p1, p5, v2}, Lads_mobile_sdk/mz1;->a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V

    return-void

    .line 432
    :cond_42
    sget-object p5, Lads_mobile_sdk/v93;->d:Lads_mobile_sdk/v93;

    invoke-static {p4, v5, p5}, Lads_mobile_sdk/w93;->a(Landroid/content/Context;Landroid/net/Uri;Lads_mobile_sdk/v93;)Ljava/io/FileOutputStream;

    move-result-object p4

    .line 433
    invoke-static {p1, p4}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    if-lt p3, v3, :cond_5c

    .line 437
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const/4 p1, 0x0

    .line 438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 439
    invoke-virtual {v4, v5, v0, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    :cond_5c
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Lads_mobile_sdk/hz1;

    invoke-direct {p1, p2, v5}, Lads_mobile_sdk/hz1;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r31;Z)V
    .registers 11

    .line 217
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store picture error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    const/4 p3, 0x6

    .line 219
    invoke-static {p1, v0, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 221
    :cond_1d
    iget-object v1, p0, Lads_mobile_sdk/mz1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/iz1;

    invoke-direct {v4, p0, p2, p1, v0}, Lads_mobile_sdk/iz1;-><init>(Lads_mobile_sdk/mz1;Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
