###### Class org.chromium.net.impl.AndroidBidirectionalStreamWrapper (org.chromium.net.impl.AndroidBidirectionalStreamWrapper)
.class public Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;
.super Lorg/chromium/net/ExperimentalBidirectionalStream;
.source "AndroidBidirectionalStreamWrapper.java"


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

.field public final mBackend:Landroid/net/http/BidirectionalStream;

.field public final mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

.field public final mInitialUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/BidirectionalStream;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "engine",
            "url",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/BidirectionalStream;",
            "Lorg/chromium/net/impl/AndroidHttpEngineWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/chromium/net/ExperimentalBidirectionalStream;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    .line 33
    iput-object p2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    .line 34
    iput-object p3, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mInitialUrl:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mAnnotations:Ljava/util/Collection;

    return-void
.end method

.method public static createAndAddToCallback(Landroid/net/http/BidirectionalStream;Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;)Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;
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
            "callback",
            "engine",
            "url",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/BidirectionalStream;",
            "Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;",
            "Lorg/chromium/net/impl/AndroidHttpEngineWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;-><init>(Landroid/net/http/BidirectionalStream;Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/lang/String;Ljava/util/Collection;)V

    .line 83
    invoke-virtual {p1, v0}, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->setStream(Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/BidirectionalStream;)V

    return-void
.end method

.method public flush()V
    .registers 2

    .line 55
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/http/BidirectionalStream;)V

    return-void
.end method

.method public isDone()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/BidirectionalStream;)Z

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

    .line 98
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mEngine:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mInitialUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mAnnotations:Ljava/util/Collection;

    const/4 v3, 0x0

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

    .line 45
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/BidirectionalStream;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/http/BidirectionalStream;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "endOfStream"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->mBackend:Landroid/net/http/BidirectionalStream;

    invoke-static {v0, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/http/BidirectionalStream;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method
