###### Class org.chromium.net.impl.AndroidBidirectionalStreamCallbackWrapper (org.chromium.net.impl.AndroidBidirectionalStreamCallbackWrapper)
.class public Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;
.super Ljava/lang/Object;
.source "AndroidBidirectionalStreamCallbackWrapper.java"

# interfaces
.implements Landroid/net/http/BidirectionalStream$Callback;


# instance fields
.field public final mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

.field public mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;


# direct methods
.method public constructor <init>(Lorg/chromium/net/BidirectionalStream$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Callback is required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    return-void
.end method


# virtual methods
.method public onCanceled(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo"
        }
    .end annotation

    .line 125
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 127
    :try_start_6
    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v1, v2, p1}, Lorg/chromium/net/BidirectionalStream$Callback;->onCanceled(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_13

    .line 130
    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v1, v0, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    return-void

    :catchall_13
    move-exception v1

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v2, v0, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    .line 132
    throw v1
.end method

.method public onFailed(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo",
            "e"
        }
    .end annotation

    .line 108
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    .line 110
    invoke-static {p3}, Lorg/chromium/net/impl/CronetExceptionTranslationUtils;->translateCheckedAndroidCronetException(Ljava/lang/Exception;)Lorg/chromium/net/CronetException;

    move-result-object p2

    const/4 p3, 0x1

    .line 112
    :try_start_9
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/net/BidirectionalStream$Callback;->onFailed(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_16

    .line 115
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v0, p3, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    return-void

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v1, p3, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    .line 117
    throw v0
.end method

.method public onReadCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo",
            "byteBuffer",
            "endOfStream"
        }
    .end annotation

    .line 55
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {p2, v0, p1, p3, p4}, Lorg/chromium/net/BidirectionalStream$Callback;->onReadCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public onResponseHeadersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo"
        }
    .end annotation

    .line 44
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {p2, v0, p1}, Lorg/chromium/net/BidirectionalStream$Callback;->onResponseHeadersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public onResponseTrailersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HeaderBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo",
            "headerBlock"
        }
    .end annotation

    .line 76
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    .line 77
    new-instance p2, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;

    invoke-direct {p2, p3}, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper;-><init>(Landroid/net/http/HeaderBlock;)V

    .line 79
    iget-object p3, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {p3, v0, p1, p2}, Lorg/chromium/net/BidirectionalStream$Callback;->onResponseTrailersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlResponseInfo$HeaderBlock;)V

    return-void
.end method

.method public onStreamReady(Landroid/net/http/BidirectionalStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidirectionalStream"
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {p1, v0}, Lorg/chromium/net/BidirectionalStream$Callback;->onStreamReady(Lorg/chromium/net/BidirectionalStream;)V

    return-void
.end method

.method public onSucceeded(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo"
        }
    .end annotation

    .line 88
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 90
    :try_start_6
    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v1, v2, p1}, Lorg/chromium/net/BidirectionalStream$Callback;->onSucceeded(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_13

    .line 97
    iget-object v1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v1, v0, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    return-void

    :catchall_13
    move-exception v1

    iget-object v2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {v2, v0, p1, p2}, Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;->maybeReportMetrics(ILorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;Lorg/chromium/net/CronetException;)V

    .line 99
    throw v1
.end method

.method public onWriteCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bidirectionalStream",
            "urlResponseInfo",
            "byteBuffer",
            "endOfStream"
        }
    .end annotation

    .line 66
    invoke-static {p2}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mBackend:Lorg/chromium/net/BidirectionalStream$Callback;

    iget-object v0, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    invoke-virtual {p2, v0, p1, p3, p4}, Lorg/chromium/net/BidirectionalStream$Callback;->onWriteCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public setStream(Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidBidirectionalStreamCallbackWrapper;->mWrappedStream:Lorg/chromium/net/impl/AndroidBidirectionalStreamWrapper;

    return-void
.end method
