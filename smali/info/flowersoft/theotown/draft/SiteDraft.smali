###### Class info.flowersoft.theotown.draft.SiteDraft (info.flowersoft.theotown.draft.SiteDraft)
.class public Linfo/flowersoft/theotown/draft/SiteDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "SiteDraft.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public colorFG:Lio/blueflower/stapel2d/drawing/Color;

.field public framesFG:[I

.field public framesPerFloor:I

.field public framesPerProgress:I

.field public heightPerFloor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    const/4 v0, 0x6

    .line 14
    iput v0, p0, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    const/16 v0, 0x8

    .line 15
    iput v0, p0, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    return-void
.end method
