###### Class org.chromium.net.impl.AndroidQuicExceptionWrapper (org.chromium.net.impl.AndroidQuicExceptionWrapper)
.class public Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;
.super Lorg/chromium/net/QuicException;
.source "AndroidQuicExceptionWrapper.java"


# instance fields
.field public final mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;


# direct methods
.method public constructor <init>(Landroid/net/http/QuicException;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/QuicException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    new-instance v0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;-><init>(Landroid/net/http/NetworkException;Z)V

    iput-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    return-void
.end method


# virtual methods
.method public getConnectionCloseSource()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getCronetInternalErrorCode()I
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 31
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getQuicDetailedErrorCode()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public immediatelyRetryable()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
