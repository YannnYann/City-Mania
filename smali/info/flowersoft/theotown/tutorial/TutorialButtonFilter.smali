###### Class info.flowersoft.theotown.tutorial.TutorialButtonFilter (info.flowersoft.theotown.tutorial.TutorialButtonFilter)
.class public Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;
.super Ljava/lang/Object;
.source "TutorialButtonFilter.java"

# interfaces
.implements Lio/blueflower/stapel2d/gui/GadgetFilter;


# instance fields
.field public final actions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final clickableButtonIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ignoredButtonIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final markedButtonIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final neverMarkedButtonids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->neverMarkedButtonids:Ljava/util/Set;

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    .line 47
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->ignoredButtonIds:Ljava/util/Set;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->actions:Ljava/util/HashMap;

    .line 50
    const-string v2, "cmdMenu"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 51
    const-string v2, "cmdRegion"

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "cmdMinimap"

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 53
    const-string v2, "cmdCloseTool"

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 54
    const-string v2, "roottoolbar"

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 56
    const-string v2, "pnlNotification"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v0, "cmdNextNotification"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    return-void
.end method

.method public static drawMarked(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 19

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 179
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v11

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    long-to-double v3, v11

    mul-double/2addr v3, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v1

    .line 181
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v1, v2

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v1, v13

    .line 180
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 182
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 184
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v7

    int-to-float v3, v8

    int-to-float v4, v9

    int-to-float v5, v10

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_MARK:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const-wide/16 v1, 0x3e8

    .line 186
    rem-long/2addr v11, v1

    long-to-float v1, v11

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-float/2addr v1, v13

    float-to-int v1, v1

    .line 189
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 190
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-int v3, v7, v2

    int-to-float v3, v3

    sub-int v4, v8, v2

    int-to-float v4, v4

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v9, v2

    int-to-float v5, v5

    add-int/2addr v2, v10

    int-to-float v2, v2

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_MARK:I

    move v0, v5

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v1, 0xff

    .line 192
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    return-void
.end method

.method public addButton(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 5

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->ignoredButtonIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_11

    .line 82
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz p3, :cond_18

    .line 85
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->actions:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public afterDrawing(Lio/blueflower/stapel2d/gui/Gadget;II)V
    .registers 12

    .line 108
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 109
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int v4, p2, v0

    .line 110
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int v5, p3, v0

    .line 111
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    .line 112
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    .line 114
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->examineClickable(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result v3

    move-object v1, p0

    .line 115
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->drawClickable(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3f

    .line 119
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-le v1, v3, :cond_38

    const/4 v0, 0x0

    .line 122
    :cond_38
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p1, v0}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    .line 126
    :cond_3f
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v0, :cond_76

    .line 127
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 128
    invoke-virtual {v2, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 129
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    add-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p3, p1

    int-to-float p1, p3

    .line 129
    invoke-virtual {v2, v0, v1, p2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 131
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {v2, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_76
    return-void
.end method

.method public afterDrawingItem(Lio/blueflower/stapel2d/gui/Gadget;ZILio/blueflower/stapel2d/gui/ListItem;II)V
    .registers 14

    .line 142
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p3

    iget-object v1, p3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 143
    instance-of p3, p1, Lio/blueflower/stapel2d/gui/ListBox;

    if-eqz p3, :cond_45

    .line 144
    check-cast p1, Lio/blueflower/stapel2d/gui/ListBox;

    .line 145
    instance-of p3, p4, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;

    if-eqz p3, :cond_45

    .line 146
    move-object p3, p4

    check-cast p3, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;

    if-eqz p3, :cond_45

    .line 148
    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->getInnerItem()Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;

    if-eqz v0, :cond_45

    .line 149
    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->getInnerItem()Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->getSelectable()Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p3

    .line 150
    instance-of v0, p3, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    if-eqz v0, :cond_45

    .line 151
    check-cast p3, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    if-eqz p3, :cond_45

    .line 153
    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->examineClickable(Ljava/lang/String;)I

    move-result v2

    .line 154
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {p4, p2}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v6

    move-object v0, p0

    move v3, p5

    move v4, p6

    .line 153
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->drawClickable(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V

    :cond_45
    return-void
.end method

.method public allowClick(Lio/blueflower/stapel2d/gui/Gadget;)Z
    .registers 2

    .line 197
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->examineClickable(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public beforeDrawing(Lio/blueflower/stapel2d/gui/Gadget;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public beforeDrawingItem(Lio/blueflower/stapel2d/gui/Gadget;ZILio/blueflower/stapel2d/gui/ListItem;II)V
    .registers 7

    .line 0
    return-void
.end method

.method public final drawClickable(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V
    .registers 14

    if-eqz p2, :cond_a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    return-void

    .line 173
    :cond_6
    invoke-static {p1, p3, p4, p5, p6}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->drawMarked(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    return-void

    .line 165
    :cond_a
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 166
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_UNMARK:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 168
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final examineClickable(Lio/blueflower/stapel2d/gui/Gadget;)I
    .registers 10

    .line 224
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    :goto_c
    move v5, v2

    move v4, v3

    goto/16 :goto_8c

    .line 232
    :cond_10
    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->ignoredButtonIds:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v3

    move v5, v4

    goto/16 :goto_8c

    .line 233
    :cond_1c
    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 235
    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 236
    iget-object v5, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->neverMarkedButtonids:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 237
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 240
    invoke-virtual {v6, p1}, Lio/blueflower/stapel2d/gui/Gadget;->isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 242
    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_5a
    :goto_5a
    move v5, v2

    goto :goto_8c

    .line 248
    :cond_5c
    instance-of v1, p1, Lio/blueflower/stapel2d/gui/SensitiveGadget;

    if-nez v1, :cond_61

    goto :goto_c

    .line 251
    :cond_61
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    move v5, v4

    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    if-eqz v7, :cond_69

    .line 254
    invoke-virtual {v7, p1}, Lio/blueflower/stapel2d/gui/Gadget;->isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 256
    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    goto :goto_5a

    :cond_8a
    move v5, v2

    goto :goto_69

    .line 263
    :cond_8c
    :goto_8c
    instance-of v0, p1, Lio/blueflower/stapel2d/gui/ToggleButton;

    if-eqz v0, :cond_99

    .line 264
    check-cast p1, Lio/blueflower/stapel2d/gui/ToggleButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_99

    move v4, v3

    :cond_99
    if-eqz v5, :cond_a0

    if-eqz v4, :cond_9f

    const/4 p1, 0x2

    return p1

    :cond_9f
    return v2

    :cond_a0
    return v3
.end method

.method public final examineClickable(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move v2, v0

    move p1, v1

    goto :goto_2f

    .line 214
    :cond_7
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->ignoredButtonIds:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2d

    .line 215
    :cond_10
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 217
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->neverMarkedButtonids:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    move p1, v0

    goto :goto_2b

    :cond_2a
    move p1, v1

    :goto_2b
    move v2, v0

    goto :goto_2f

    :cond_2d
    :goto_2d
    move p1, v1

    move v2, p1

    :goto_2f
    if-eqz v2, :cond_36

    if-eqz p1, :cond_35

    const/4 p1, 0x2

    return p1

    :cond_35
    return v0

    :cond_36
    return v1
.end method

.method public getClickableButtonIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    return-object v0
.end method

.method public onClick(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 202
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void
.end method

.method public removeButton(Ljava/lang/String;)V
    .registers 3

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->clickableButtonIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->markedButtonIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->ignoredButtonIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
