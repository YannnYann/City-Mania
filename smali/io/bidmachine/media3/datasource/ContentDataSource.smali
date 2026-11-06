###### Class io.bidmachine.media3.datasource.ContentDataSource (io.bidmachine.media3.datasource.ContentDataSource)
.class public final Lio/bidmachine/media3/datasource/ContentDataSource;
.super Lio/bidmachine/media3/datasource/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field public assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public bytesRemaining:J

.field public inputStream:Ljava/io/FileInputStream;

.field public opened:Z

.field public final resolver:Landroid/content/ContentResolver;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 207
    :try_start_6
    iget-object v3, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_12

    .line 208
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_10
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v3

    goto :goto_44

    :catch_10
    move-exception v3

    goto :goto_3e

    .line 213
    :cond_12
    :goto_12
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 215
    :try_start_14
    iget-object v3, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_20

    .line 216
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_1e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v1

    goto :goto_32

    :catch_1e
    move-exception v3

    goto :goto_2c

    .line 221
    :cond_20
    :goto_20
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 222
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2b

    .line 223
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2b
    return-void

    .line 219
    :goto_2c
    :try_start_2c
    new-instance v4, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_1c

    .line 221
    :goto_32
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 222
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3d

    .line 223
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 226
    :cond_3d
    throw v1

    .line 211
    :goto_3e
    :try_start_3e
    new-instance v4, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_e

    .line 213
    :goto_44
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 215
    :try_start_46
    iget-object v4, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_52

    .line 216
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_50
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v1

    goto :goto_64

    :catch_50
    move-exception v3

    goto :goto_5e

    .line 221
    :cond_52
    :goto_52
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 222
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5d

    .line 223
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 227
    :cond_5d
    throw v3

    .line 219
    :goto_5e
    :try_start_5e
    new-instance v4, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_4e

    .line 221
    :goto_64
    iput-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 222
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6f

    .line 223
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 226
    :cond_6f
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 199
    iget-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x7d0

    .line 78
    :try_start_6
    iget-object v3, v0, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v3

    .line 79
    iput-object v3, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    .line 81
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferInitializing(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 84
    const-string v4, "content"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    .line 85
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v6, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    .line 89
    invoke-virtual {v6, v3, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    goto :goto_3f

    :catch_31
    move-exception v0

    goto/16 :goto_f3

    :catch_34
    move-exception v0

    goto/16 :goto_ff

    .line 93
    :cond_37
    iget-object v4, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v6, "r"

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 95
    :goto_3f
    iput-object v4, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_d7

    .line 103
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 104
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 105
    iput-object v3, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    const/16 v11, 0x7d8

    const/4 v12, 0x0

    if-eqz v10, :cond_68

    .line 113
    iget-wide v13, v0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v13, v13, v6

    if-gtz v13, :cond_62

    goto :goto_68

    .line 115
    :cond_62
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 118
    :cond_68
    :goto_68
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    move-wide v15, v6

    .line 119
    iget-wide v5, v0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    add-long/2addr v5, v13

    .line 120
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v5, v13

    .line 122
    iget-wide v13, v0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v7, v5, v13

    if-nez v7, :cond_d1

    const-wide/16 v13, 0x0

    if-nez v10, :cond_a0

    .line 131
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long v7, v5, v13

    if-nez v7, :cond_8e

    .line 134
    iput-wide v8, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    goto :goto_a8

    .line 136
    :cond_8e
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    sub-long/2addr v5, v15

    iput-wide v5, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v5, v13

    if-ltz v3, :cond_9a

    goto :goto_a8

    .line 139
    :cond_9a
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_a0
    sub-long v6, v15, v5

    .line 144
    iput-wide v6, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J
    :try_end_a4
    .catch Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_6 .. :try_end_a4} :catch_34
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a4} :catch_31

    cmp-long v3, v6, v13

    if-ltz v3, :cond_cb

    .line 160
    :goto_a8
    iget-wide v2, v0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    cmp-long v5, v2, v8

    if-eqz v5, :cond_bb

    .line 162
    iget-wide v5, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v7, v5, v8

    if-nez v7, :cond_b5

    goto :goto_b9

    :cond_b5
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_b9
    iput-wide v2, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    :cond_bb
    const/4 v4, 0x1

    .line 164
    iput-boolean v4, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->opened:Z

    .line 165
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 166
    iget-wide v2, v0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_c8

    return-wide v2

    :cond_c8
    iget-wide v2, v1, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    return-wide v2

    .line 146
    :cond_cb
    :try_start_cb
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 125
    :cond_d1
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 98
    :cond_d7
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v2}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_f3
    .catch Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_cb .. :try_end_f3} :catch_34
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_f3} :catch_31

    .line 153
    :goto_f3
    new-instance v3, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 155
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_fb

    const/16 v2, 0x7d5

    .line 157
    :cond_fb
    invoke-direct {v3, v0, v2}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v3

    .line 151
    :goto_ff
    throw v0
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_4
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

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

    .line 180
    :try_start_16
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 181
    :goto_1b
    iget-object v0, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_38

    if-ne p1, v3, :cond_2a

    return v3

    .line 189
    :cond_2a
    iget-wide p2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_34

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 190
    iput-wide p2, p0, Lio/bidmachine/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 192
    :cond_34
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_38
    move-exception p1

    .line 183
    new-instance p2, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p2
.end method

###### Class io.bidmachine.media3.datasource.ContentDataSource.ContentDataSourceException (io.bidmachine.media3.datasource.ContentDataSource$ContentDataSourceException)
.class public Lio/bidmachine/media3/datasource/ContentDataSource$ContentDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/ContentDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;I)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
