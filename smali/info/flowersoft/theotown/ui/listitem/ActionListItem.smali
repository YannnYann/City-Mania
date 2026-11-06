###### Class info.flowersoft.theotown.ui.listitem.ActionListItem (info.flowersoft.theotown.ui.listitem.ActionListItem)
.class public Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ActionListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;,
        Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;
    }
.end annotation


# static fields
.field public static sourceH:I

.field public static sourceW:I

.field public static sourceX:I

.field public static sourceY:I


# instance fields
.field public abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;",
            ">;"
        }
    .end annotation
.end field

.field public background:Lio/blueflower/stapel2d/drawing/Color;

.field public backgroundAction:Ljava/lang/Runnable;

.field public baseX:I

.field public baseY:I

.field public final cmd:Linfo/flowersoft/theotown/ui/GoldButton;

.field public icon:I

.field public subTitle:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subTitleColor:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public titleColor:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;"
        }
    .end annotation
.end field

.field public visibility:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 12

    .line 57
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->icon:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    .line 43
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->title:Lio/blueflower/stapel2d/util/Getter;

    .line 44
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitle:Lio/blueflower/stapel2d/util/Getter;

    .line 46
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->titleColor:Lio/blueflower/stapel2d/util/Getter;

    .line 47
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitleColor:Lio/blueflower/stapel2d/util/Getter;

    .line 58
    new-instance v2, Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v7, 0x32

    const/16 v8, 0x28

    const/4 v3, -0x1

    const-string v4, ""

    const/16 v5, -0x2710

    const/4 v6, 0x1

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 59
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    const/16 p1, 0x32

    const/16 v0, 0x26

    .line 60
    invoke-virtual {v2, p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 96
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

.method public addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 100
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    return-void
.end method

.method public addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;-><init>(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;

    new-instance v7, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-direct {v7, p6}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;-><init>(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 22

    move/from16 v3, p3

    move/from16 v4, p4

    .line 144
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->visibility:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 145
    :cond_15
    iput v3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->baseX:I

    .line 146
    iput v4, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->baseY:I

    .line 148
    iget-object v8, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->background:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v8, :cond_2e

    const/4 v1, 0x0

    move-object v9, v8

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 149
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    move/from16 v6, p5

    goto :goto_40

    :cond_2e
    const/4 v1, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 151
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move v6, v5

    .line 154
    :goto_40
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 155
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 156
    iget-object v10, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 158
    iput v6, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->width:I

    move/from16 v4, p6

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move-object v5, v7

    .line 159
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->drawIcon(IIIILio/blueflower/stapel2d/gui/Skin;)I

    move-result v4

    add-int v11, p3, v4

    sub-int v1, v6, v4

    .line 163
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->titleColor:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 164
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->title:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v3, v11

    add-int/lit8 v4, p4, 0x5

    int-to-float v4, v4

    invoke-virtual {v10, v8, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 165
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitleColor:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 166
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitle:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v4, p4, 0x14

    int-to-float v4, v4

    invoke-virtual {v10, v9, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 169
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v12, v2

    :goto_96
    if-ltz v12, :cond_d9

    .line 170
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;

    .line 171
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_d2

    add-int/lit8 v13, v1, -0x33

    .line 173
    iget v1, v2, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->icon:I

    iget-object v3, v2, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->name:Ljava/lang/String;

    add-int v4, v13, v11

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, p4, 0x2

    add-int/lit8 v8, p6, -0x6

    move-object v4, v9

    .line 174
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->isActive()Z

    move-result v9

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->golden:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v7, 0x32

    move v0, v2

    move v2, v1

    move-object v1, v10

    move v10, v0

    move-object v0, p0

    .line 173
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->drawAction(Lio/blueflower/stapel2d/drawing/Engine;ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Font;IIIIZZ)V

    move-object v0, v1

    move v1, v13

    goto :goto_d4

    :cond_d2
    move-object v4, v9

    move-object v0, v10

    :goto_d4
    add-int/lit8 v12, v12, -0x1

    move-object v10, v0

    move-object v9, v4

    goto :goto_96

    :cond_d9
    move-object v0, v10

    .line 178
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final drawAction(Lio/blueflower/stapel2d/drawing/Engine;ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Font;IIIIZZ)V
    .registers 25

    move-object v0, p1

    move/from16 v1, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v2, p8

    move/from16 v11, p10

    const/16 v12, 0xff

    if-eqz p9, :cond_11

    move v3, v12

    goto :goto_13

    :cond_11
    const/16 v3, 0x64

    .line 183
    :goto_13
    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 184
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 186
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v3, v10, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 187
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->draw(II)V

    .line 188
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v1

    add-int/lit8 v4, v9, -0x2

    int-to-float v4, v4

    int-to-float v5, v10

    int-to-float v6, v2

    move v2, v1

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3e800000    # 0.25f

    move/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 189
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz v11, :cond_5c

    .line 191
    sget-object v1, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 193
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_5c
    move-object/from16 v1, p3

    move-object/from16 v3, p4

    .line 196
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v7, v10, -0x4

    int-to-float v7, v7

    cmpl-float v8, v6, v7

    if-lez v8, :cond_6f

    div-float/2addr v7, v6

    .line 199
    invoke-virtual {p1, v7, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_6f
    add-int/lit8 v6, v9, 0x1

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3f666666    # 0.9f

    move v13, v2

    move-object v2, v1

    move-object v1, v3

    move v3, v13

    move v13, v5

    move v5, v4

    move v4, v6

    move v6, v13

    .line 201
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 202
    invoke-virtual {p1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 203
    invoke-virtual {p1, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawIcon(IIIILio/blueflower/stapel2d/gui/Skin;)I
    .registers 15

    .line 112
    iget p3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->icon:I

    if-gez p3, :cond_a

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    if-ltz p3, :cond_29

    .line 115
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p3

    float-to-int p3, p3

    .line 116
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 117
    iget-object v0, p5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    const/high16 v7, 0x3f000000    # 0.5f

    iget v8, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->icon:I

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return p3

    .line 120
    :cond_29
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    invoke-interface {p3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;->getWidth()I

    move-result v4

    .line 121
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    invoke-interface {p3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;->getHeight()I

    move-result v5

    .line 122
    invoke-static {p4, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    iget-object v1, p5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sub-int p5, p3, v4

    div-int/lit8 p5, p5, 0x2

    add-int v2, p1, p5

    sub-int/2addr p4, v5

    div-int/lit8 p4, p4, 0x2

    add-int v3, p2, p4

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    return p3
.end method

.method public getHeight(Z)I
    .registers 2

    .line 208
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->visibility:Lio/blueflower/stapel2d/util/Getter;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    const/16 p1, 0x28

    return p1
.end method

.method public onClick(II)V
    .registers 6

    .line 215
    iget p2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->width:I

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_4a

    .line 217
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;

    .line 218
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_47

    add-int/lit8 v2, p2, -0x33

    if-lt p1, v2, :cond_46

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_46

    .line 221
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->isActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 222
    iget p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->baseX:I

    add-int/2addr p1, v2

    sput p1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceX:I

    .line 223
    iget p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->baseY:I

    add-int/lit8 p1, p1, 0x2

    sput p1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceY:I

    const/16 p1, 0x32

    .line 224
    sput p1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceW:I

    const/16 p1, 0x24

    .line 225
    sput p1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceH:I

    .line 226
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Button;->click()V

    .line 227
    iget-object p1, v1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->run:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_45
    return-void

    :cond_46
    move p2, v2

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 235
    :cond_4a
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->backgroundAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_58

    .line 236
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Button;->click()V

    .line 237
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->backgroundAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_58
    return-void
.end method

.method public setBackground(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 2

    .line 139
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->background:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setBackgroundAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->backgroundAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 129
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->icon:I

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    return-void
.end method

.method public setIcon(Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;)V
    .registers 3

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->icon:I

    .line 135
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->abstractIcon:Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    return-void
.end method

.method public setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitle:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 3

    .line 72
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v0, p1}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitle:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setSubTitleColor(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->subTitleColor:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setTitle(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->title:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 68
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v0, p1}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->title:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setTitleColor(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->titleColor:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setVisibility(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->visibility:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.listitem.ActionListItem.Action (info.flowersoft.theotown.ui.listitem.ActionListItem$Action)
.class Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;
.super Ljava/lang/Object;
.source "ActionListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public active:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public golden:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public icon:I

.field public name:Ljava/lang/String;

.field public run:Ljava/lang/Runnable;

.field public visible:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->icon:I

    .line 251
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->name:Ljava/lang/String;

    .line 252
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->run:Ljava/lang/Runnable;

    .line 253
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->active:Lio/blueflower/stapel2d/util/Getter;

    .line 254
    iput-object p5, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->visible:Lio/blueflower/stapel2d/util/Getter;

    .line 255
    iput-object p6, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->golden:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->active:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Action;->visible:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.ui.listitem.ActionListItem.Icon (info.flowersoft.theotown.ui.listitem.ActionListItem$Icon)
.class public interface abstract Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;
.super Ljava/lang/Object;
.source "ActionListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Icon"
.end annotation


# virtual methods
.method public abstract draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method
