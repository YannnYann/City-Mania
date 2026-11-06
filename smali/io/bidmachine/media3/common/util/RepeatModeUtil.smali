###### Class io.bidmachine.media3.common.util.RepeatModeUtil (io.bidmachine.media3.common.util.RepeatModeUtil)
.class public final Lio/bidmachine/media3/common/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# direct methods
.method public static getNextRepeatMode(II)I
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    add-int v1, p0, v0

    .line 76
    rem-int/lit8 v1, v1, 0x3

    .line 77
    invoke-static {v1, p1}, Lio/bidmachine/media3/common/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return p0
.end method

.method public static isRepeatModeEnabled(II)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_16

    const/4 v1, 0x0

    if-eq p0, v0, :cond_10

    const/4 v2, 0x2

    if-eq p0, v2, :cond_a

    return v1

    :cond_a
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_f

    return v0

    :cond_f
    return v1

    :cond_10
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_15

    return v0

    :cond_15
    return v1

    :cond_16
    return v0
.end method
