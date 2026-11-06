###### Class info.flowersoft.theotown.draft.AnimationDraft (info.flowersoft.theotown.draft.AnimationDraft)
.class public Linfo/flowersoft/theotown/draft/AnimationDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "AnimationDraft.java"


# instance fields
.field public additive:Z

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

.field public colors:[Lio/blueflower/stapel2d/drawing/Color;

.field public light:Z

.field public lightSwitching:Z

.field public nightLightProbability:F

.field public rotationAware:Z

.field public speed:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    iput v0, p0, Linfo/flowersoft/theotown/draft/AnimationDraft;->nightLightProbability:F

    return-void
.end method
