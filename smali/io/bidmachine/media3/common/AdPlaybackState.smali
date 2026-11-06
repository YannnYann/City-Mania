###### Class io.bidmachine.media3.common.AdPlaybackState (io.bidmachine.media3.common.AdPlaybackState)
.class public final Lio/bidmachine/media3/common/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;
    }
.end annotation


# static fields
.field public static final FIELD_AD_GROUPS:Ljava/lang/String;

.field public static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field public static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field public static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Lio/bidmachine/media3/common/AdPlaybackState;

.field public static final REMOVED_AD_GROUP:Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field public final adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 747
    new-instance v0, Lio/bidmachine/media3/common/AdPlaybackState;

    const/4 v8, 0x0

    new-array v2, v8, [Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;JJI)V

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->NONE:Lio/bidmachine/media3/common/AdPlaybackState;

    .line 755
    new-instance v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->withAdCount(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    const/4 v0, 0x1

    .line 1466
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1467
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1468
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1469
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;JJI)V
    .registers 8

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 806
    iput-wide p3, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    .line 807
    iput-wide p5, p0, Lio/bidmachine/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 808
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    .line 809
    iput-object p2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    .line 810
    iput p7, p0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

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

    if-eqz p1, :cond_43

    .line 1373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/AdPlaybackState;

    if-eq v3, v2, :cond_10

    goto :goto_43

    .line 1376
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/AdPlaybackState;

    .line 1377
    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    iget v3, p1, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-wide v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->contentDurationUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    iget v3, p1, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    iget-object p1, p1, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    .line 1382
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;
    .registers 4

    .line 815
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_7

    .line 816
    sget-object p1, Lio/bidmachine/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    return-object p1

    .line 817
    :cond_7
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .registers 11

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_41

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v4

    if-eqz v2, :cond_15

    cmp-long p3, p1, p3

    if-ltz p3, :cond_15

    goto :goto_41

    .line 861
    :cond_15
    iget p3, p0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 862
    :goto_17
    iget p4, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p3, p4, :cond_3c

    .line 863
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide v4, p4, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p4, v4, v0

    if-eqz p4, :cond_2f

    .line 864
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide v4, p4, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p4, v4, p1

    if-lez p4, :cond_39

    .line 865
    :cond_2f
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p4

    invoke-virtual {p4}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result p4

    if-nez p4, :cond_3c

    :cond_39
    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    .line 868
    :cond_3c
    iget p1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p3, p1, :cond_41

    return p3

    :cond_41
    :goto_41
    return v3
.end method

