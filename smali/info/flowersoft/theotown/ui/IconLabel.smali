###### Class info.flowersoft.theotown.ui.IconLabel (info.flowersoft.theotown.ui.IconLabel)
.class public Linfo/flowersoft/theotown/ui/IconLabel;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "IconLabel.java"


# instance fields
.field public icon:Lio/blueflower/stapel2d/gui/Icon;

.field public label:Lio/blueflower/stapel2d/gui/Label;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    const/4 v3, 0x0

    const/16 v4, 0x1a

    move-object v0, p0

    move v1, p3

    move v2, p4

    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 21
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 22
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 23
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    move-object v6, p0

    move v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/IconLabel;->icon:Lio/blueflower/stapel2d/gui/Icon;

    .line 24
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    add-int v2, p3, v5

    const/4 v4, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/IconLabel;->label:Lio/blueflower/stapel2d/gui/Label;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/IconLabel;->label:Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    return-void
.end method


# virtual methods
.method public getIcon()Lio/blueflower/stapel2d/gui/Icon;
    .registers 2

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/IconLabel;->icon:Lio/blueflower/stapel2d/gui/Icon;

    return-object v0
.end method

.method public getLabel()Lio/blueflower/stapel2d/gui/Label;
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/IconLabel;->label:Lio/blueflower/stapel2d/gui/Label;

    return-object v0
.end method
