###### Class info.flowersoft.theotown.draft.RoadDraft (info.flowersoft.theotown.draft.RoadDraft)
.class public Linfo/flowersoft/theotown/draft/RoadDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "RoadDraft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;
    }
.end annotation


# static fields
.field public static final CONNECTED_DIAGONAL_PEDESTRIAN_MAP:[[B

.field public static final CONNECTED_PEDESTRIAN_MAP:[[B

.field public static final DIAGONAL_PEDESTRIAN_MAP:[[B

.field public static final SIMPLE_PEDESTRIAN_MAP:[[B


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

.field public allowBusStop:Z

.field public allowCrossing:Z

.field public allowDiagonal:Z

.field public allowRoadCrossing:Z

.field public allowTransfer:Z

.field public animationFGSpotIndices:[[I

.field public animationFGSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public animationSpotIndices:[[I

.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public autoJoin:Z

.field public bridgeFrames:[I

.field public bridgePrice:I

.field public budgetItem:Linfo/flowersoft/theotown/draft/Draft;

.field public buildZone:Z

.field public connectable:Z

.field public decorationBuildingIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public decorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;",
            ">;"
        }
    .end annotation
.end field

.field public devoted:Z

.field public diagonalCars:Z

.field public diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public diagonalRoadOf:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public dirs:[I

.field public dirsRightLeftSide:[[I

.field public drawGround:Z

.field public drawInFront:Z

.field public drawWaterBorders:Z

.field public drawWaterGround:Z

.field public drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public enterSpeed:F

.field public exitSpeed:F

.field public flags:J

.field public framesPerBridge:I

.field public greenPhase:I

.field public hiddenOnClick:Z

.field public influenceInduceVector:[I

.field public joinGroup:I

.field public level:I

.field public mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public maxLevel:I

.field public maxSupportedLevel:I

.field public minLevel:I

.field public minSupportedLevel:I

.field public monthlyPrice:I

.field public onBuiltTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onClickTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onEventTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public oneWay:Z

.field public oneWayFrames:[I

.field public overrunnable:Z

.field public parcelSpeeds:[F

.field public pedestrians:Z

.field public pickable:Z

.field public pileDistant:I

.field public price:I

.field public priceFactor:F

.field public randomTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public sidewalkOffset:F

.field public sidewalkSize:F

.field public singlePlacement:Z

.field public slopeFrames:[I

.field public speed:F

.field public speedWinter:F

.field public supportsSlope:Z

.field public trafficLights:[I

.field public transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public tunnelDiamondPrice:I

.field public tunnelFrames:[I

.field public tunnelPrice:I

.field public waterBorderFrames:[I

.field public width:I

.field public xFlags:J

.field public yellowPhase:I

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/draft/RoadDraft;->generatePedestrianRoadPathMap(ZZ)[[B

    move-result-object v2

    sput-object v2, Linfo/flowersoft/theotown/draft/RoadDraft;->SIMPLE_PEDESTRIAN_MAP:[[B

    .line 22
    invoke-static {v1, v1}, Linfo/flowersoft/theotown/draft/RoadDraft;->generatePedestrianRoadPathMap(ZZ)[[B

    move-result-object v2

    sput-object v2, Linfo/flowersoft/theotown/draft/RoadDraft;->DIAGONAL_PEDESTRIAN_MAP:[[B

    .line 23
    invoke-static {v0, v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->generatePedestrianRoadPathMap(ZZ)[[B

    move-result-object v2

    sput-object v2, Linfo/flowersoft/theotown/draft/RoadDraft;->CONNECTED_PEDESTRIAN_MAP:[[B

    .line 24
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->generatePedestrianRoadPathMap(ZZ)[[B

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/RoadDraft;->CONNECTED_DIAGONAL_PEDESTRIAN_MAP:[[B

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/16 v0, 0xbb8

    .line 69
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->greenPhase:I

    const/16 v0, 0x1f4

    .line 74
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->yellowPhase:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    .line 81
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->enterSpeed:F

    .line 82
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->exitSpeed:F

    const/4 v0, 0x1

    .line 121
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->pileDistant:I

    const/4 v1, 0x2

    .line 139
    iput v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    .line 154
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    .line 159
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowBusStop:Z

    .line 164
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowTransfer:Z

    .line 169
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowCrossing:Z

    .line 182
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->connectable:Z

    const/4 v1, 0x0

    .line 188
    iput v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    .line 230
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 239
    iput v2, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->priceFactor:F

    .line 252
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    .line 271
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->pickable:Z

    .line 272
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->supportsSlope:Z

    .line 273
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawInFront:Z

    .line 280
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    .line 286
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalCars:Z

    .line 290
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGround:Z

    const/4 v2, 0x0

    .line 291
    iput-object v2, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 293
    iput-object v2, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 294
    iput-object v2, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoadOf:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 296
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->pedestrians:Z

    .line 297
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowRoadCrossing:Z

    const v0, 0x3d4ccccd    # 0.05f

    .line 298
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    const v0, 0x3ccccccd    # 0.025f

    .line 299
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkSize:F

    .line 304
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->singlePlacement:Z

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    return-void
.end method

.method public static generatePedestrianParcelPathMap(IIZZ)[B
    .registers 7

    .line 337
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 339
    invoke-static {p1}, Linfo/flowersoft/theotown/draft/RoadDraft;->parcelToParcelR(I)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p2, :cond_67

    .line 342
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->isCorner(I)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 344
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-eqz p2, :cond_2c

    add-int/lit8 p2, p1, 0x1

    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-nez p2, :cond_44

    .line 345
    :cond_2c
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-nez p2, :cond_fe

    add-int/lit8 p2, p1, 0x1

    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-nez p2, :cond_fe

    .line 346
    :cond_44
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result p0

    .line 347
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 348
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 349
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 350
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_da

    :cond_67
    if-eqz p3, :cond_ae

    .line 358
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-nez p2, :cond_89

    add-int/lit8 p2, p1, 0x1

    .line 359
    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    .line 360
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p3

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 361
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_89
    add-int/lit8 p2, p1, 0x3

    .line 363
    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    invoke-static {p2, p0}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p0

    if-nez p0, :cond_da

    add-int/lit8 p0, p1, 0x2

    .line 364
    rem-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p0

    .line 365
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 366
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_da

    :cond_ae
    add-int/lit8 p0, p1, 0x1

    .line 371
    rem-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p0

    .line 372
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 373
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 p0, p1, 0x2

    .line 375
    rem-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p0

    .line 376
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 377
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_da
    :goto_da
    move p0, v2

    :goto_db
    if-gt p0, v1, :cond_fe

    .line 384
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    if-eq p0, p2, :cond_ed

    add-int/lit8 p2, p1, 0x3

    rem-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result p2

    if-ne p0, p2, :cond_fb

    .line 385
    :cond_ed
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 386
    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_fb
    mul-int/lit8 p0, p0, 0x2

    goto :goto_db

    .line 391
    :cond_fe
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array p1, p0, [B

    const/4 p2, 0x0

    :goto_107
    if-ge p2, p0, :cond_11f

    mul-int/lit8 p3, p2, 0x2

    .line 393
    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/2addr p3, v2

    .line 394
    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p3, v1

    int-to-byte p3, p3

    .line 395
    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_107

    :cond_11f
    return-object p1
.end method

.method public static generatePedestrianRoadPathMap(ZZ)[[B
    .registers 8

    const/16 v0, 0x40

    .line 326
    new-array v0, v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1d

    move v3, v1

    :goto_b
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1a

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    .line 330
    invoke-static {v2, v3, p0, p1}, Linfo/flowersoft/theotown/draft/RoadDraft;->generatePedestrianParcelPathMap(IIZZ)[B

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    return-object v0
.end method

.method public static parcelToParcelR(I)I
    .registers 4

    const/4 v0, 0x3

    if-eqz p0, :cond_2b

    const/4 v1, 0x1

    if-eq p0, v1, :cond_29

    const/4 v2, 0x2

    if-eq p0, v2, :cond_28

    if-ne p0, v0, :cond_c

    return v1

    .line 420
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid parcel index"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return v2

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    return v0
.end method


# virtual methods
.method public canReplace(Linfo/flowersoft/theotown/draft/RoadDraft;)Z
    .registers 4

    if-eq p1, p0, :cond_e

    .line 317
    iget v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->level:I

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->level:I

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eq v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public countBridges()I
    .registers 3

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    div-int/2addr v0, v1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()I
    .registers 3

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 310
    aget v0, v0, v1

    return v0

    .line 312
    :cond_8
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    return v0
.end method

.method public hasBridge()Z
    .registers 2

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v0, :cond_a

    iget v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public hasDecorations()Z
    .registers 2

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasTunnel()Z
    .registers 2

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isClickSensitive()Z
    .registers 2

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setLeftSideTraffic(Z)V
    .registers 3

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    aget-object p1, v0, p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/RoadDraft;->dirs:[I

    return-void
.end method

###### Class info.flowersoft.theotown.draft.RoadDraft.AutoDecoration (info.flowersoft.theotown.draft.RoadDraft$AutoDecoration)
.class public Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;
.super Ljava/lang/Object;
.source "RoadDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/RoadDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDecoration"
.end annotation


# instance fields
.field public dirsOnly:I

.field public draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

.field public offsetX:I

.field public offsetY:I

.field public stepX:I

.field public stepY:I

.field public stride:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(III)Z
    .registers 6

    .line 447
    iget v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->dirsOnly:I

    const/4 v1, 0x0

    if-lez v0, :cond_9

    and-int/2addr p3, v0

    if-nez p3, :cond_9

    return v1

    .line 448
    :cond_9
    iget p3, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->offsetX:I

    sub-int/2addr p1, p3

    .line 449
    iget p3, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->offsetY:I

    sub-int/2addr p2, p3

    .line 450
    iget p3, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stepY:I

    mul-int/2addr p1, p3

    iget v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stride:I

    mul-int/2addr v0, p2

    sub-int/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stepX:I

    mul-int/2addr v0, p3

    rem-int/2addr p1, v0

    rem-int/2addr p2, p3

    add-int/2addr p1, p2

    if-nez p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method
