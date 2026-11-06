###### Class org.chromium.net.telemetry.RateLimiter (org.chromium.net.telemetry.RateLimiter)
.class public final Lorg/chromium/net/telemetry/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# instance fields
.field public mLastPermitMillis:J

.field public final mLock:Ljava/lang/Object;

.field public mSamplesLoggedDuringSecond:I

.field public final mSamplesPerSeconds:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samplesPerSeconds"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/telemetry/RateLimiter;->mLock:Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    iput-wide v0, p0, Lorg/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    if-lez p1, :cond_13

    .line 28
    iput p1, p0, Lorg/chromium/net/telemetry/RateLimiter;->mSamplesPerSeconds:I

    return-void

    .line 25
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expect sample rate to be > 0 sample(s) per second"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public tryAcquire()Z
    .registers 8

    .line 33
    iget-object v0, p0, Lorg/chromium/net/telemetry/RateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 36
    iget-wide v3, p0, Lorg/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    const/4 v4, 0x1

    if-gtz v3, :cond_19

    .line 38
    iput v4, p0, Lorg/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    .line 39
    iput-wide v1, p0, Lorg/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    .line 40
    monitor-exit v0

    return v4

    :catchall_17
    move-exception v1

    goto :goto_27

    .line 41
    :cond_19
    iget v1, p0, Lorg/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    iget v2, p0, Lorg/chromium/net/telemetry/RateLimiter;->mSamplesPerSeconds:I

    if-ge v1, v2, :cond_24

    add-int/2addr v1, v4

    .line 42
    iput v1, p0, Lorg/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    .line 43
    monitor-exit v0

    return v4

    :cond_24
    const/4 v1, 0x0

    .line 45
    monitor-exit v0

    return v1

    .line 46
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_17

    throw v1
.end method
