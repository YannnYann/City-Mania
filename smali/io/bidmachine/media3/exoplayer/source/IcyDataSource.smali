###### Class io.bidmachine.media3.exoplayer.source.IcyDataSource (io.bidmachine.media3.exoplayer.source.IcyDataSource)
.class public final Lio/bidmachine/media3/exoplayer/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Lio/bidmachine/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field public bytesUntilMetadata:I

.field public final listener:Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;

.field public final metadataIntervalBytes:I

.field public final metadataLengthByteHolder:[B

.field public final upstream:Lio/bidmachine/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;ILio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 62
    :goto_9
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 63
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    .line 64
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    .line 65
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->listener:Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;

    .line 66
    new-array p1, v0, [B

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 67
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    return-void
.end method


# virtual methods
.method public addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 3

    .line 72
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 2

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 2

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_11

    .line 84
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_11

    :cond_10
    return v1

    .line 90
    :cond_11
    :goto_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_24

    .line 92
    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    :cond_24
    return p1
.end method

.method public final readMetadata()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v2

    .line 125
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19

    return v3

    .line 132
    :cond_19
    new-array v4, v0, [B

    move v5, v0

    move v6, v2

    :goto_1d
    if-lez v5, :cond_2b

    .line 134
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->upstream:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v7, v4, v6, v5}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_28

    return v2

    :cond_28
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_1d

    :cond_2b
    :goto_2b
    if-lez v0, :cond_36

    add-int/lit8 v1, v0, -0x1

    .line 143
    aget-byte v1, v4, v1

    if-nez v1, :cond_36

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_36
    if-lez v0, :cond_42

    .line 148
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;->listener:Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;

    new-instance v2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v4, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;->onIcyMetadata(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    :cond_42
    return v3
.end method

###### Class io.bidmachine.media3.exoplayer.source.IcyDataSource.Listener (io.bidmachine.media3.exoplayer.source.IcyDataSource$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;
.super Ljava/lang/Object;
.source "IcyDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/IcyDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onIcyMetadata(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
.end method
