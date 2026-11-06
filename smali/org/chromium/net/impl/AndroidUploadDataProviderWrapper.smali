###### Class org.chromium.net.impl.AndroidUploadDataProviderWrapper (org.chromium.net.impl.AndroidUploadDataProviderWrapper)
.class public Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;
.super Landroid/net/http/UploadDataProvider;
.source "AndroidUploadDataProviderWrapper.java"


# instance fields
.field public final mBackend:Lorg/chromium/net/UploadDataProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UploadDataProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/net/http/UploadDataProvider;-><init>()V

    .line 22
    const-string v0, "Invalid UploadDataProvider."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;->mBackend:Lorg/chromium/net/UploadDataProvider;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;->mBackend:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->close()V

    return-void
.end method

.method public getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;->mBackend:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Landroid/net/http/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uploadDataSink",
            "byteBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;-><init>(Landroid/net/http/UploadDataSink;)V

    .line 34
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;->mBackend:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {p1, v0, p2}, Lorg/chromium/net/UploadDataProvider;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public rewind(Landroid/net/http/UploadDataSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadDataSink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;-><init>(Landroid/net/http/UploadDataSink;)V

    .line 40
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidUploadDataProviderWrapper;->mBackend:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataProvider;->rewind(Lorg/chromium/net/UploadDataSink;)V

    return-void
.end method
