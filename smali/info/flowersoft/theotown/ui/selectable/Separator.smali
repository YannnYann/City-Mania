###### Class info.flowersoft.theotown.ui.selectable.Separator (info.flowersoft.theotown.ui.selectable.Separator)
.class public Linfo/flowersoft/theotown/ui/selectable/Separator;
.super Ljava/lang/Object;
.source "Separator.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/Selectable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowEasySelect()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 2

    .line 0
    return-void
.end method

.method public countFrames()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 12

    .line 74
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 75
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p2

    int-to-float v4, p3

    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v5, 0x447a0000    # 1000.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 76
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getFrame()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaster()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 0
    const/16 v0, 0x3e8

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isMarkable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public select()V
    .registers 1

    .line 0
    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOnSelect(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    return-void
.end method
