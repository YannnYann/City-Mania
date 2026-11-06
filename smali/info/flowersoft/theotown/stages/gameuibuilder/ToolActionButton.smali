###### Class info.flowersoft.theotown.stages.gameuibuilder.ToolActionButton (info.flowersoft.theotown.stages.gameuibuilder.ToolActionButton)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "ToolActionButton.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public grouped:Z

.field public myGroup:I

.field public myIndex:I

.field public showLabel:Z

.field public targetGroupSize:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IIZIZLio/blueflower/stapel2d/gui/Gadget;)V
    .registers 10

    .line 25
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p7}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->city:Linfo/flowersoft/theotown/city/City;

    .line 27
    iput p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myIndex:I

    .line 28
    iput p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    .line 29
    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->grouped:Z

    .line 30
    iput p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->targetGroupSize:I

    .line 31
    iput-boolean p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->showLabel:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 99
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 100
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 101
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isOver()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_19

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    goto :goto_1d

    :cond_19
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    :goto_1d
    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 102
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 104
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isOver()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    if-eqz v1, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 106
    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->showLabel:Z

    if-eqz v1, :cond_7b

    move v1, v2

    .line 107
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 109
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_50

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_51

    :cond_50
    move-object v3, v0

    :goto_51
    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v3, v1

    .line 110
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    add-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    add-int/2addr p2, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr p2, v4

    int-to-float v4, p2

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, p2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    move v3, p1

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 114
    :cond_7b
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final getAction()Linfo/flowersoft/theotown/city/toolaction/ToolAction;
    .registers 5

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/16 v2, 0xd

    .line 36
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getActions()Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    move-result-object v0

    .line 37
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->grouped:Z

    if-nez v2, :cond_23

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->size()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myIndex:I

    if-le v2, v3, :cond_23

    .line 38
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(I)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    return-object v0

    .line 39
    :cond_23
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->grouped:Z

    if-eqz v2, :cond_48

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groups()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    if-le v2, v3, :cond_48

    .line 40
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupSize(I)I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->targetGroupSize:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    .line 41
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupSize(I)I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myIndex:I

    if-le v2, v3, :cond_48

    .line 42
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(II)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    return-object v0

    :cond_48
    return-object v1
.end method

.method public final getLabel()Ljava/lang/String;
    .registers 6

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->city:Linfo/flowersoft/theotown/city/City;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    const/16 v2, 0xd

    .line 50
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getActions()Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    move-result-object v0

    .line 51
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->grouped:Z

    if-nez v2, :cond_28

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->size()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myIndex:I

    if-le v2, v3, :cond_28

    .line 52
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(I)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_28
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->grouped:Z

    if-eqz v2, :cond_76

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groups()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    if-le v2, v3, :cond_76

    .line 54
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupSize(I)I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->targetGroupSize:I

    if-ne v2, v3, :cond_76

    const/4 v1, 0x1

    if-ne v3, v1, :cond_4c

    .line 56
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myIndex:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(II)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupSize(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_58
    if-ge v3, v2, :cond_71

    if-lez v3, :cond_61

    .line 61
    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_61
    iget v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->myGroup:I

    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(II)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 64
    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_76
    return-object v1
.end method

.method public isVisible()Z
    .registers 2

    .line 82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->getAction()Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 83
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->getAction()Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 74
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 75
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    .line 76
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->onClick()V

    :cond_12
    return-void
.end method

.method public onUpdate()V
    .registers 3

    .line 88
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;->getAction()Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 91
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 92
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->setPressed(Z)V

    :cond_1e
    return-void
.end method
