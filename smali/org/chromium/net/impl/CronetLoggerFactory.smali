###### Class org.chromium.net.impl.CronetLoggerFactory (org.chromium.net.impl.CronetLoggerFactory)
.class public final Lorg/chromium/net/impl/CronetLoggerFactory;
.super Ljava/lang/Object;
.source "CronetLoggerFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CronetLoggerFactory"

.field public static sLogger:Lorg/chromium/net/impl/CronetLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogger(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Lorg/chromium/net/impl/CronetLogger;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "source"
        }
    .end annotation

    .line 31
    const-class v0, Lorg/chromium/net/impl/CronetLoggerFactory;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lorg/chromium/net/impl/CronetLoggerFactory;->sLogger:Lorg/chromium/net/impl/CronetLogger;

    if-nez v1, :cond_26

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_26

    .line 35
    invoke-static {p0, p1}, Lorg/chromium/net/impl/CronetManifest;->isAppOptedInForTelemetry(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    if-eqz p0, :cond_26

    .line 37
    :try_start_13
    new-instance p0, Lorg/chromium/net/telemetry/CronetLoggerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/chromium/net/telemetry/CronetLoggerImpl;-><init>(I)V

    sput-object p0, Lorg/chromium/net/impl/CronetLoggerFactory;->sLogger:Lorg/chromium/net/impl/CronetLogger;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1e
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1c

    goto :goto_26

    :catchall_1c
    move-exception p0

    goto :goto_35

    :catch_1e
    move-exception p0

    .line 41
    :try_start_1f
    sget-object p1, Lorg/chromium/net/impl/CronetLoggerFactory;->TAG:Ljava/lang/String;

    const-string v1, "Exception creating an instance of CronetLoggerImpl"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_26
    :goto_26
    sget-object p0, Lorg/chromium/net/impl/CronetLoggerFactory;->sLogger:Lorg/chromium/net/impl/CronetLogger;

    if-nez p0, :cond_31

    new-instance p0, Lorg/chromium/net/impl/NoOpLogger;

    invoke-direct {p0}, Lorg/chromium/net/impl/NoOpLogger;-><init>()V

    sput-object p0, Lorg/chromium/net/impl/CronetLoggerFactory;->sLogger:Lorg/chromium/net/impl/CronetLogger;

    .line 45
    :cond_31
    sget-object p0, Lorg/chromium/net/impl/CronetLoggerFactory;->sLogger:Lorg/chromium/net/impl/CronetLogger;

    monitor-exit v0

    return-object p0

    .line 46
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_1c

    throw p0
.end method
