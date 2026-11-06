###### Class org.chromium.net.telemetry.SizeBuckets (org.chromium.net.telemetry.SizeBuckets)
.class public final Lorg/chromium/net/telemetry/SizeBuckets;
.super Ljava/lang/Object;
.source "SizeBuckets.java"


# direct methods
.method public static calcRequestBodySizeBucket(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBytes"
        }
    .end annotation

    .line 80
    const-string v0, "Request body size is negative"

    invoke-static {p0, p1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    if-lez v0, :cond_1b

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1b

    const/4 p0, 0x2

    return p0

    :cond_1b
    const/16 v0, 0xa

    const/16 v1, 0x32

    .line 90
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p0, 0x3

    return p0

    :cond_27
    const/16 v0, 0xc8

    .line 93
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 p0, 0x4

    return p0

    :cond_31
    const/16 v1, 0x1f4

    .line 96
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p0, 0x5

    return p0

    :cond_3b
    const/16 v0, 0x3e8

    .line 99
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 p0, 0x6

    return p0

    :cond_45
    const/16 v1, 0x1388

    .line 102
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 p0, 0x7

    return p0

    :cond_4f
    const/16 p0, 0x8

    return p0
.end method

.method public static calcRequestHeadersSizeBucket(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBytes"
        }
    .end annotation

    .line 16
    const-string v0, "Request header size is negative"

    invoke-static {p0, p1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0xa

    .line 23
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p0, 0x2

    return p0

    :cond_1c
    const/16 v1, 0x19

    .line 26
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x3

    return p0

    :cond_26
    const/16 v0, 0x32

    .line 29
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 p0, 0x4

    return p0

    :cond_30
    const/16 v1, 0x64

    .line 32
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x5

    return p0

    :cond_3a
    const/4 p0, 0x6

    return p0
.end method

.method public static calcResponseBodySizeBucket(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBytes"
        }
    .end annotation

    .line 118
    const-string v0, "Response body size is negative"

    invoke-static {p0, p1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    if-lez v0, :cond_1b

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1b

    const/4 p0, 0x2

    return p0

    :cond_1b
    const/16 v0, 0xa

    const/16 v1, 0x32

    .line 128
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 p0, 0x3

    return p0

    :cond_27
    const/16 v0, 0xc8

    .line 131
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 p0, 0x4

    return p0

    :cond_31
    const/16 v1, 0x1f4

    .line 134
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p0, 0x5

    return p0

    :cond_3b
    const/16 v0, 0x3e8

    .line 137
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 p0, 0x6

    return p0

    :cond_45
    const/16 v1, 0x1388

    .line 140
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 p0, 0x7

    return p0

    :cond_4f
    const/16 p0, 0x8

    return p0
.end method

.method public static calcResponseHeadersSizeBucket(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBytes"
        }
    .end annotation

    .line 48
    const-string v0, "Response header size is negative"

    invoke-static {p0, p1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0xa

    .line 55
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p0, 0x2

    return p0

    :cond_1c
    const/16 v1, 0x19

    .line 58
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x3

    return p0

    :cond_26
    const/16 v0, 0x32

    .line 61
    invoke-static {p0, p1, v1, v0}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 p0, 0x4

    return p0

    :cond_30
    const/16 v1, 0x64

    .line 64
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x5

    return p0

    :cond_3a
    const/4 p0, 0x6

    return p0
.end method

.method public static checkSizeIsValid(JLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sizeBytes",
            "errMessage"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_7

    return-void

    .line 151
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInClosedOpenRange(DII)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .line 0
    int-to-double v0, p2

    cmpl-double p2, p0, v0

    if-ltz p2, :cond_c

    int-to-double p2, p3

    cmpg-double p0, p0, p2

    if-gez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
