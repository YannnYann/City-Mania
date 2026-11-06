###### Class io.bidmachine.media3.datasource.HttpDataSource$HttpDataSourceException (io.bidmachine.media3.datasource.HttpDataSource$HttpDataSourceException)
.class public Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "HttpDataSource.java"


# instance fields
.field public final dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSpec;II)V
    .registers 4

    .line 267
    invoke-static {p2, p3}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p2

    invoke-direct {p0, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(I)V

    .line 268
    iput-object p1, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 269
    iput p3, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V
    .registers 5

    .line 329
    invoke-static {p3, p4}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 330
    iput-object p2, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 331
    iput p4, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;II)V
    .registers 5

    .line 298
    invoke-static {p3, p4}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;I)V

    .line 299
    iput-object p2, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 300
    iput p4, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V
    .registers 6

    .line 363
    invoke-static {p4, p5}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 364
    iput-object p3, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 365
    iput p5, p0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public static assignErrorCode(II)I
    .registers 3

    .line 0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/16 p0, 0x7d1

    :cond_9
    return p0
.end method

.method public static createForIOException(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;I)Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
    .registers 6

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 223
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_d

    const/16 v0, 0x7d2

    goto :goto_26

    .line 225
    :cond_d
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_14

    const/16 v0, 0x3ec

    goto :goto_26

    :cond_14
    if-eqz v0, :cond_24

    .line 231
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_26

    :cond_24
    const/16 v0, 0x7d1

    :goto_26
    if-ne v0, v2, :cond_2e

    .line 237
    new-instance p2, Lio/bidmachine/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {p2, p0, p1}, Lio/bidmachine/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;)V

    return-object p2

    .line 238
    :cond_2e
    new-instance v1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, p0, p1, v0, p2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    return-object v1
.end method

###### Class io.bidmachine.media3.datasource.HttpDataSource$CleartextNotPermittedException (io.bidmachine.media3.datasource.HttpDataSource$CleartextNotPermittedException)
.class public final Lio/bidmachine/media3/datasource/HttpDataSource$CleartextNotPermittedException;
.super Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;)V
    .registers 9

    const/16 v4, 0x7d7

    const/4 v5, 0x1

    .line 386
    const-string v1, "Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    return-void
.end method
