###### Class org.chromium.net.impl.AndroidNetworkExceptionWrapper (org.chromium.net.impl.AndroidNetworkExceptionWrapper)
.class public Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;
.super Lorg/chromium/net/NetworkException;
.source "AndroidNetworkExceptionWrapper.java"


# instance fields
.field public final mBackend:Landroid/net/http/NetworkException;


# direct methods
.method public constructor <init>(Landroid/net/http/NetworkException;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;-><init>(Landroid/net/http/NetworkException;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/http/NetworkException;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "expectQuicException"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/NetworkException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    if-nez p2, :cond_1a

    .line 25
    invoke-static {p1}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_1a

    .line 26
    :cond_12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/NetworkException;)I

    move-result v0

    return v0
.end method

.method public immediatelyRetryable()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/NetworkException;)Z

    move-result v0

    return v0
.end method
