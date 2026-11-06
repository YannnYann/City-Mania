###### Class info.flowersoft.theotown.draft.ZoneDraft (info.flowersoft.theotown.draft.ZoneDraft)
.class public Linfo/flowersoft/theotown/draft/ZoneDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "ZoneDraft.java"


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

.field public autoRoad:Z

.field public base:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public borderFrames:[I

.field public mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public needsRoad:Z

.field public oldId:I

.field public persistent:Z

.field public placeable:Z

.field public price:I

.field public priceFactor:F

.field public radius:I

.field public rci:Z

.field public rebuild:Z

.field public roadBorderFrames:[I

.field public superiorToAll:Z

.field public superiorToBase:Z

.field public tempId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->needsRoad:Z

    .line 43
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->autoRoad:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 2

    .line 65
    iget v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    return v0
.end method

.method public isBaseOf(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    if-eqz p1, :cond_f

    .line 48
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq p1, v0, :cond_f

    .line 49
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isBaseOf(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public isSimilar(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 3

    if-eqz p1, :cond_e

    if-eq p0, p1, :cond_c

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v0, p1, :cond_c

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne p1, p0, :cond_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 3

    .line 53
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->superiorToAll:Z

    if-nez v0, :cond_17

    if-eq p0, p1, :cond_17

    if-eqz p1, :cond_17

    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->superiorToBase:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 56
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method
