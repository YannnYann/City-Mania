###### Class info.flowersoft.theotown.draft.CarDraft (info.flowersoft.theotown.draft.CarDraft)
.class public Linfo/flowersoft/theotown/draft/CarDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "CarDraft.java"


# instance fields
.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarAnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public chargeable:Z

.field public colors:[Lio/blueflower/stapel2d/drawing/Color;

.field public driveable:Z

.field public flags:J

.field public framesPerColor:I

.field public framesPerVariant:I

.field public length:F

.field public overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

.field public overlayFrames:[I

.field public price:J

.field public speed:F

.field public tail:[Linfo/flowersoft/theotown/draft/CarDraft;

.field public vehicleType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerColor:I

    const/4 v1, 0x4

    .line 36
    iput v1, p0, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    .line 38
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    .line 40
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    return-void
.end method
