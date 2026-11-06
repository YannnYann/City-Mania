###### Class io.bidmachine.media3.datasource.AssetDataSource (io.bidmachine.media3.datasource.AssetDataSource)
.class public final Lio/bidmachine/media3/datasource/AssetDataSource;
.super Lio/bidmachine/media3/datasource/BaseDataSource;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field public final assetManager:Landroid/content/res/AssetManager;

.field public bytesRemaining:J

.field public inputStream:Ljava/io/InputStream;

.field public opened:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 157
    :try_start_4
    iget-object v2, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_10

    .line 158
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_e
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception v2

    goto :goto_24

    :catch_e
    move-exception v2

    goto :goto_1c

    .line 163
    :cond_10
    :goto_10
    iput-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 164
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->opened:Z

    if-eqz v0, :cond_1b

    .line 165
    iput-boolean v1, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->opened:Z

    .line 166
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1b
    return-void

    .line 161
    :goto_1c
    :try_start_1c
    new-instance v3, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_c

    .line 163
    :goto_24
    iput-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 164
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2f

    .line 165
    iput-boolean v1, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->opened:Z

    .line 166
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 168
    :cond_2f
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 150
    iget-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    const/16 v1, 0xf

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :catch_1e
    move-exception p1

    goto :goto_73

    :catch_20
    move-exception p1

    goto :goto_82

    .line 82
    :cond_22
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferInitializing(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 86
    iget-object v1, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 87
    iget-wide v3, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 88
    iget-wide v3, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_6a

    .line 94
    iget-wide v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_50

    .line 95
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    goto :goto_62

    .line 97
    :cond_50
    iget-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v0, v5

    if-nez v0, :cond_62

    .line 102
    iput-wide v3, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J
    :try_end_62
    .catch Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException; {:try_start_0 .. :try_end_62} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_1e

    .line 115
    :cond_62
    :goto_62
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->opened:Z

    .line 116
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 117
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 91
    :cond_6a
    :try_start_6a
    new-instance p1, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/4 v0, 0x0

    const/16 v1, 0x7d8

    invoke-direct {p1, v0, v1}, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
    :try_end_73
    .catch Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException; {:try_start_6a .. :try_end_73} :catch_20
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_1e

    .line 108
    :goto_73
    new-instance v0, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;

    .line 110
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_7c

    const/16 v1, 0x7d5

    goto :goto_7e

    :cond_7c
    const/16 v1, 0x7d0

    .line 112
    :goto_7e
    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 106
    :goto_82
    throw p1
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_4
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    :cond_e
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v6, p3

    .line 131
    :try_start_16
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 132
    :goto_1b
    iget-object v0, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_38

    if-ne p1, v3, :cond_2a

    return v3

    .line 140
    :cond_2a
    iget-wide p2, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_34

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 141
    iput-wide p2, p0, Lio/bidmachine/media3/datasource/AssetDataSource;->bytesRemaining:J

    .line 143
    :cond_34
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_38
    move-exception p1

    .line 134
    new-instance p2, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

###### Class io.bidmachine.media3.datasource.AssetDataSource.AssetDataSourceException (io.bidmachine.media3.datasource.AssetDataSource$AssetDataSourceException)
.class public final Lio/bidmachine/media3/datasource/AssetDataSource$AssetDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/AssetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
