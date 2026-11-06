###### Class io.bidmachine.w (io.bidmachine.w)
.class public abstract Lio/bidmachine/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/w;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/x;
    .registers 4

    .line 15
    sget-object v0, Lio/bidmachine/w;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/x;

    return-object p0

    :cond_f
    const/4 v0, 0x0

    .line 20
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    if-nez p0, :cond_17

    return-object v0

    .line 24
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bmnetwork"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Lio/bidmachine/w;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/bidmachine/x;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    return-object v0
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/bidmachine/x;
    .registers 6

    const/4 v0, 0x0

    .line 26
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 30
    :cond_8
    invoke-static {p0, p1}, Lio/bidmachine/w;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object v0

    .line 35
    :cond_13
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    const-string p0, "name"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "classpath"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "sdk_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4f

    .line 47
    :cond_49
    new-instance v3, Lio/bidmachine/x;

    invoke-direct {v3, p0, v1, v2, p1}, Lio/bidmachine/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_4f

    return-object v3

    :catch_4f
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/w;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 5
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_25

    .line 9
    :cond_10
    const-string v0, "bm_networks"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_25

    .line 13
    :cond_19
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 14
    invoke-static {p0, v3}, Lio/bidmachine/w;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/bidmachine/x;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_25
    :cond_25
    :goto_25
    return-void
.end method

.method public static b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/bidmachine/x;
    .registers 3

    .line 5
    invoke-static {p0, p1}, Lio/bidmachine/w;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/bidmachine/x;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 7
    sget-object p1, Lio/bidmachine/w;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/w;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    return-object v0

    .line 4
    :cond_9
    invoke-static {p0}, Lio/bidmachine/w;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bm_networks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/core/Utils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-object p0

    :catchall_1a
    move-exception p0

    .line 4
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
