###### Class info.flowersoft.theotown.ui.DragButton (info.flowersoft.theotown.ui.DragButton)
.class public Linfo/flowersoft/theotown/ui/DragButton;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "DragButton.java"


# instance fields
.field public drag:Lio/blueflower/stapel2d/gui/Button;

.field public dragging:Z

.field public max:F

.field public min:F

.field public rawValue:F

.field public step:F

.field public valueProperty:Lio/blueflower/stapel2d/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Property;FFF)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Float;",
            ">;FFF)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p2, p0

    .line 24
    iput-object p6, p2, Linfo/flowersoft/theotown/ui/DragButton;->valueProperty:Lio/blueflower/stapel2d/util/Property;

    .line 25
    iput p7, p2, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    .line 26
    iput p8, p2, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    .line 27
    iput p9, p2, Linfo/flowersoft/theotown/ui/DragButton;->step:F

    .line 29
    new-instance p1, Linfo/flowersoft/theotown/ui/DragButton$1;

    const/16 p5, 0x10

    move-object p8, p6

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p6

    const/4 p3, 0x0

    const/4 p4, 0x0

    move-object p7, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/DragButton$1;-><init>(Linfo/flowersoft/theotown/ui/DragButton;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Property;)V

    iput-object p1, p2, Linfo/flowersoft/theotown/ui/DragButton;->drag:Lio/blueflower/stapel2d/gui/Button;

    .line 61
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setLooseTPOnFocusLoss(Z)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/DragButton;F)F
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/DragButton;->limit(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(II)V
    .registers 10

    .line 89
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v3, v0, p1

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v0, p2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/DragButton;->drawBackground(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public drawBackground(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 14

    .line 94
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    iget v7, v0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public final limit(F)F
    .registers 4

    .line 65
    iget v0, p0, Linfo/flowersoft/theotown/ui/DragButton;->step:F

    const v1, 0x358637bd    # 1.0E-6f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1f

    .line 67
    iget v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Linfo/flowersoft/theotown/ui/DragButton;->step:F

    mul-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    add-float/2addr p1, v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1

    .line 70
    :cond_1f
    iget v0, p0, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    iget v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public onUpdate()V
    .registers 5

    .line 76
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-nez v0, :cond_5

    return-void

    .line 81
    :cond_5
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->drag:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DragButton;->drag:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    iget v2, p0, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    sub-float v3, v1, v2

    mul-float/2addr v0, v3

    .line 80
    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    .line 84
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton;->valueProperty:Lio/blueflower/stapel2d/util/Property;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/DragButton;->limit(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DragButton.AnonymousClass1 (info.flowersoft.theotown.ui.DragButton$1)
.class public Linfo/flowersoft/theotown/ui/DragButton$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "DragButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DragButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Property;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DragButton;

.field public final synthetic val$valueProperty:Lio/blueflower/stapel2d/util/Property;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DragButton;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Property;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->val$valueProperty:Lio/blueflower/stapel2d/util/Property;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 7

    .line 32
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 33
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v0, :cond_57

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/ui/DragButton;->dragging:Z

    if-nez v1, :cond_20

    .line 35
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->val$valueProperty:Lio/blueflower/stapel2d/util/Property;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/ui/DragButton;->dragging:Z

    .line 39
    :cond_20
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget v2, v1, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget v4, v3, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    iget v5, v3, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    iput v2, v1, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->val$valueProperty:Lio/blueflower/stapel2d/util/Property;

    iget v1, v3, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    invoke-static {v3, v1}, Linfo/flowersoft/theotown/ui/DragButton;->access$000(Linfo/flowersoft/theotown/ui/DragButton;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_6c

    .line 44
    :cond_57
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->val$valueProperty:Lio/blueflower/stapel2d/util/Property;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/ui/DragButton;->rawValue:F

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Linfo/flowersoft/theotown/ui/DragButton;->dragging:Z

    .line 48
    :goto_6c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DragButton;->drag:Lio/blueflower/stapel2d/gui/Button;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->val$valueProperty:Lio/blueflower/stapel2d/util/Property;

    .line 49
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DragButton$1;->this$0:Linfo/flowersoft/theotown/ui/DragButton;

    iget v3, v2, Linfo/flowersoft/theotown/ui/DragButton;->min:F

    sub-float/2addr v1, v3

    iget v2, v2, Linfo/flowersoft/theotown/ui/DragButton;->max:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 51
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 48
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setX(I)V

    .line 52
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method