.method public getAdGroupIndexForPositionUs(JJ)I
    .registers 12

    .line 835
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    .line 836
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    :goto_a
    move-object v1, p0

    if-ltz v6, :cond_1a

    move-wide v2, p1

    move-wide v4, p3

    .line 837
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/common/AdPlaybackState;->isPositionBeforeAdGroup(JJI)Z

    move-result p1

    if-eqz p1, :cond_1a

    add-int/lit8 v6, v6, -0x1

    move-wide p1, v2

    move-wide p3, v4

    goto :goto_a

    :cond_1a
    if-ltz v6, :cond_27

    .line 840
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p1

    if-eqz p1, :cond_27

    return v6

    :cond_27
    const/4 p1, -0x1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1387
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1388
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1389
    iget-wide v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1390
    iget-wide v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->contentDurationUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1391
    iget v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1392
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLivePostrollPlaceholder(I)Z
    .registers 4

    .line 1307
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_11

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result p1

    if-eqz p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final isPositionBeforeAdGroup(JJI)Z
    .registers 12

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_8

    return v3

    .line 1452
    :cond_8
    invoke-virtual {p0, p5}, Lio/bidmachine/media3/common/AdPlaybackState;->getAdGroup(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    move-result-object p5

    .line 1453
    iget-wide v4, p5, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v4

    if-eqz v0, :cond_28

    .line 1460
    invoke-virtual {p5}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result p5

    if-nez p5, :cond_28

    cmp-long p1, p1, p3

    if-gez p1, :cond_27

    goto :goto_28

    :cond_27
    return v3

    :cond_28
    :goto_28
    return v1

    :cond_29
    cmp-long p1, p1, v4

    if-gez p1, :cond_2e

    return v1

    :cond_2e
    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1401
    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    iget-wide v1, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1403
    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 1404
    :goto_20
    iget-object v3, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_b9

    .line 1405
    const-string v3, "adGroup(timeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    iget-object v3, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    aget-object v3, v3, v2

    iget-wide v5, v3, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1407
    const-string v3, ", ads=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    .line 1408
    :goto_3b
    iget-object v5, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_a9

    .line 1409
    const-string v5, "ad(state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    iget-object v5, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v5, v5, v3

    if-eqz v5, :cond_7f

    if-eq v5, v7, :cond_79

    const/4 v8, 0x2

    if-eq v5, v8, :cond_73

    const/4 v8, 0x3

    if-eq v5, v8, :cond_6d

    const/4 v8, 0x4

    if-eq v5, v8, :cond_67

    const/16 v5, 0x3f

    .line 1427
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_67
    const/16 v5, 0x21

    .line 1415
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_6d
    const/16 v5, 0x50

    .line 1421
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_73
    const/16 v5, 0x53

    .line 1424
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_79
    const/16 v5, 0x52

    .line 1418
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_7f
    const/16 v5, 0x5f

    .line 1412
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1430
    :goto_84
    const-string v5, ", durationUs="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    iget-object v5, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 1432
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1433
    iget-object v5, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_a6

    .line 1434
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1437
    :cond_a9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    iget-object v3, p0, Lio/bidmachine/media3/common/AdPlaybackState;->adGroups:[Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_b5

    .line 1439
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    .line 1442
    :cond_b9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.common.AdPlaybackState.AdGroup (io.bidmachine.media3.common.AdPlaybackState$AdGroup)
.class public final Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field public static final FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

.field public static final FIELD_COUNT:Ljava/lang/String;

.field public static final FIELD_DURATIONS_US:Ljava/lang/String;

.field public static final FIELD_IDS:Ljava/lang/String;

.field public static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field public static final FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

.field public static final FIELD_MEDIA_ITEMS:Ljava/lang/String;

.field public static final FIELD_ORIGINAL_COUNT:Ljava/lang/String;

.field public static final FIELD_STATES:Ljava/lang/String;

.field public static final FIELD_TIME_US:Ljava/lang/String;

.field public static final FIELD_URIS:Ljava/lang/String;


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final ids:[Ljava/lang/String;

.field public final isPlaceholder:Z

.field public final isServerSideInserted:Z

.field public final mediaItems:[Lio/bidmachine/media3/common/MediaItem;

.field public final originalCount:I

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 617
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    const/4 v0, 0x1

    .line 618
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    const/4 v0, 0x2

    .line 619
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 620
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 621
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    const/4 v0, 0x5

    .line 622
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    const/4 v0, 0x6

    .line 623
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    const/4 v0, 0x7

    .line 624
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    const/16 v0, 0x8

    .line 625
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    const/16 v0, 0x9

    .line 626
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    const/16 v0, 0xa

    .line 627
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 17

    const/4 v0, 0x0

    .line 117
    new-array v6, v0, [I

    new-array v7, v0, [Lio/bidmachine/media3/common/MediaItem;

    new-array v8, v0, [J

    new-array v12, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v13}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Lio/bidmachine/media3/common/MediaItem;[JJZ[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(JII[I[Lio/bidmachine/media3/common/MediaItem;[JJZ[Ljava/lang/String;Z)V
    .registers 16

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    array-length v0, p5

    array-length v1, p6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 143
    iput-wide p1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 144
    iput p3, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 145
    iput p4, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 146
    iput-object p5, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 147
    iput-object p6, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Lio/bidmachine/media3/common/MediaItem;

    .line 148
    iput-object p7, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 149
    iput-wide p8, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 150
    iput-boolean p10, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 151
    array-length p1, p6

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 152
    :goto_23
    iget-object p1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length p2, p1

    if-ge v2, p2, :cond_3d

    .line 153
    aget-object p2, p6, v2

    if-nez p2, :cond_2e

    const/4 p2, 0x0

    goto :goto_38

    :cond_2e
    iget-object p2, p2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p2, p2, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    :goto_38
    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 155
    :cond_3d
    iput-object p11, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 156
    iput-boolean p12, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    return-void
.end method

.method public static copyDurationsUsWithSpaceForAdCount([JI)[J
    .registers 5

    .line 610
    array-length v0, p0

    .line 611
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 612
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 613
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method public static copyStatesWithSpaceForAdCount([II)[I
    .registers 4

    .line 601
    array-length v0, p0

    .line 602
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 603
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 604
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_63

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    if-eq v3, v2, :cond_10

    goto :goto_63

    .line 236
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    .line 237
    iget-wide v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_63

    iget v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v2, v3, :cond_63

    iget v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Lio/bidmachine/media3/common/MediaItem;

    iget-object v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Lio/bidmachine/media3/common/MediaItem;

    .line 240
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 241
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 242
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-wide v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_63

    iget-boolean v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 245
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-boolean v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-ne v2, p1, :cond_63

    return v0

    :cond_63
    :goto_63
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .registers 2

    const/4 v0, -0x1

    .line 164
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 177
    :goto_2
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge p1, v2, :cond_15

    .line 178
    iget-boolean v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v2, :cond_15

    aget v1, v1, p1

    if-eqz v1, :cond_15

    if-ne v1, v0, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_15
    :goto_15
    return p1
.end method

.method public hasUnplayedAds()Z
    .registers 5

    .line 197
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 200
    :goto_9
    iget v3, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v1, v3, :cond_1a

    .line 201
    iget-object v3, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v3, v3, v1

    if-eqz v3, :cond_19

    if-ne v3, v2, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    :goto_19
    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 251
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    mul-int/lit8 v0, v0, 0x1f

    .line 252
    iget v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 253
    iget-wide v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 254
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Lio/bidmachine/media3/common/MediaItem;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-wide v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-boolean v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-boolean v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isLivePostrollPlaceholder()Z
    .registers 5

    .line 225
    iget-boolean v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPlayAdGroup()Z
    .registers 3

    .line 190
    iget v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public withAdCount(I)Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;
    .registers 16

    .line 283
    iget-object v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v6

    .line 284
    iget-object v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v8

    .line 285
    iget-object v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Lio/bidmachine/media3/common/MediaItem;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lio/bidmachine/media3/common/MediaItem;

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 287
    new-instance v1, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v9, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v13, p0, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move v4, p1

    invoke-direct/range {v1 .. v13}, Lio/bidmachine/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Lio/bidmachine/media3/common/MediaItem;[JJZ[Ljava/lang/String;Z)V

    return-object v1
.end method
