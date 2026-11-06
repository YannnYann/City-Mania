###### Class info.flowersoft.theotown.ui.ShadowedLabel (info.flowersoft.theotown.ui.ShadowedLabel)
.class public Linfo/flowersoft/theotown/ui/ShadowedLabel;
.super Lio/blueflower/stapel2d/gui/Label;
.source "ShadowedLabel.java"


# instance fields
.field public shadow:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7

    .line 18
    invoke-direct/range {p0 .. p6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p1, Linfo/flowersoft/theotown/ui/ShadowedLabel;->shadow:Z

    return-void
.end method


# virtual methods
.method public drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V
    .registers 12

    .line 32
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    .line 33
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p6, v0

    mul-float/2addr p8, p6

    add-float/2addr p4, p8

    float-to-int p4, p4

    sub-float/2addr p7, v1

    mul-float/2addr p9, p7

    add-float/2addr p5, p9

    float-to-int p5, p5

    .line 37
    iget-object p6, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p6, p6, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 38
    iget p7, p0, Lio/blueflower/stapel2d/gui/Label;->scaleX:F

    iget p8, p0, Lio/blueflower/stapel2d/gui/Label;->scaleY:F

    invoke-virtual {p6, p7, p8}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 40
    iget-boolean p7, p0, Linfo/flowersoft/theotown/ui/ShadowedLabel;->shadow:Z

    if-eqz p7, :cond_4c

    .line 41
    sget-object p7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p6, p7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 42
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p7

    div-int/lit8 p7, p7, 0x4

    invoke-virtual {p6, p7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 p7, p4, -0x1

    int-to-float p7, p7

    add-int/lit8 p8, p5, -0x1

    int-to-float p8, p8

    .line 43
    invoke-virtual {p6, p1, p3, p7, p8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/lit8 p9, p4, 0x1

    int-to-float p9, p9

    .line 44
    invoke-virtual {p6, p1, p3, p9, p8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/lit8 p8, p5, 0x1

    int-to-float p8, p8

    .line 45
    invoke-virtual {p6, p1, p3, p7, p8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 46
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p7

    invoke-virtual {p6, p7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 47
    invoke-virtual {p6, p1, p3, p9, p8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 50
    :cond_4c
    invoke-virtual {p6, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 51
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    invoke-virtual {p6, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    int-to-float p2, p4

    int-to-float p4, p5

    .line 52
    invoke-virtual {p6, p1, p3, p2, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 53
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p6, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 54
    invoke-virtual {p6, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p6, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public isShadow()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/ShadowedLabel;->shadow:Z

    return v0
.end method

.method public setShadow(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/ShadowedLabel;->shadow:Z

    return-void
.end method
