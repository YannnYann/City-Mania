###### Class ads_mobile_sdk.pe2 (ads_mobile_sdk.pe2)
.class public abstract Lads_mobile_sdk/pe2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static b:Landroid/view/WindowManager;

.field public static volatile c:Landroid/graphics/Point;

.field public static d:Lads_mobile_sdk/oe2;

.field public static final e:[Ljava/lang/String;

.field public static f:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/pe2;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lads_mobile_sdk/pe2;->b:Landroid/view/WindowManager;

    .line 3
    sput-object v0, Lads_mobile_sdk/pe2;->c:Landroid/graphics/Point;

    .line 4
    sput-object v0, Lads_mobile_sdk/pe2;->d:Lads_mobile_sdk/oe2;

    .line 6
    const-string v0, "width"

    const-string v1, "height"

    const-string v2, "x"

    const-string v3, "y"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/pe2;->e:[Ljava/lang/String;

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lads_mobile_sdk/pe2;->f:F

    return-void
.end method

.method public static a()Landroid/graphics/Point;
    .registers 2

    .line 434
    sget-object v0, Lads_mobile_sdk/pe2;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_14

    .line 435
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 436
    sget-object v1, Lads_mobile_sdk/pe2;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 6

    .line 404
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 407
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 411
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 412
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    goto :goto_9

    :cond_23
    return-object v0

    :catch_24
    move-exception p0

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to parse JSON to Map"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(IIII)Lorg/json/JSONObject;
    .registers 8

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 420
    :try_start_5
    const-string v1, "x"

    int-to-float p0, p0

    .line 421
    sget v2, Lads_mobile_sdk/pe2;->f:F

    div-float/2addr p0, v2

    float-to-double v2, p0

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 423
    const-string p0, "y"

    int-to-float p1, p1

    .line 424
    sget v1, Lads_mobile_sdk/pe2;->f:F

    div-float/2addr p1, v1

    float-to-double v1, p1

    .line 425
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 426
    const-string p0, "width"

    int-to-float p1, p2

    .line 427
    sget p2, Lads_mobile_sdk/pe2;->f:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 428
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 429
    const-string p0, "height"

    int-to-float p1, p3

    .line 430
    sget p2, Lads_mobile_sdk/pe2;->f:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 431
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception p0

    .line 433
    const-string p1, "Error with creating viewStateObject"

    invoke-static {p1, p0}, Lads_mobile_sdk/bf2;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lads_mobile_sdk/pe2;->f:F

    .line 262
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lads_mobile_sdk/pe2;->b:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 263
    sput-object v0, Lads_mobile_sdk/pe2;->c:Landroid/graphics/Point;

    .line 264
    sget-object v1, Lads_mobile_sdk/pe2;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lads_mobile_sdk/ne2;

    invoke-direct {v2}, Lads_mobile_sdk/ne2;-><init>()V

    .line 265
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 268
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_40

    .line 269
    sget-object v1, Lads_mobile_sdk/pe2;->d:Lads_mobile_sdk/oe2;

    if-eqz v1, :cond_36

    .line 270
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 271
    sput-object v0, Lads_mobile_sdk/pe2;->d:Lads_mobile_sdk/oe2;

    .line 272
    :cond_36
    new-instance v1, Lads_mobile_sdk/oe2;

    invoke-direct {v1}, Lads_mobile_sdk/oe2;-><init>()V

    sput-object v1, Lads_mobile_sdk/pe2;->d:Lads_mobile_sdk/oe2;

    .line 285
    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_40
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 398
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    goto :goto_7

    :catch_6
    move-exception p0

    .line 401
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JSONException during JSONObject.put for name ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    const-string p2, "OMIDLIB"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string v0, "childViews"

    .line 187
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    .line 189
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 190
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_10
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)V
    .registers 6

    .line 383
    sget-object v0, Lads_mobile_sdk/pe2;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_1b

    .line 384
    sget-object v0, Lads_mobile_sdk/pe2;->c:Landroid/graphics/Point;

    if-nez v0, :cond_e

    .line 386
    invoke-static {}, Lads_mobile_sdk/pe2;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 387
    sput-object v0, Lads_mobile_sdk/pe2;->c:Landroid/graphics/Point;

    :cond_e
    if-eqz v0, :cond_1b

    .line 390
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 391
    sget v2, Lads_mobile_sdk/pe2;->f:F

    div-float/2addr v1, v2

    .line 392
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    move v0, v1

    .line 408
    :goto_1d
    :try_start_1d
    const-string v2, "width"

    float-to-double v3, v1

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 409
    const-string v1, "height"

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    .line 374
    const-string v0, "childViews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 375
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_10

    if-nez p1, :cond_10

    return v0

    :cond_10
    const/4 v1, 0x0

    if-nez p0, :cond_16

    if-nez p1, :cond_16

    goto :goto_25

    :cond_16
    if-eqz p0, :cond_3f

    if-nez p1, :cond_1b

    goto :goto_3f

    .line 376
    :cond_1b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_3f

    :goto_25
    move v2, v1

    .line 377
    :goto_26
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 378
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 379
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 380
    invoke-static {v3, v4}, Lads_mobile_sdk/pe2;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_ab

    if-nez p1, :cond_d

    goto/16 :goto_ab

    .line 2
    :cond_d
    sget-object v2, Lads_mobile_sdk/pe2;->e:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 3
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_23

    goto/16 :goto_ab

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 4
    :cond_26
    const-string v2, "adSessionId"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 7
    const-string v2, "noOutputDevice"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 9
    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 10
    const-string v2, "hasWindowFocus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 13
    const-string v2, "isFriendlyObstructionFor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v4, :cond_77

    if-nez v2, :cond_77

    goto :goto_a4

    :cond_77
    if-nez v4, :cond_7c

    if-nez v2, :cond_7c

    goto :goto_8b

    :cond_7c
    if-eqz v4, :cond_ab

    if-nez v2, :cond_81

    goto :goto_ab

    .line 15
    :cond_81
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v5, v6, :cond_ab

    :goto_8b
    move v5, v1

    .line 16
    :goto_8c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a4

    .line 17
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    goto :goto_ab

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 20
    :cond_a4
    :goto_a4
    invoke-static {p0, p1}, Lads_mobile_sdk/pe2;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_ab

    return v0

    :cond_ab
    :goto_ab
    return v1
.end method
