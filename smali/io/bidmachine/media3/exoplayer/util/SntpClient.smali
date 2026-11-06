###### Class io.bidmachine.media3.exoplayer.util.SntpClient (io.bidmachine.media3.exoplayer.util.SntpClient)
.class public final Lio/bidmachine/media3/exoplayer/util/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;,
        Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeLoadable;,
        Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;
    }
.end annotation


# static fields
.field public static elapsedRealtimeOffsetMs:J = 0x0L

.field public static isInitialized:Z = false

.field public static lastUpdateElapsedRealtime:J = -0x7fffffffffffffffL

.field public static final loaderLock:Ljava/lang/Object;

.field public static maxElapsedTimeUntilUpdateMs:J = -0x7fffffffffffffffL

.field public static ntpHost:Ljava/lang/String; = "time.android.com"

.field public static timeoutMs:I = 0x3e8

.field public static final valueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->loaderLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 44
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->loaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 44
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$300()Z
    .registers 1

    .line 44
    sget-boolean v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    return v0
.end method

.method public static synthetic access$302(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    return p0
.end method

.method public static synthetic access$400()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->loadNtpTimeOffsetMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$502(J)J
    .registers 2

    .line 44
    sput-wide p0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    return-wide p0
.end method

.method public static synthetic access$602(J)J
    .registers 2

    .line 44
    sput-wide p0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->elapsedRealtimeOffsetMs:J

    return-wide p0
.end method

.method public static checkValidServerReply(BBIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4d

    const/4 p0, 0x4

    if-eq p1, p0, :cond_21

    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    goto :goto_21

    .line 359
    :cond_a
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SNTP: Untrusted mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    if-eqz p2, :cond_36

    const/16 p0, 0xf

    if-gt p2, p0, :cond_36

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_2e

    return-void

    .line 365
    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Zero transmitTime"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 362
    :cond_36
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SNTP: Untrusted stratum: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Unsynchronized server"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getElapsedRealtimeOffsetMs()J
    .registers 3

    .line 199
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    sget-boolean v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    if-eqz v1, :cond_c

    sget-wide v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->elapsedRealtimeOffsetMs:J

    goto :goto_11

    :catchall_a
    move-exception v1

    goto :goto_13

    :cond_c
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_11
    monitor-exit v0

    return-wide v1

    .line 201
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_a

    throw v1
.end method

.method public static getNtpHost()Ljava/lang/String;
    .registers 2

    .line 109
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->ntpHost:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getTimeoutMs()I
    .registers 2

    .line 135
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    sget v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->timeoutMs:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static initialize(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;)V
    .registers 4

    .line 213
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    .line 215
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;->onInitialized()V

    :cond_b
    return-void

    :cond_c
    if-nez p0, :cond_15

    .line 220
    new-instance p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string v0, "SntpClient"

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 222
    :cond_15
    new-instance v0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeLoadable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeLoadable;-><init>(Lio/bidmachine/media3/exoplayer/util/SntpClient$1;)V

    new-instance v1, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;-><init>(Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return-void
.end method

.method public static isInitialized()Z
    .registers 5

    .line 182
    sget-object v0, Lio/bidmachine/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    sget-wide v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    sget-wide v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lio/bidmachine/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    sub-long/2addr v1, v3

    .line 186
    sget-boolean v3, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    if-eqz v3, :cond_29

    sget-wide v3, Lio/bidmachine/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :catchall_27
    move-exception v1

    goto :goto_30

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    sput-boolean v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    .line 188
    :cond_2c
    sget-boolean v1, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized:Z

    monitor-exit v0

    return v1

    .line 189
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_27

    throw v1
.end method

.method public static loadNtpTimeOffsetMs()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 228
    :try_start_5
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->getTimeoutMs()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 232
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->getNtpHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 233
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v5, v0

    move v6, v4

    move v7, v6

    :goto_1a
    if-ge v6, v3, :cond_8f

    aget-object v0, v2, v6

    const/16 v8, 0x30

    .line 234
    new-array v9, v8, [B

    .line 235
    new-instance v10, Ljava/net/DatagramPacket;

    const/16 v11, 0x7b

    invoke-direct {v10, v9, v8, v0, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v0, 0x1b

    .line 239
    aput-byte v0, v9, v4

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v0, 0x28

    .line 244
    invoke-static {v9, v0, v11, v12}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->writeTimestamp([BIJ)V

    .line 246
    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 249
    new-instance v10, Ljava/net/DatagramPacket;

    invoke-direct {v10, v9, v8}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_7a

    .line 251
    :try_start_42
    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_45
    .catch Ljava/net/SocketTimeoutException; {:try_start_42 .. :try_end_45} :catch_7d
    .catchall {:try_start_42 .. :try_end_45} :catchall_7a

    .line 266
    :try_start_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v5, v2, v13

    add-long/2addr v11, v5

    .line 270
    aget-byte v4, v9, v4

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    const/4 v6, 0x1

    .line 272
    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x18

    .line 273
    invoke-static {v9, v7}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v7

    const/16 v10, 0x20

    .line 274
    invoke-static {v9, v10}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v13

    .line 275
    invoke-static {v9, v0}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v9

    .line 278
    invoke-static {v5, v4, v6, v9, v10}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long/2addr v13, v7

    sub-long/2addr v9, v11

    add-long/2addr v13, v9

    const-wide/16 v4, 0x2

    .line 288
    div-long/2addr v13, v4
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_7a

    add-long/2addr v11, v13

    sub-long/2addr v11, v2

    .line 299
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-wide v11

    :catchall_7a
    move-exception v0

    move-object v2, v0

    goto :goto_96

    :catch_7d
    move-exception v0

    if-nez v5, :cond_82

    move-object v5, v0

    goto :goto_85

    .line 257
    :cond_82
    :try_start_82
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_85
    add-int/lit8 v0, v7, 0x1

    const/16 v8, 0xa

    if-ge v7, v8, :cond_8f

    add-int/lit8 v6, v6, 0x1

    move v7, v0

    goto :goto_1a

    .line 298
    :cond_8f
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketTimeoutException;

    throw v0
    :try_end_96
    .catchall {:try_start_82 .. :try_end_96} :catchall_7a

    .line 227
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw v2
.end method

.method public static read32([BI)J
    .registers 7

    .line 339
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 340
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 341
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    .line 342
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0x80

    const/16 v3, 0x80

    if-ne p1, v3, :cond_18

    and-int/lit8 p1, v0, 0x7f

    add-int/lit16 v0, p1, 0x80

    :cond_18
    and-int/lit16 p1, v1, 0x80

    if-ne p1, v3, :cond_20

    and-int/lit8 p1, v1, 0x7f

    add-int/lit16 v1, p1, 0x80

    :cond_20
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_28

    and-int/lit8 p1, v2, 0x7f

    add-int/lit16 v2, p1, 0x80

    :cond_28
    and-int/lit16 p1, p0, 0x80

    if-ne p1, v3, :cond_2f

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v3

    :cond_2f
    int-to-long v3, v0

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    int-to-long v0, v1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method

.method public static readTimestamp([BI)J
    .registers 7

    .line 303
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    .line 304
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->read32([BI)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    cmp-long v4, p0, v2

    if-nez v4, :cond_15

    return-wide v2

    :cond_15
    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p0, v2

    const-wide v2, 0x100000000L

    .line 309
    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static writeTimestamp([BIJ)V
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_d

    add-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    .line 315
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_d
    const-wide/16 v0, 0x3e8

    .line 319
    div-long v2, p2, v0

    mul-long v4, v2, v0

    sub-long/2addr p2, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 324
    aput-byte v6, p0, p1

    add-int/lit8 v6, p1, 0x2

    const/16 v7, 0x10

    shr-long v8, v2, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 325
    aput-byte v8, p0, v4

    add-int/lit8 v4, p1, 0x3

    const/16 v8, 0x8

    shr-long v9, v2, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 326
    aput-byte v9, p0, v6

    add-int/lit8 v6, p1, 0x4

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 327
    aput-byte v2, p0, v4

    const-wide v2, 0x100000000L

    mul-long/2addr p2, v2

    .line 329
    div-long/2addr p2, v0

    add-int/lit8 v0, p1, 0x5

    shr-long v1, p2, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 331
    aput-byte v1, p0, v6

    add-int/lit8 v1, p1, 0x6

    shr-long v2, p2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 332
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x7

    shr-long/2addr p2, v8

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 333
    aput-byte p2, p0, v1

    .line 335
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.util.SntpClient.AnonymousClass1 (io.bidmachine.media3.exoplayer.util.SntpClient$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/util/SntpClient$1;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.util.SntpClient.InitializationCallback (io.bidmachine.media3.exoplayer.util.SntpClient$InitializationCallback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializationCallback"
.end annotation


# virtual methods
.method public abstract onInitializationFailed(Ljava/io/IOException;)V
.end method

.method public abstract onInitialized()V
.end method

###### Class io.bidmachine.media3.exoplayer.util.SntpClient.NtpTimeCallback (io.bidmachine.media3.exoplayer.util.SntpClient$NtpTimeCallback)
.class public final Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NtpTimeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;",
        ">;"
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;)V
    .registers 2

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;->callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 403
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;->callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;

    if-eqz p1, :cond_1f

    .line 404
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 407
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;->callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    return-void

    .line 409
    :cond_1a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;->callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;->onInitialized()V

    :cond_1f
    return-void
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 427
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeCallback;->callback:Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;

    if-eqz p1, :cond_7

    .line 428
    invoke-interface {p1, p6}, Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    .line 430
    :cond_7
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.util.SntpClient.NtpTimeLoadable (io.bidmachine.media3.exoplayer.util.SntpClient$NtpTimeLoadable)
.class public final Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeLoadable;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NtpTimeLoadable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/util/SntpClient$1;)V
    .registers 2

    .line 369
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/util/SntpClient$NtpTimeLoadable;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 1

    .line 0
    return-void
.end method

.method public load()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 378
    :try_start_5
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_13

    .line 379
    :try_start_a
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$300()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 380
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v1

    goto :goto_37

    :catchall_15
    move-exception v2

    goto :goto_35

    .line 382
    :cond_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_15

    .line 383
    :try_start_18
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$400()J

    move-result-wide v1

    .line 384
    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_13

    .line 385
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$502(J)J

    .line 386
    invoke-static {v1, v2}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$602(J)J

    const/4 v1, 0x1

    .line 387
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->access$302(Z)Z

    .line 388
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_32

    .line 389
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_13

    return-void

    :catchall_32
    move-exception v1

    .line 388
    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_13

    .line 382
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_15

    :try_start_36
    throw v2

    .line 389
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_13

    throw v1
.end method
