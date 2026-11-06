###### Class io.bidmachine.media3.common.util.Log (io.bidmachine.media3.common.util.Log)
.class public final Lio/bidmachine/media3/common/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/Log$Logger;
    }
.end annotation


# static fields
.field public static final lock:Ljava/lang/Object;

.field public static logLevel:I = 0x0

.field public static logStackTraces:Z = true

.field public static logger:Lio/bidmachine/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 141
    sget-object v0, Lio/bidmachine/media3/common/util/Log$Logger;->DEFAULT:Lio/bidmachine/media3/common/util/Log$Logger;

    sput-object v0, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    return-void
.end method

.method public static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 352
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 195
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    if-nez v1, :cond_10

    .line 197
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Lio/bidmachine/media3/common/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 199
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 288
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_11

    .line 290
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Lio/bidmachine/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 292
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 304
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_10

    .line 306
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Lio/bidmachine/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 308
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_4
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_7
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 338
    const-string p0, "UnknownHostException (no network)"

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_2f

    .line 339
    :cond_13
    sget-boolean v1, Lio/bidmachine/media3/common/util/Log;->logStackTraces:Z

    if-nez v1, :cond_1d

    .line 340
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 342
    :cond_1d
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\t"

    const-string v2, "    "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 344
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_11

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 226
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_11

    .line 228
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Lio/bidmachine/media3/common/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 230
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .registers 2

    :goto_0
    if-eqz p0, :cond_d

    .line 362
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 365
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 257
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_11

    .line 259
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Lio/bidmachine/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 261
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 273
    sget-object v0, Lio/bidmachine/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    sget v1, Lio/bidmachine/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_10

    .line 275
    sget-object v1, Lio/bidmachine/media3/common/util/Log;->logger:Lio/bidmachine/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Lio/bidmachine/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 277
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

###### Class io.bidmachine.media3.common.util.Log.Logger (io.bidmachine.media3.common.util.Log$Logger)
.class public interface abstract Lio/bidmachine/media3/common/util/Log$Logger;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lio/bidmachine/media3/common/util/Log$Logger$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/Log$Logger$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/util/Log$Logger;->DEFAULT:Lio/bidmachine/media3/common/util/Log$Logger;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

###### Class io.bidmachine.media3.common.util.Log.Logger.AnonymousClass1 (io.bidmachine.media3.common.util.Log$Logger$1)
.class public Lio/bidmachine/media3/common/util/Log$Logger$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lio/bidmachine/media3/common/util/Log$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/Log$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 76
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 91
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 81
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 86
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
