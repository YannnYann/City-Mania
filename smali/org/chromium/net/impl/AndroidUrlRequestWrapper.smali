###### Class org.chromium.net.impl.AndroidUrlRequestWrapper (org.chromium.net.impl.AndroidUrlRequestWrapper)
.class public Lorg/chromium/net/impl/AndroidUrlRequestWrapper;
.super Lorg/chromium/net/ExperimentalUrlRequest;
.source "AndroidUrlRequestWrapper.java"


# instance fields
.field public final mAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackend:Landroid/net/http/UrlRequest;

.field public final mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

.field public final mInitialUrl:Ljava/lang/String;

.field public final mRequestFinishedInfoListener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;


# direct methods
.method public constructor <init>(Landroid/net/http/UrlRequest;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "engine",
            "url",
            "annotations",
            "requestFinishedInfoListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/UrlRequest;",
            "Lorg/chromium/net/impl/AndroidHttpEngineWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/RequestFinishedInfo$Listener;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/chromium/net/ExperimentalUrlRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    .line 35
    iput-object p2, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    .line 36
    iput-object p3, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mInitialUrl:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mAnnotations:Ljava/util/Collection;

    if-nez p5, :cond_f

    const/4 p1, 0x0

    goto :goto_14

    .line 41
    :cond_f
    new-instance p1, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    invoke-direct {p1, p5}, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;-><init>(Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    :goto_14
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mRequestFinishedInfoListener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    return-void
.end method

.method public static createAndAddToCallback(Landroid/net/http/UrlRequest;Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Listener;)Lorg/chromium/net/impl/AndroidUrlRequestWrapper;
    .registers 12
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
            "backend",
            "callback",
            "engine",
            "url",
            "annotations",
            "requestFinishedInfoListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/UrlRequest;",
            "Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;",
            "Lorg/chromium/net/impl/AndroidHttpEngineWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/RequestFinishedInfo$Listener;",
            ")",
            "Lorg/chromium/net/impl/AndroidUrlRequestWrapper;"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;-><init>(Landroid/net/http/UrlRequest;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    .line 92
    invoke-virtual {p1, v0}, Lorg/chromium/net/impl/AndroidUrlRequestCallbackWrapper;->setRequest(Lorg/chromium/net/impl/AndroidUrlRequestWrapper;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/UrlRequest;)V

    return-void
.end method

.method public followRedirect()V
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/http/UrlRequest;)V

    return-void
.end method

.method public getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    new-instance v1, Lorg/chromium/net/impl/AndroidUrlRequestStatusListenerWrapper;

    invoke-direct {v1, p1}, Lorg/chromium/net/impl/AndroidUrlRequestStatusListenerWrapper;-><init>(Lorg/chromium/net/UrlRequest$StatusListener;)V

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/UrlRequest;Landroid/net/http/UrlRequest$StatusListener;)V

    return-void
.end method

.method public isDone()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/http/UrlRequest;)Z

    move-result v0

    return v0
.end method

.method public maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "finishedReason",
            "responseInfo",
            "exception"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mInitialUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mAnnotations:Ljava/util/Collection;

    iget-object v3, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mRequestFinishedInfoListener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/chromium/net/impl/AndroidRequestFinishedInfoWrapper;->reportFinished(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/http/UrlRequest;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlRequestWrapper;->mBackend:Landroid/net/http/UrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlRequestWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/UrlRequest;)V

    return-void
.end method
