###### Class info.flowersoft.theotown.ui.selectable.SelectableToolGroupDraft (info.flowersoft.theotown.ui.selectable.SelectableToolGroupDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableToolGroupDraft.java"


# instance fields
.field public currentFrame:I

.field public currentSelectableIndex:I

.field public frameCount:I

.field public groupDraft:Linfo/flowersoft/theotown/draft/ToolGroupDraft;

.field public final selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final selectableIndexForFrame:[I

.field public final selectableStartFrames:[I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolGroupDraft;[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 6

    .line 30
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentFrame:I

    .line 31
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->groupDraft:Linfo/flowersoft/theotown/draft/ToolGroupDraft;

    .line 32
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 33
    array-length p2, p3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4e

    .line 37
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentSelectableIndex:I

    .line 38
    array-length p2, p3

    new-array p2, p2, [I

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableStartFrames:[I

    move p2, p1

    .line 39
    :goto_16
    array-length v0, p3

    if-ge p2, v0, :cond_2b

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableStartFrames:[I

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->frameCount:I

    aput v1, v0, p2

    .line 41
    aget-object v0, p3, p2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->countFrames()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->frameCount:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 44
    :cond_2b
    iget p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->frameCount:I

    new-array p2, p2, [I

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableIndexForFrame:[I

    move p2, p1

    .line 46
    :goto_32
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->frameCount:I

    if-ge p1, v0, :cond_4d

    .line 47
    aget-object v0, p3, p2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->countFrames()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableStartFrames:[I

    aget v1, v1, p2

    sub-int v1, p1, v1

    if-gt v0, v1, :cond_46

    add-int/lit8 p2, p2, 0x1

    .line 50
    :cond_46
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableIndexForFrame:[I

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    :cond_4d
    return-void

    .line 34
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot create selectable tool group draft without selectables."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 3

    .line 173
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method

.method public buildLabels()V
    .registers 2

    .line 168
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V

    return-void
.end method

.method public chargeDiamondsImmediately()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->chargeDiamondsImmediately()Z

    move-result v0

    return v0
.end method

.method public countFrames()I
    .registers 2

    .line 183
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->frameCount:I

    return v0
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 5

    .line 93
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void
.end method

.method public getActualCount()I
    .registers 2

    .line 133
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getActualCount()I

    move-result v0

    return v0
.end method

.method public getDiamondPrice()I
    .registers 2

    .line 103
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v0

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 3

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentSelectableIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 188
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentFrame:I

    return v0
.end method

.method public getMaxCount()I
    .registers 2

    .line 128
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getMaxCount()I

    move-result v0

    return v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 98
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getMonthlyPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPower()J
    .registers 3

    .line 118
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPower()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 83
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentSelectableIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReqContext()Ljava/lang/Object;
    .registers 2

    .line 178
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getReqContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getSelectIcon()I

    move-result v0

    return v0
.end method

.method public getSelectId()Ljava/lang/String;
    .registers 2

    .line 163
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getSelectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 2

    .line 153
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getSelectText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentSelectableIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSelectables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 138
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgrades()I
    .registers 2

    .line 123
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getUpgrades()I

    move-result v0

    return v0
.end method

.method public getWater()J
    .registers 3

    .line 113
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getWater()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->groupDraft:Linfo/flowersoft/theotown/draft/ToolGroupDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 148
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public select()V
    .registers 2

    .line 69
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 70
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectable()Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    return-void
.end method

.method public setFrame(I)V
    .registers 5

    .line 193
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentFrame:I

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableIndexForFrame:[I

    aget v0, v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->currentSelectableIndex:I

    .line 195
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    aget-object v1, v1, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableStartFrames:[I

    aget v0, v2, v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->setFrame(I)V

    return-void
.end method

.method public setOnSelect(Ljava/lang/Runnable;)V
    .registers 6

    .line 75
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->setOnSelect(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->selectableDrafts:[Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 77
    invoke-interface {v3, p1}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method
