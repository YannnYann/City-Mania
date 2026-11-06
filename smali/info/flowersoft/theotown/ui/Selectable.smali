###### Class info.flowersoft.theotown.ui.Selectable (info.flowersoft.theotown.ui.Selectable)
.class public interface abstract Linfo/flowersoft/theotown/ui/Selectable;
.super Ljava/lang/Object;
.source "Selectable.java"


# virtual methods
.method public abstract allowEasySelect()Z
.end method

.method public abstract build(Lio/blueflower/stapel2d/gui/Panel;)V
.end method

.method public abstract countFrames()I
.end method

.method public abstract drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
.end method

.method public abstract getFrame()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMaster()Lio/blueflower/stapel2d/gui/Master;
.end method

.method public abstract getPreviewHeight()I
.end method

.method public abstract getPreviewWidth()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isMarkable()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public nextFrame()V
    .registers 3

    .line 34
    invoke-interface {p0}, Linfo/flowersoft/theotown/ui/Selectable;->getFrame()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p0, v0}, Linfo/flowersoft/theotown/ui/Selectable;->setFrame(I)V

    return-void
.end method

.method public prevFrame()V
    .registers 3

    .line 37
    invoke-interface {p0}, Linfo/flowersoft/theotown/ui/Selectable;->getFrame()I

    move-result v0

    invoke-interface {p0}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p0, v0}, Linfo/flowersoft/theotown/ui/Selectable;->setFrame(I)V

    return-void
.end method

.method public abstract select()V
.end method

.method public abstract setFrame(I)V
.end method

.method public abstract setOnSelect(Ljava/lang/Runnable;)V
.end method
