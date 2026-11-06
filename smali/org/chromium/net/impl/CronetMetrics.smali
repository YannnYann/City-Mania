###### Class org.chromium.net.impl.CronetMetrics (org.chromium.net.impl.CronetMetrics)
.class public final Lorg/chromium/net/impl/CronetMetrics;
.super Lorg/chromium/net/RequestFinishedInfo$Metrics;
.source "CronetMetrics.java"


# annotations
.annotation runtime Linternal/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation


# instance fields
.field public final mConnectEndMs:J

.field public final mConnectStartMs:J

.field public final mDnsEndMs:J

.field public final mDnsStartMs:J

.field public final mPushEndMs:J

.field public final mPushStartMs:J

.field public final mReceivedByteCount:Ljava/lang/Long;

.field public final mRequestEndMs:J

.field public final mRequestStartMs:J

.field public final mResponseStartMs:J

.field public final mSendingEndMs:J

.field public final mSendingStartMs:J

.field public final mSentByteCount:Ljava/lang/Long;

.field public final mSocketReused:Z

.field public final mSslEndMs:J

.field public final mSslStartMs:J

.field public final mTotalTimeMs:Ljava/lang/Long;

.field public final mTtfbMs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJZJJ)V
    .registers 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestStartMs",
            "dnsStartMs",
            "dnsEndMs",
            "connectStartMs",
            "connectEndMs",
            "sslStartMs",
            "sslEndMs",
            "sendingStartMs",
            "sendingEndMs",
            "pushStartMs",
            "pushEndMs",
            "responseStartMs",
            "requestEndMs",
            "socketReused",
            "sentByteCount",
            "receivedByteCount"
        }
    .end annotation

    .annotation build Linternal/org/jni_zero/CalledByNative;
    .end annotation

    move-wide/from16 v0, p23

    move-wide/from16 v2, p25

    .line 90
    invoke-direct {p0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    .line 105
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    .line 106
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    .line 107
    iput-wide p5, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    .line 108
    iput-wide p7, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    move-wide/from16 p3, p9

    .line 109
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    move-wide/from16 p3, p11

    .line 110
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    move-wide/from16 p3, p13

    .line 111
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    move-wide/from16 p3, p15

    .line 112
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    move-wide/from16 p3, p17

    .line 113
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    move-wide/from16 p3, p19

    .line 114
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    move-wide/from16 p3, p21

    .line 115
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    .line 116
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    .line 117
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    move/from16 p3, p27

    .line 118
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    .line 119
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    .line 120
    invoke-static/range {p30 .. p31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    const-wide/16 p3, -0x1

    cmp-long v4, p1, p3

    const/4 v5, 0x0

    if-eqz v4, :cond_52

    cmp-long v6, v0, p3

    if-eqz v6, :cond_52

    sub-long/2addr v0, p1

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    goto :goto_54

    .line 126
    :cond_52
    iput-object v5, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    :goto_54
    if-eqz v4, :cond_63

    cmp-long p3, v2, p3

    if-eqz p3, :cond_63

    sub-long p1, v2, p1

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-void

    .line 131
    :cond_63
    iput-object v5, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-void
.end method

.method public static empty()Lorg/chromium/net/impl/CronetMetrics;
    .registers 32

    .line 69
    new-instance v0, Lorg/chromium/net/impl/CronetMetrics;

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const-wide/16 v25, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v31}, Lorg/chromium/net/impl/CronetMetrics;-><init>(JJJJJJJJJJJJJZJJ)V

    return-object v0
.end method

.method public static toDate(J)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getConnectEnd()Ljava/util/Date;
    .registers 3

    .line 162
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getConnectStart()Ljava/util/Date;
    .registers 3

    .line 156
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDnsEnd()Ljava/util/Date;
    .registers 3

    .line 150
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDnsStart()Ljava/util/Date;
    .registers 3

    .line 144
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPushEnd()Ljava/util/Date;
    .registers 3

    .line 198
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPushStart()Ljava/util/Date;
    .registers 3

    .line 192
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedByteCount()Ljava/lang/Long;
    .registers 2

    .line 239
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestEnd()Ljava/util/Date;
    .registers 3

    .line 210
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStart()Ljava/util/Date;
    .registers 3

    .line 138
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStart()Ljava/util/Date;
    .registers 3

    .line 204
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSendingEnd()Ljava/util/Date;
    .registers 3

    .line 186
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSendingStart()Ljava/util/Date;
    .registers 3

    .line 180
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSentByteCount()Ljava/lang/Long;
    .registers 2

    .line 233
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getSocketReused()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    return v0
.end method

.method public getSslEnd()Ljava/util/Date;
    .registers 3

    .line 174
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSslStart()Ljava/util/Date;
    .registers 3

    .line 168
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTotalTimeMs()Ljava/lang/Long;
    .registers 2

    .line 227
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public getTtfbMs()Ljava/lang/Long;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    return-object v0
.end method
