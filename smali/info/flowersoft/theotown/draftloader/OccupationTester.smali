###### Class info.flowersoft.theotown.draftloader.OccupationTester (info.flowersoft.theotown.draftloader.OccupationTester)
.class public Linfo/flowersoft/theotown/draftloader/OccupationTester;
.super Ljava/lang/Object;
.source "OccupationTester.java"


# instance fields
.field public cellHeight:I

.field public cellWidth:I

.field public final gridSize:I

.field public matchHeight:I

.field public matchNextX:I

.field public matchWidth:I

.field public matchX:I

.field public matchY:I

.field public final occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

.field public targetHeight:I

.field public targetWidth:I


# direct methods
.method public constructor <init>(I)V
    .registers 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->gridSize:I

    mul-int v0, p1, p1

    .line 27
    new-array v0, v0, [Lio/blueflower/stapel2d/util/IntList;

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, p1, :cond_24

    move v2, v0

    :goto_10
    if-ge v2, p1, :cond_21

    .line 30
    iget-object v3, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    mul-int v4, v1, p1

    add-int/2addr v4, v2

    new-instance v5, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v5}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    return-void
.end method


# virtual methods
.method public addOccupiedSpace(IIII)V
    .registers 12

    .line 54
    iget v0, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellWidth:I

    div-int v1, p1, v0

    .line 55
    iget v2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellHeight:I

    div-int v3, p2, v2

    add-int v4, p1, p3

    add-int/lit8 v4, v4, -0x1

    .line 56
    div-int/2addr v4, v0

    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    .line 57
    div-int/2addr v0, v2

    :goto_12
    if-gt v3, v0, :cond_31

    move v2, v1

    :goto_15
    if-gt v2, v4, :cond_2e

    .line 61
    iget-object v5, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    iget v6, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->gridSize:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    .line 62
    invoke-virtual {v5, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 63
    invoke-virtual {v5, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 64
    invoke-virtual {v5, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 65
    invoke-virtual {v5, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    return-void
.end method

.method public clearAndRelease()V
    .registers 4

    const/4 v0, 0x0

    .line 50
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clearAndRelease()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public prepareQuery([III[I)V
    .registers 8

    .line 71
    iget v0, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_17

    iget p2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchHeight:I

    if-ne p3, p2, :cond_17

    .line 72
    iget p2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchX:I

    aput p2, p1, v2

    .line 73
    iget p2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchY:I

    aput p2, p1, v1

    .line 74
    iget p1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchNextX:I

    aput p1, p4, v2

    return-void

    .line 78
    :cond_17
    aput v2, p1, v2

    .line 79
    aput v2, p1, v1

    const p1, 0x7fffffff

    .line 80
    aput p1, p4, v2

    return-void
.end method

.method public query([III[I)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 84
    aget v4, p1, v3

    const/4 v5, 0x1

    .line 85
    aget v6, p1, v5

    .line 86
    iget v7, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellWidth:I

    div-int v8, v4, v7

    .line 87
    iget v9, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellHeight:I

    div-int v10, v6, v9

    add-int v11, v4, v1

    add-int/lit8 v12, v11, -0x1

    .line 88
    div-int/2addr v12, v7

    add-int v7, v6, v2

    add-int/lit8 v13, v7, -0x1

    .line 89
    div-int/2addr v13, v9

    :goto_1e
    if-gt v10, v13, :cond_97

    move v9, v8

    :goto_21
    if-gt v9, v12, :cond_8e

    .line 95
    iget-object v14, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    iget v15, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->gridSize:I

    mul-int/2addr v15, v10

    add-int/2addr v15, v9

    aget-object v14, v14, v15

    move v15, v3

    move/from16 v16, v15

    .line 97
    :goto_2e
    invoke-virtual {v14}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v15, v3, :cond_85

    .line 98
    invoke-virtual {v14, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    move/from16 v17, v5

    add-int/lit8 v5, v15, 0x1

    .line 99
    invoke-virtual {v14, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    move/from16 v18, v8

    add-int/lit8 v8, v15, 0x2

    .line 100
    invoke-virtual {v14, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    move/from16 v19, v8

    add-int/lit8 v8, v15, 0x3

    .line 101
    invoke-virtual {v14, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    move/from16 v20, v8

    add-int v8, v3, v19

    if-ge v4, v8, :cond_7e

    if-ge v11, v3, :cond_59

    goto :goto_7e

    :cond_59
    if-le v7, v5, :cond_7e

    add-int v5, v5, v20

    if-ge v6, v5, :cond_7e

    .line 107
    aget v1, p4, v16

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, p4, v16

    add-int/2addr v2, v5

    .line 108
    iget v3, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->targetHeight:I

    if-le v2, v3, :cond_79

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_73

    move v4, v1

    goto :goto_75

    :cond_73
    add-int/lit8 v4, v4, 0x1

    .line 110
    :goto_75
    aput v2, p4, v16

    move/from16 v5, v16

    .line 113
    :cond_79
    aput v4, p1, v16

    .line 114
    aput v5, p1, v17

    return v17

    :cond_7e
    :goto_7e
    add-int/lit8 v15, v15, 0x4

    move/from16 v5, v17

    move/from16 v8, v18

    goto :goto_2e

    :cond_85
    move/from16 v17, v5

    move/from16 v18, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_21

    :cond_8e
    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_97
    move/from16 v16, v3

    .line 121
    iput v4, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchX:I

    .line 122
    iput v6, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchY:I

    .line 123
    iput v1, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchWidth:I

    .line 124
    iput v2, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchHeight:I

    .line 125
    aget v1, p4, v16

    iput v1, v0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchNextX:I

    return v16
.end method

.method public setup(II)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 40
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->occupiedSpacesGrid:[Lio/blueflower/stapel2d/util/IntList;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_f
    iput p1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->targetWidth:I

    .line 42
    iput p2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->targetHeight:I

    .line 43
    iget v1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->gridSize:I

    div-int/2addr p1, v1

    iput p1, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellWidth:I

    .line 44
    div-int/2addr p2, v1

    iput p2, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->cellHeight:I

    .line 45
    iput v0, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchWidth:I

    .line 46
    iput v0, p0, Linfo/flowersoft/theotown/draftloader/OccupationTester;->matchHeight:I

    return-void
.end method
