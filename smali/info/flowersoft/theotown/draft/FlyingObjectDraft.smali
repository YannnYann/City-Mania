###### Class info.flowersoft.theotown.draft.FlyingObjectDraft (info.flowersoft.theotown.draft.FlyingObjectDraft)
.class public Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "FlyingObjectDraft.java"


# instance fields
.field public animation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public animationSpotIndices:[[I

.field public capacity:I

.field public final diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

.field public drawRadius:I

.field public flyHeight:I

.field public flyingType:I

.field public price:I

.field public speed:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    return-void
.end method
