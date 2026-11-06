###### Class info.flowersoft.theotown.draft.RailDraft (info.flowersoft.theotown.draft.RailDraft)
.class public Linfo/flowersoft/theotown/draft/RailDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "RailDraft.java"


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

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

.field public groundLevel:I

.field public monthlyPrice:I

.field public onGround:Z

.field public pileDistance:I

.field public pileFrames:[I

.field public pileHeight:I

.field public price:I

.field public speed:F

.field public supportsSlope:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    return-void
.end method
