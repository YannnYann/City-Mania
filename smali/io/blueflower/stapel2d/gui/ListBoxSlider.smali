###### Class io.blueflower.stapel2d.gui.ListBoxSlider (io.blueflower.stapel2d.gui.ListBoxSlider)
.class Lio/blueflower/stapel2d/gui/ListBoxSlider;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ListBoxSlider.java"


# instance fields
.field public button:Lio/blueflower/stapel2d/gui/Button;

.field public visibility:F

.field public visibilityTransformed:F

.field public visibleWidth:F


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 32
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 24
    iput p1, v0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibleWidth:F

    .line 34
    new-instance v5, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, p0

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;-><init>(Lio/blueflower/stapel2d/gui/ListBoxSlider;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v5, v0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setLooseTPOnFocusLoss(Z)V

    .line 54
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setLooseTPOnFocusLoss(Z)V

    return-void
.end method

.method public static synthetic access$000(Lio/blueflower/stapel2d/gui/ListBoxSlider;)F
    .registers 1

    .line 15
    iget p0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibleWidth:F

    return p0
.end method

.method public static synthetic access$100(Lio/blueflower/stapel2d/gui/ListBoxSlider;)F
    .registers 1

    .line 15
    iget p0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibilityTransformed:F

    return p0
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 62
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 63
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v5, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibleWidth:F

    sub-float v3, v0, v5

    .line 64
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    const/high16 v0, 0x42200000    # 40.0f

    .line 66
    iget v2, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibilityTransformed:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 67
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 68
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v6

    iget v7, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 69
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xff

    .line 70
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public update(Lio/blueflower/stapel2d/gui/ListBox;IF)V
    .registers 10

    .line 79
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 80
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 83
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0, v0, v3, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 85
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    .line 86
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x41200000    # 10.0f

    if-nez v1, :cond_4b

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    if-nez v1, :cond_4b

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    iget-boolean v1, v1, Lio/blueflower/stapel2d/gui/Button;->down:Z

    if-eqz v1, :cond_3d

    goto :goto_4b

    .line 89
    :cond_3d
    iget v1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibility:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibility:F

    goto :goto_55

    .line 87
    :cond_4b
    :goto_4b
    iget v1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibility:F

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibility:F

    .line 92
    :goto_55
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibility:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibilityTransformed:F

    mul-float/2addr v4, v0

    sub-float/2addr v2, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    add-float/2addr v4, v2

    .line 93
    iput v4, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->visibleWidth:F

    .line 95
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    if-le p2, v0, :cond_ef

    if-gtz p2, :cond_73

    goto/16 :goto_ef

    :cond_73
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 102
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/2addr v0, p2

    .line 103
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v1, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-int/2addr v1, p3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p3

    sub-int p3, p2, p3

    div-int/2addr v1, p3

    .line 105
    iget-object p3, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p3, v3, v1, v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 107
    iget-object p3, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider;->button:Lio/blueflower/stapel2d/gui/Button;

    iget-boolean v1, p3, Lio/blueflower/stapel2d/gui/Button;->down:Z

    if-eqz v1, :cond_be

    .line 108
    iget-object p3, p3, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result p3

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v0

    mul-float/2addr p3, v0

    .line 109
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    sub-float/2addr v0, p3

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void

    .line 110
    :cond_be
    iget-boolean p3, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    if-eqz p3, :cond_ee

    .line 111
    iget-object p3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p3

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v1

    mul-float/2addr p3, v1

    .line 112
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    sub-float/2addr p3, v2

    .line 114
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p3, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p3, p2

    neg-float p2, p3

    .line 115
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    :cond_ee
    return-void

    .line 96
    :cond_ef
    :goto_ef
    invoke-virtual {p0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    return-void
.end method

###### Class io.blueflower.stapel2d.gui.ListBoxSlider.AnonymousClass1 (io.blueflower.stapel2d.gui.ListBoxSlider$1)
.class Lio/blueflower/stapel2d/gui/ListBoxSlider$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ListBoxSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/blueflower/stapel2d/gui/ListBoxSlider;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/blueflower/stapel2d/gui/ListBoxSlider;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/ListBoxSlider;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;->this$0:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 40
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 41
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;->this$0:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    invoke-static {v0}, Lio/blueflower/stapel2d/gui/ListBoxSlider;->access$000(Lio/blueflower/stapel2d/gui/ListBoxSlider;)F

    move-result v0

    sub-float v3, p1, v0

    .line 42
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    .line 43
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;->this$0:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    invoke-static {p1}, Lio/blueflower/stapel2d/gui/ListBoxSlider;->access$000(Lio/blueflower/stapel2d/gui/ListBoxSlider;)F

    move-result v5

    .line 44
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 45
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/ListBoxSlider$1;->this$0:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    invoke-static {p1}, Lio/blueflower/stapel2d/gui/ListBoxSlider;->access$100(Lio/blueflower/stapel2d/gui/ListBoxSlider;)F

    move-result p1

    const/high16 p2, 0x42a00000    # 80.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit16 p1, p1, 0xaf

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 46
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p2

    iget v7, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 47
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 48
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr v3, p2

    add-float/2addr v4, p2

    const/high16 p2, 0x40000000    # 2.0f

    sub-float/2addr v5, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 p2, p2, -0x2

    int-to-float v6, p2

    iget v7, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 p1, 0xff

    .line 49
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method
