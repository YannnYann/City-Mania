###### Class io.bidmachine.util.Utils (io.bidmachine.util.Utils)
.class public final Lio/bidmachine/util/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/bidmachine/util/Utils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,906:1\n37#2,2:907\n1#3:909\n846#4,4:910\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nio/bidmachine/util/Utils\n*L\n186#1:907,2\n248#1:910,4\n*E\n"
.end annotation


# static fields
.field public static final HEX_ARRAY:[C

.field public static final INSTANCE:Lio/bidmachine/util/Utils;

.field public static final UPPER_HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/util/Utils;

    invoke-direct {v0}, Lio/bidmachine/util/Utils;-><init>()V

    sput-object v0, Lio/bidmachine/util/Utils;->INSTANCE:Lio/bidmachine/util/Utils;

    .line 67
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/Utils;->HEX_ARRAY:[C

    .line 68
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/util/Utils;->UPPER_HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final closeSafely(Ljava/io/Closeable;)V
    .registers 1

    .line 229
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->closeSafely(Ljava/io/Closeable;)V

    return-void
.end method

.method public static final createHandlerWithMyOrMainLooper()Landroid/os/Handler;
    .registers 2

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_c
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final decodeBase64(Ljava/lang/String;I)[B
    .registers 3

    const-string v0, "base64"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeBase64$default(Ljava/lang/String;IILjava/lang/Object;)[B
    .registers 4

    const/4 p3, 0x2

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 439
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/Utils;->decodeBase64(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decodeBase64ToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->decodeBase64ToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeBase64ToString$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 p3, 0x2

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 455
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/Utils;->decodeBase64ToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final dpToPx(Landroid/content/Context;F)I
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static final flushSafely(Ljava/io/Flushable;)V
    .registers 1

    .line 232
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->flushSafely(Ljava/io/Flushable;)V

    return-void
.end method

.method public static final fromJsonElementToObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 126
    :cond_4
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 130
    :cond_d
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_18

    .line 131
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 134
    :cond_18
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_22

    .line 135
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static final fromObjectToJsonElementOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_f

    .line 156
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 159
    :cond_f
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_19

    .line 160
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public static final getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final getNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 7

    const-string v0, "mainRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 324
    :cond_17
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 325
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 326
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 327
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v1, v2

    const/4 p1, 0x0

    .line 328
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v3, p0

    .line 329
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v1, p0

    sub-int p0, v0, v1

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static final getValidUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 1

    .line 275
    :try_start_0
    invoke-static {p0}, Lio/bidmachine/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getValidUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    .line 256
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 259
    :cond_9
    invoke-static {p0}, Lio/bidmachine/util/Utils;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    .line 263
    :cond_10
    :try_start_10
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_16} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_16} :catch_16

    :catch_16
    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final ifNotNull(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/bidmachine/util/Executable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_a

    .line 427
    invoke-interface {p1, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public static final isExternalMemoryAvailable()Z
    .registers 2

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isHttpUrl(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isUrlValid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_19

    .line 245
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_19

    .line 249
    :cond_9
    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    const/4 p0, 0x0

    .line 251
    :goto_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static final pxToDp(FI)I
    .registers 2

    .line 0
    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static final registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    const-string v0, "receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-static {p1, p0, p2}, Lio/bidmachine/util/UtilsKt;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "jsonArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrDefault(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    .line 101
    invoke-static {p0, p1}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 2

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lio/bidmachine/util/Utils;->toLongOrDefault(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
