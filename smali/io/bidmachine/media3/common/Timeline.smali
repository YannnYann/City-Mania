###### Class io.bidmachine.media3.common.Timeline (io.bidmachine.media3.common.Timeline)
.class public abstract Lio/bidmachine/media3/common/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Timeline$Window;,
        Lio/bidmachine/media3/common/Timeline$Period;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/Timeline;

.field public static final FIELD_PERIODS:Ljava/lang/String;

.field public static final FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

.field public static final FIELD_WINDOWS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 957
    new-instance v0, Lio/bidmachine/media3/common/Timeline$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    const/4 v0, 0x0

    .line 1372
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1373
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1374
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1303
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/Timeline;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1306
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/Timeline;

    .line 1307
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ne v1, v3, :cond_8e

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v3

    if-eq v1, v3, :cond_22

    goto/16 :goto_8e

    .line 1310
    :cond_22
    new-instance v1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    .line 1311
    new-instance v3, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v3}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    .line 1312
    new-instance v4, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v4}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    .line 1313
    new-instance v5, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    move v6, v2

    .line 1314
    :goto_37
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v7

    if-ge v6, v7, :cond_4f

    .line 1315
    invoke-virtual {p0, v6, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/bidmachine/media3/common/Timeline$Window;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c

    return v2

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4f
    move v1, v2

    .line 1319
    :goto_50
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    if-ge v1, v4, :cond_68

    .line 1320
    invoke-virtual {p0, v1, v3, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v4

    .line 1321
    invoke-virtual {p1, v1, v5, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/bidmachine/media3/common/Timeline$Period;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    return v2

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 1327
    :cond_68
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    .line 1328
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v3

    if-eq v1, v3, :cond_73

    return v2

    .line 1331
    :cond_73
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v3

    .line 1332
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result v4

    if-eq v3, v4, :cond_7e

    return v2

    :cond_7e
    :goto_7e
    if-eq v1, v3, :cond_8d

    .line 1337
    invoke-virtual {p0, v1, v2, v0}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v4

    .line 1339
    invoke-virtual {p1, v1, v2, v0}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    if-eq v4, v1, :cond_8b

    return v2

    :cond_8b
    move v1, v4

    goto :goto_7e

    :cond_8d
    return v0

    :cond_8e
    :goto_8e
    return v2
.end method

.method public getFirstWindowIndex(Z)I
    .registers 2

    .line 1077
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .registers 2

    .line 1065
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final getNextPeriodIndex(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)I
    .registers 7

    .line 1123
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1124
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v0, p1, :cond_1d

    .line 1125
    invoke-virtual {p0, p2, p4, p5}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_16

    return p2

    .line 1129
    :cond_16
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    return p1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    .line 1021
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_13

    .line 1022
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    return p1

    :cond_13
    add-int/2addr p1, v0

    return p1

    .line 1025
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    return p1

    .line 1015
    :cond_1c
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 p1, -0x1

    return p1

    :cond_24
    add-int/2addr p1, v0

    return p1
.end method

.method public final getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 4

    const/4 v0, 0x0

    .line 1266
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
.end method

.method public getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 4

    .line 1254
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline$Window;",
            "Lio/bidmachine/media3/common/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1193
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 1192
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline$Window;",
            "Lio/bidmachine/media3/common/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 1221
    invoke-virtual {p0, p3, p1, p6, p7}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_1e

    .line 1223
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_1e

    const/4 p1, 0x0

    return-object p1

    .line 1228
    :cond_1e
    iget p3, p1, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 1229
    invoke-virtual {p0, p3, p2}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1230
    :goto_23
    iget v0, p1, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ge p3, v0, :cond_3b

    iget-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_3b

    add-int/lit8 v0, p3, 0x1

    .line 1232
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_3b

    move p3, v0

    goto :goto_23

    :cond_3b
    const/4 p1, 0x1

    .line 1235
    invoke-virtual {p0, p3, p2, p1}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1236
    iget-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr p4, v0

    .line 1238
    iget-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_4f

    const-wide/16 p6, 0x1

    sub-long/2addr v0, p6

    .line 1239
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_4f
    const-wide/16 p6, 0x0

    .line 1242
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 1243
    iget-object p1, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    .line 1048
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_13

    .line 1049
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    return p1

    :cond_13
    sub-int/2addr p1, v0

    return p1

    .line 1052
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    return p1

    .line 1042
    :cond_1c
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 p1, -0x1

    return p1

    :cond_24
    sub-int/2addr p1, v0

    return p1
.end method

.method public abstract getUidOfPeriod(I)Ljava/lang/Object;
.end method

.method public final getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 5

    const-wide/16 v0, 0x0

    .line 1088
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public abstract getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public hashCode()I
    .registers 7

    .line 1351
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    .line 1352
    new-instance v1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    const/16 v2, 0xd9

    .line 1354
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    .line 1355
    :goto_13
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-ge v4, v5, :cond_27

    mul-int/lit8 v2, v2, 0x1f

    .line 1356
    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline$Window;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_27
    mul-int/lit8 v2, v2, 0x1f

    .line 1358
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    .line 1359
    :goto_2f
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_44

    mul-int/lit8 v2, v2, 0x1f

    .line 1360
    invoke-virtual {p0, v0, v1, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline$Period;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1363
    :cond_44
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_48
    const/4 v1, -0x1

    if-eq v0, v1, :cond_53

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    .line 1365
    invoke-virtual {p0, v0, v3, v5}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    goto :goto_48

    :cond_53
    return v2
.end method

.method public final isEmpty()Z
    .registers 2

    .line 996
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isLastPeriod(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)Z
    .registers 6

    .line 1151
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/common/Timeline;->getNextPeriodIndex(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.common.Timeline.AnonymousClass1 (io.bidmachine.media3.common.Timeline$1)
.class public Lio/bidmachine/media3/common/Timeline$1;
.super Lio/bidmachine/media3/common/Timeline;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 958
    invoke-direct {p0}, Lio/bidmachine/media3/common/Timeline;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 2

    .line 0
    const/4 p1, -0x1

    return p1
.end method

.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 4

    .line 977
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 2

    .line 987
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 5

    .line 967
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getWindowCount()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.common.Timeline.Period (io.bidmachine.media3.common.Timeline$Period)
.class public final Lio/bidmachine/media3/common/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static final FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

.field public static final FIELD_DURATION_US:Ljava/lang/String;

.field public static final FIELD_PLACEHOLDER:Ljava/lang/String;

.field public static final FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

.field public static final FIELD_WINDOW_INDEX:Ljava/lang/String;


# instance fields
.field public adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field public isPlaceholder:Z

.field public positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 897
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 898
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    const/4 v0, 0x2

    .line 899
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    const/4 v0, 0x3

    .line 900
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    const/4 v0, 0x4

    .line 901
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    sget-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->NONE:Lio/bidmachine/media3/common/AdPlaybackState;

    iput-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_51

    .line 874
    :cond_14
    check-cast p1, Lio/bidmachine/media3/common/Timeline$Period;

    .line 875
    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 876
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget v3, p1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    if-ne v2, v3, :cond_51

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget-object p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    .line 881
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    return v0

    :cond_51
    :goto_51
    return v1
.end method

.method public getAdCountInAdGroup(I)I
    .registers 3

    .line 789
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    return p1
.end method

.method public getAdDurationUs(II)J
    .registers 5

    .line 801
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 802
    iget v0, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p1, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getAdGroupCount()I
    .registers 2

    .line 695
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget v0, v0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    return v0
.end method

.method public getAdGroupIndexAfterPositionUs(J)I
    .registers 6

    .line 778
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget-wide v1, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result p1

    return p1
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .registers 6

    .line 767
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget-wide v1, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p1

    return p1
.end method

.method public getAdGroupTimeUs(I)J
    .registers 4

    .line 715
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget-wide v0, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    return-wide v0
.end method

.method public getAdResumePositionUs()J
    .registers 3

    .line 839
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget-wide v0, v0, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    return-wide v0
.end method

.method public getAdState(II)I
    .registers 5

    .line 816
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 817
    iget v0, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 818
    iget-object p1, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget p1, p1, p2

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public getContentResumeOffsetUs(I)J
    .registers 4

    .line 863
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget-wide v0, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 666
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getFirstAdIndexToPlay(I)I
    .registers 3

    .line 727
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result p1

    return p1
.end method

.method public getNextAdIndexToPlay(II)I
    .registers 4

    .line 741
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result p1

    return p1
.end method

.method public getPositionInWindowMs()J
    .registers 3

    .line 675
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .registers 3

    .line 684
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public getRemovedAdGroupCount()I
    .registers 2

    .line 703
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    iget v0, v0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    return v0
.end method

.method public hasPlayedAdGroup(I)Z
    .registers 3

    .line 753
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 7

    .line 887
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 888
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 889
    iget v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 890
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 891
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 892
    iget-boolean v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 893
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/AdPlaybackState;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public isLivePostrollPlaceholder(I)Z
    .registers 4

    .line 830
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    .line 831
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result p1

    if-eqz p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public isServerSideInsertedAdGroup(I)Z
    .registers 3

    .line 851
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    iget-boolean p1, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 18

    .line 610
    sget-object v8, Lio/bidmachine/media3/common/AdPlaybackState;->NONE:Lio/bidmachine/media3/common/AdPlaybackState;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLio/bidmachine/media3/common/AdPlaybackState;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJLio/bidmachine/media3/common/AdPlaybackState;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 10

    .line 649
    iput-object p1, p0, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    .line 650
    iput-object p2, p0, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 651
    iput p3, p0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 652
    iput-wide p4, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    .line 653
    iput-wide p6, p0, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 654
    iput-object p8, p0, Lio/bidmachine/media3/common/Timeline$Period;->adPlaybackState:Lio/bidmachine/media3/common/AdPlaybackState;

    .line 655
    iput-boolean p9, p0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    return-object p0
.end method

###### Class io.bidmachine.media3.common.Timeline.Window (io.bidmachine.media3.common.Timeline$Window)
.class public final Lio/bidmachine/media3/common/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field public static final FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

.field public static final FIELD_DURATION_US:Ljava/lang/String;

.field public static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

.field public static final FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

.field public static final FIELD_IS_DYNAMIC:Ljava/lang/String;

.field public static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field public static final FIELD_IS_SEEKABLE:Ljava/lang/String;

.field public static final FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

.field public static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field public static final FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

.field public static final FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

.field public static final FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

.field public static final PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 165
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "io.bidmachine.media3.common.Timeline"

    .line 167
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 168
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    const/4 v0, 0x1

    .line 416
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    const/4 v0, 0x2

    .line 417
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 418
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 420
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 421
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 422
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    const/4 v0, 0x7

    .line 423
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 424
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    const/16 v0, 0x9

    .line 425
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    const/16 v0, 0xa

    .line 426
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    const/16 v0, 0xb

    .line 427
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    const/16 v0, 0xc

    .line 428
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    const/16 v0, 0xd

    .line 429
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 260
    sget-object v0, Lio/bidmachine/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    iput-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8e

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_8e

    .line 374
    :cond_15
    check-cast p1, Lio/bidmachine/media3/common/Timeline$Window;

    .line 375
    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 376
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 377
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 378
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    if-ne v2, v3, :cond_8e

    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-ne v2, v3, :cond_8e

    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    if-ne v2, v3, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    iget v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-ne v2, v3, :cond_8e

    iget v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v3, p1, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v2, v3, :cond_8e

    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_8e

    return v0

    :cond_8e
    :goto_8e
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .registers 3

    .line 357
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .registers 3

    .line 311
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .registers 3

    .line 321
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .registers 3

    .line 326
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .registers 3

    .line 347
    iget-wide v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .line 396
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 397
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 398
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    move v0, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    if-nez v0, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 405
    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 406
    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 407
    iget-boolean v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 409
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 410
    iget v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 411
    iget v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 412
    iget-wide v2, p0, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public isLive()Z
    .registers 2

    .line 362
    iget-object v0, p0, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;JJJZZLio/bidmachine/media3/common/MediaItem$LiveConfiguration;JJIIJ)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 21

    .line 282
    iput-object p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    if-eqz p2, :cond_6

    move-object p1, p2

    goto :goto_8

    .line 283
    :cond_6
    sget-object p1, Lio/bidmachine/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    :goto_8
    iput-object p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    if-eqz p2, :cond_13

    .line 285
    iget-object p1, p2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_13

    .line 286
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 287
    :goto_14
    iput-object p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->tag:Ljava/lang/Object;

    .line 288
    iput-object p3, p0, Lio/bidmachine/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 289
    iput-wide p4, p0, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 290
    iput-wide p6, p0, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 291
    iput-wide p8, p0, Lio/bidmachine/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 292
    iput-boolean p10, p0, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    .line 293
    iput-boolean p11, p0, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    .line 294
    iput-object p12, p0, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 295
    iput-wide p13, p0, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    move-wide p1, p15

    .line 296
    iput-wide p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    move/from16 p1, p17

    .line 297
    iput p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    move/from16 p1, p18

    .line 298
    iput p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 p1, p19

    .line 299
    iput-wide p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object p0
.end method
