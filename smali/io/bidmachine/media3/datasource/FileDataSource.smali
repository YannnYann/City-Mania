###### Class io.bidmachine.media3.datasource.FileDataSource (io.bidmachine.media3.datasource.FileDataSource)
.class public final Lio/bidmachine/media3/datasource/FileDataSource;
.super Lio/bidmachine/media3/datasource/BaseDataSource;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field public bytesRemaining:J

.field public file:Ljava/io/RandomAccessFile;

.field public opened:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method public static openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/16 v0, 0x7d6

    .line 183
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_13} :catch_18

    return-object v1

    :catch_14
    move-exception p0

    goto :goto_21

    :catch_16
    move-exception v1

    goto :goto_27

    :catch_18
    move-exception p0

    .line 207
    new-instance v0, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 205
    :goto_21
    new-instance v1, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 185
    :goto_27
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 198
    new-instance p0, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/system/ErrnoException;

    if-eqz v2, :cond_52

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Landroid/system/ErrnoException;

    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EACCES:I

    if-ne v2, v3, :cond_52

    goto :goto_54

    :cond_52
    const/16 v0, 0x7d5

    .line 203
    :goto_54
    invoke-direct {p0, v1, v0}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p0

    .line 186
    :cond_58
    new-instance v0, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    .line 191
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 187
    const-string v2, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3ec

    invoke-direct {v0, p0, v1, v2}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 167
    :try_start_4
    iget-object v2, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_10

    .line 168
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
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

    .line 173
    :cond_10
    :goto_10
    iput-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 174
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_1b

    .line 175
    iput-boolean v1, p0, Lio/bidmachine/media3/datasource/FileDataSource;->opened:Z

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1b
    return-void

    .line 171
    :goto_1c
    :try_start_1c
    new-instance v3, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_c

    .line 173
    :goto_24
    iput-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 174
    iget-boolean v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_2f

    .line 175
    iput-boolean v1, p0, Lio/bidmachine/media3/datasource/FileDataSource;->opened:Z

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 178
    :cond_2f
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 110
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 111
    iput-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    .line 112
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferInitializing(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 113
    invoke-static {v0}, Lio/bidmachine/media3/datasource/FileDataSource;->openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 115
    :try_start_d
    iget-wide v1, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 117
    iget-wide v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_26

    :catch_24
    move-exception p1

    goto :goto_40

    :cond_26
    :goto_26
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_24

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_37

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->opened:Z

    .line 129
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 131
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 122
    :cond_37
    new-instance p1, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 119
    :goto_40
    new-instance v0, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_4
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 p1, -0x1

    return p1

    .line 143
    :cond_e
    :try_start_e
    iget-object v0, p0, Lio/bidmachine/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_2e

    if-lez p1, :cond_2d

    .line 149
    iget-wide p2, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lio/bidmachine/media3/datasource/FileDataSource;->bytesRemaining:J

    .line 150
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    :cond_2d
    return p1

    :catch_2e
    move-exception p1

    .line 145
    new-instance p2, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

###### Class io.bidmachine.media3.datasource.FileDataSource.FileDataSourceException (io.bidmachine.media3.datasource.FileDataSource$FileDataSourceException)
.class public Lio/bidmachine/media3/datasource/FileDataSource$FileDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
