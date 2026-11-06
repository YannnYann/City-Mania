###### Class org.chromium.net.impl.VersionSafeCallbacks$UploadDataProviderWrapper (org.chromium.net.impl.VersionSafeCallbacks$UploadDataProviderWrapper)
.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
.super Lorg/chromium/net/UploadDataProvider;
.source "VersionSafeCallbacks.java"


# instance fields
.field public final mWrappedProvider:Lorg/chromium/net/UploadDataProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UploadDataProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

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

    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

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

    .line 159
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
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

    .line 164
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/UploadDataProvider;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
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

    .line 169
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UploadDataProvider;->rewind(Lorg/chromium/net/UploadDataSink;)V

    return-void
.end method
