###### Class io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker (io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker)
.class public final Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# direct methods
.method public static rechunk(I[J[IJ)Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .registers 22

    move-object/from16 v0, p2

    const/16 v1, 0x2000

    .line 74
    div-int v1, v1, p0

    .line 78
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v2, :cond_16

    aget v6, v0, v4

    .line 79
    invoke-static {v6, v1}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 82
    :cond_16
    new-array v7, v5, [J

    .line 83
    new-array v8, v5, [I

    .line 85
    new-array v10, v5, [J

    .line 86
    new-array v11, v5, [I

    move v2, v3

    move v4, v2

    move v5, v4

    move v9, v5

    .line 91
    :goto_22
    array-length v6, v0

    if-ge v3, v6, :cond_55

    .line 92
    aget v6, v0, v3

    .line 93
    aget-wide v12, p1, v3

    :goto_29
    if-lez v6, :cond_4f

    .line 96
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 98
    aput-wide v12, v7, v5

    mul-int v15, p0, v14

    .line 99
    aput v15, v8, v5

    add-int/2addr v4, v15

    .line 101
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v15, v1

    int-to-long v0, v2

    mul-long v0, v0, p3

    .line 102
    aput-wide v0, v10, v5

    const/4 v0, 0x1

    .line 103
    aput v0, v11, v5

    .line 105
    aget v0, v8, v5

    int-to-long v0, v0

    add-long/2addr v12, v0

    add-int/2addr v2, v14

    sub-int/2addr v6, v14

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    move v1, v15

    goto :goto_29

    :cond_4f
    move v15, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    goto :goto_22

    :cond_55
    int-to-long v0, v2

    mul-long v12, p3, v0

    .line 114
    new-instance v6, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    int-to-long v14, v4

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJJLio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v6
.end method

###### Class io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker.AnonymousClass1 (io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker$1)
.class public synthetic Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$1;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker.Results (io.bidmachine.media3.extractor.mp4.FixedSampleSizeRechunker$Results)
.class public final Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final duration:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J

.field public final totalSize:J


# direct methods
.method public constructor <init>([J[II[J[IJJ)V
    .registers 10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 49
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 50
    iput p3, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 51
    iput-object p4, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 52
    iput-object p5, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 53
    iput-wide p6, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 54
    iput-wide p8, p0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->totalSize:J

    return-void
.end method

.method public synthetic constructor <init>([J[II[J[IJJLio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .registers 11

    .line 30
    invoke-direct/range {p0 .. p9}, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJJ)V

    return-void
.end method
