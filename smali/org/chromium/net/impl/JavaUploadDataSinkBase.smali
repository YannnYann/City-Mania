###### Class org.chromium.net.impl.JavaUploadDataSinkBase (org.chromium.net.impl.JavaUploadDataSinkBase)
.class public abstract Lorg/chromium/net/impl/JavaUploadDataSinkBase;
.super Lorg/chromium/net/UploadDataSink;
.source "JavaUploadDataSinkBase.java"


# instance fields
.field public mBuffer:Ljava/nio/ByteBuffer;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mReadCount:I

.field public final mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mTotalBytes:J

.field public final mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

.field public final mUserUploadExecutor:Ljava/util/concurrent/Executor;

.field public mWrittenBytes:J


# direct methods
.method public static synthetic $r8$lambda$A9-kPLqeDYWQiy-PsztmQeDMg3o(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$startRead$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$DbE3blPi6UGIsevjBlzXKVCuX1Y(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$onReadSucceeded$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaUploadDataSinkBase#executeOnExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " running callback"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p0

    .line 192
    :try_start_1a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 193
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    if-eqz p0, :cond_2e

    .line 187
    :try_start_26
    invoke-virtual {p0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p1
.end method

.method public static synthetic $r8$lambda$THk-oE5eTe5Y90I_YQZikeVqrI4(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$executeOnUploadExecutor$5(Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZABnqKHUhxos_emnBkBH8Agmjts(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$readFromProvider$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zs_uXTVqIwC-sg8cGt-9I-Wb3F8(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$start$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$r9dTVjHf2TChuPiPA7KVdo-6VVo(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->lambda$readFromProvider$2()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/UploadDataProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "userExecutor",
            "executor",
            "provider"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/chromium/net/UploadDataSink;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUserUploadExecutor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance p1, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-direct {p1, p3}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;-><init>(Lorg/chromium/net/UploadDataProvider;)V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    return-void
.end method


# virtual methods
.method public final executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaUploadDataSinkBase#executeOnExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 185
    :try_start_15
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    if-eqz v0, :cond_24

    .line 195
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    if-eqz v0, :cond_30

    .line 183
    :try_start_28
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p1
.end method

.method public final executeOnUploadExecutor(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "name"
        }
    .end annotation

    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUploadDataSinkBase#executeOnUploadExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0
    :try_end_15
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_15} :catch_25

    .line 209
    :try_start_15
    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUserUploadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_27

    if-eqz v0, :cond_36

    .line 219
    :try_start_21
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_24
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    goto :goto_33

    :catchall_27
    move-exception p1

    if-eqz v0, :cond_32

    .line 206
    :try_start_2a
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p2

    :try_start_2f
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw p1
    :try_end_33
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2f .. :try_end_33} :catch_25

    .line 220
    :goto_33
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    :cond_36
    return-void
.end method

.method public abstract finish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation
.end method

.method public getReadCount()I
    .registers 2

    .line 267
    iget v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mReadCount:I

    return v0
.end method

.method public abstract getUploadErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation
.end method

.method public abstract initializeRead()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract initializeStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalBytes"
        }
    .end annotation
.end method

.method public final synthetic lambda$executeOnUploadExecutor$5(Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 5

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet JavaUploadDataSinkBase#executeOnUploadExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " running callback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p1

    .line 216
    :try_start_1a
    invoke-virtual {p0, p2}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->getUploadErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_27

    if-eqz p1, :cond_26

    .line 217
    invoke-virtual {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_26
    return-void

    :catchall_27
    move-exception p2

    if-eqz p1, :cond_32

    .line 211
    :try_start_2a
    invoke-virtual {p1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw p2
.end method

.method public final synthetic lambda$onReadSucceeded$0(Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 87
    iget-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const-string v5, "Read upload data length %d exceeds expected length %d"

    if-eqz v4, :cond_49

    iget-wide v6, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mWrittenBytes:J

    sub-long/2addr v0, v6

    iget-object v4, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v6, v4

    cmp-long v0, v0, v6

    if-gez v0, :cond_49

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mWrittenBytes:J

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-static {p1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void

    .line 98
    :cond_49
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_5e

    if-nez p1, :cond_5e

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bytes read can\'t be zero except for last chunk!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void

    .line 112
    :cond_5e
    iget-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mWrittenBytes:J

    iget-object v4, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processSuccessfulRead(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mWrittenBytes:J

    .line 114
    iget-wide v6, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    cmp-long v4, v0, v6

    if-ltz v4, :cond_a8

    cmp-long v4, v6, v2

    if-nez v4, :cond_77

    if-nez p1, :cond_77

    goto :goto_a8

    :cond_77
    cmp-long p1, v6, v2

    if-nez p1, :cond_7f

    .line 119
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->finish()V

    return-void

    :cond_7f
    cmp-long p1, v6, v0

    if-nez p1, :cond_87

    .line 121
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->finish()V

    return-void

    .line 125
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mWrittenBytes:J

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-static {p1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void

    .line 115
    :cond_a8
    :goto_a8
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 116
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 117
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->readFromProvider()V

    return-void
.end method

.method public final synthetic lambda$readFromProvider$2()V
    .registers 2

    .line 176
    iget v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mReadCount:I

    return-void
.end method

.method public final synthetic lambda$readFromProvider$3()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda6;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$start$6(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 236
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->finish()V

    return-void

    :cond_12
    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_26

    const-wide/16 v4, 0x2000

    cmp-long v2, v0, v4

    if-gez v2, :cond_26

    long-to-int v0, v0

    add-int/2addr v0, v3

    .line 243
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_2e

    :cond_26
    const/16 v0, 0x2000

    .line 245
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mBuffer:Ljava/nio/ByteBuffer;

    .line 248
    :goto_2e
    iget-wide v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mTotalBytes:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->initializeStart(J)V

    if-eqz p1, :cond_39

    .line 251
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->startRead()V

    return-void

    .line 253
    :cond_39
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 254
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    invoke-virtual {p1, p0}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->rewind(Lorg/chromium/net/UploadDataSink;)V

    return-void
.end method

.method public final synthetic lambda$startRead$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->initializeRead()V

    .line 162
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 163
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->readFromProvider()V

    return-void
.end method

.method public onReadError(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReadSucceeded(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "finalChunk"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    new-instance v0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V

    .line 132
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->getErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "onReadSucceeded"

    invoke-virtual {p0, p1, v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadSucceeded() called when not awaiting a read result; in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRewindError(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRewindSucceeded()V
    .registers 5

    .line 137
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    invoke-virtual {p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->startRead()V

    return-void

    .line 140
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->mSinkState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewindSucceeded() called when not awaiting a rewind; in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract processSuccessfulRead(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processUploadError(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public final readFromProvider()V
    .registers 3

    .line 169
    new-instance v0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda5;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    const-string v1, "readFromProvider"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->executeOnUploadExecutor(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public start(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "firstTime"
        }
    .end annotation

    .line 232
    new-instance v0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V

    const-string p1, "start"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->executeOnUploadExecutor(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public final startRead()V
    .registers 3

    .line 158
    new-instance v0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda3;-><init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    .line 159
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->getErrorSettingRunnable(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "startRead"

    .line 158
    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->executeOnExecutor(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase.AnonymousClass1 (org.chromium.net.impl.JavaUploadDataSinkBase$1)
.class public Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;
.super Ljava/lang/Object;
.source "JavaUploadDataSinkBase.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaUploadDataSinkBase;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/UploadDataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

.field public final synthetic val$userExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$userExecutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;->val$userExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;->this$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;->val$userExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 67
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$1;->this$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->processUploadError(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda0 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iput-boolean p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iget-boolean v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$Zs_uXTVqIwC-sg8cGt-9I-Wb3F8(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda1 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iput-boolean p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iget-boolean v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$DbE3blPi6UGIsevjBlzXKVCuX1Y(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Z)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda2 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$2:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda2;->f$2:Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;

    invoke-static {v0, v1, v2}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$THk-oE5eTe5Y90I_YQZikeVqrI4(Lorg/chromium/net/impl/JavaUploadDataSinkBase;Ljava/lang/String;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda3 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda3;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$A9-kPLqeDYWQiy-PsztmQeDMg3o(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda4 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda5 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$ZABnqKHUhxos_emnBkBH8Agmjts(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    return-void
.end method

###### Class org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda6 (org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda6;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUploadDataSinkBase$$ExternalSyntheticLambda6;->f$0:Lorg/chromium/net/impl/JavaUploadDataSinkBase;

    invoke-static {v0}, Lorg/chromium/net/impl/JavaUploadDataSinkBase;->$r8$lambda$r9dTVjHf2TChuPiPA7KVdo-6VVo(Lorg/chromium/net/impl/JavaUploadDataSinkBase;)V

    return-void
.end method
