###### Class info.flowersoft.theotown.util.TimeLog (info.flowersoft.theotown.util.TimeLog)
.class public Linfo/flowersoft/theotown/util/TimeLog;
.super Ljava/lang/Object;
.source "TimeLog.java"


# static fields
.field public static lastMS:J = -0x1L

.field public static final times:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    .line 16
    new-array v0, v0, [F

    sput-object v0, Linfo/flowersoft/theotown/util/TimeLog;->times:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTime(I)F
    .registers 2

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/util/TimeLog;->times:[F

    aget p0, v0, p0

    return p0
.end method

.method public static log(I)V
    .registers 7

    .line 20
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 21
    sget-wide v2, Linfo/flowersoft/theotown/util/TimeLog;->lastMS:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_23

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_23

    .line 24
    sget-object v3, Linfo/flowersoft/theotown/util/TimeLog;->times:[F

    const v4, 0x3f666666    # 0.9f

    aget v5, v3, p0

    mul-float/2addr v5, v4

    const v4, 0x3dcccccd    # 0.1f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    aput v5, v3, p0

    .line 27
    :cond_23
    sput-wide v0, Linfo/flowersoft/theotown/util/TimeLog;->lastMS:J

    return-void
.end method
