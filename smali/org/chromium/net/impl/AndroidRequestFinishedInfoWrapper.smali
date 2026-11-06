###### Class org.chromium.net.impl.AndroidRequestFinishedInfoWrapper (org.chromium.net.impl.AndroidRequestFinishedInfoWrapper)
.class public Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;
.super Lorg/chromium/net/impl/RequestFinishedInfoImpl;
.source "AndroidRequestFinishedInfoWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sListenerSupportLimitedLogged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Metrics;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "annotations",
            "metrics",
            "finishedReason",
            "responseInfo",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/RequestFinishedInfo$Metrics;",
            "I",
            "Lorg/chromium/net/UrlResponseInfo;",
            "Lorg/chromium/net/CronetException;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p6}, Lorg/chromium/net/impl/RequestFinishedInfoImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Metrics;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public static reportFinished(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "url",
            "annotations",
            "listener",
            "finishedReason",
            "responseInfo",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/impl/AndroidHttpEngineWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;",
            "I",
            "Lorg/chromium/net/UrlResponseInfo;",
            "Lorg/chromium/net/CronetException;",
            ")V"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;

    .line 62
    invoke-static {}, Lorg/chromium/net/impl/CronetMetrics;->empty()Lorg/chromium/net/impl/CronetMetrics;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Metrics;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    .line 66
    invoke-virtual {p0, v0, p3}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->reportRequestFinished(Lorg/chromium/net/RequestFinishedInfo;Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V

    return-void
.end method


# virtual methods
.method public getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;
    .registers 3

    .line 40
    sget-boolean v0, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;->sListenerSupportLimitedLogged:Z

    if-nez v0, :cond_e

    .line 41
    sget-object v0, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;->TAG:Ljava/lang/String;

    const-string v1, "RequestFinishedInfo.getMetrics() is unsupported when HttpEngineNativeProvider is used. The Metrics object will return null values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;->sListenerSupportLimitedLogged:Z

    .line 47
    :cond_e
    invoke-super {p0}, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v0

    return-object v0
.end method
