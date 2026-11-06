###### Class org.chromium.net.impl.AndroidUploadDataSinkWrapper (org.chromium.net.impl.AndroidUploadDataSinkWrapper)
.class public Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;
.super Lorg/chromium/net/UploadDataSink;
.source "AndroidUploadDataSinkWrapper.java"


# instance fields
.field public final mBackend:Landroid/net/http/UploadDataSink;


# direct methods
.method public constructor <init>(Landroid/net/http/UploadDataSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/chromium/net/UploadDataSink;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    return-void
.end method


# virtual methods
.method public onReadError(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/http/UploadDataSink;Ljava/lang/Exception;)V

    return-void
.end method

.method public onReadSucceeded(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalChunk"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/UploadDataSink;Z)V

    return-void
.end method

.method public onRewindError(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-static {v0, p1}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/UploadDataSink;Ljava/lang/Exception;)V

    return-void
.end method

.method public onRewindSucceeded()V
    .registers 2

    .line 32
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/UploadDataSink;)V

    return-void
.end method
