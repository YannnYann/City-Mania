###### Class io.blueflower.stapel2d.gui.ListBox (io.blueflower.stapel2d.gui.ListBox)
.class public Lio/blueflower/stapel2d/gui/ListBox;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ListBox.java"


# instance fields
.field public inMoveMode:Z

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public limitYScrolling:Z

.field public scrollSensitive:Z

.field public selectedItem:I

.field public shiftY:F

.field public showBorder:Z

.field public showSlider:Z

.field public slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

.field public speedY:F

.field public visibilityOffsetBottom:I

.field public visibilityOffsetTop:I


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 56
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p1, Lio/blueflower/stapel2d/gui/ListBox;->scrollSensitive:Z

    .line 49
    iput-boolean p2, p1, Lio/blueflower/stapel2d/gui/ListBox;->showSlider:Z

    .line 51
    iput-boolean p2, p1, Lio/blueflower/stapel2d/gui/ListBox;->limitYScrolling:Z

    .line 57
    new-instance p3, Lio/blueflower/stapel2d/gui/ListBoxSlider;

    invoke-direct {p3, p0}, Lio/blueflower/stapel2d/gui/ListBoxSlider;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    iput-object p3, p1, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    const/4 p3, 0x2

    .line 59
    invoke-virtual {p0, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 61
    iput-boolean p2, p1, Lio/blueflower/stapel2d/gui/ListBox;->showBorder:Z

    return-void
.end method


# virtual methods
.method public addItem(Lio/blueflower/stapel2d/gui/ListItem;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addItem(Lio/blueflower/stapel2d/gui/ListItem;I)V
    .registers 4

    .line 113
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public countItems()I
    .registers 2

    .line 147
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public draw(II)V
    .registers 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 174
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 175
    iget v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v8, v0, v3

    .line 176
    iget v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v9, v2, v3

    .line 178
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 179
    iget-boolean v3, v1, Lio/blueflower/stapel2d/gui/ListBox;->showBorder:Z

    if-eqz v3, :cond_22

    .line 180
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual {v1, v0, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 183
    :cond_22
    iget v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    .line 184
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v10

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const v4, 0x3f4ccccd    # 0.8f

    if-lez v3, :cond_34

    mul-float/2addr v4, v0

    sub-float/2addr v0, v4

    :cond_32
    :goto_32
    move v11, v0

    goto :goto_52

    :cond_34
    int-to-float v3, v10

    add-float/2addr v3, v0

    .line 188
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_32

    .line 189
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    goto :goto_32

    .line 192
    :goto_52
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    .line 193
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 195
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectX()F

    move-result v4

    .line 196
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectY()F

    move-result v5

    .line 197
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectW()F

    move-result v6

    .line 198
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectH()F

    move-result v12

    .line 199
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->isClippingActive()Z

    move-result v13

    if-nez v13, :cond_7f

    .line 203
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v4

    int-to-float v6, v4

    .line 204
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    int-to-float v12, v4

    move v14, v2

    move v2, v12

    move v12, v14

    :goto_7d
    move v15, v6

    goto :goto_83

    :cond_7f
    move v14, v5

    move v2, v12

    move v12, v4

    goto :goto_7d

    :goto_83
    move/from16 v16, v3

    const/4 v3, 0x0

    .line 207
    :goto_86
    iget-object v5, v1, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_16f

    .line 208
    iget-object v5, v1, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/blueflower/stapel2d/gui/ListItem;

    .line 209
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_161

    .line 210
    iget v6, v1, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v3, v6, :cond_a2

    const/4 v6, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v6, 0x0

    :goto_a3
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v23

    .line 212
    iget v6, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int v17, v9, v6

    iget v4, v1, Lio/blueflower/stapel2d/gui/ListBox;->visibilityOffsetTop:I

    sub-int v4, v17, v4

    add-int/2addr v6, v9

    add-int v6, v6, v16

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 213
    iget v6, v1, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr v6, v9

    move-object/from16 v17, v0

    iget v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    sub-int/2addr v6, v0

    iget v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->visibilityOffsetBottom:I

    add-int/2addr v6, v0

    iget v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v0, v9

    add-int v0, v0, v16

    add-int v0, v0, v23

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    iget v6, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int v18, v9, v6

    add-int v18, v18, v16

    move-object/from16 v19, v5

    add-int v5, v18, v23

    if-gt v4, v5, :cond_157

    add-int/2addr v6, v9

    add-int v6, v6, v16

    if-lt v0, v6, :cond_157

    .line 216
    invoke-virtual {v7, v12, v14, v15, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 217
    iget v5, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v6, v4

    move/from16 v18, v0

    .line 220
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    sub-int v4, v18, v4

    move/from16 v18, v2

    const/4 v2, 0x0

    .line 221
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 217
    invoke-virtual {v7, v5, v6, v0, v4}, Lio/blueflower/stapel2d/drawing/Engine;->addClipRect(FFFF)V

    .line 223
    iget v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int v5, v8, v0

    .line 224
    iget v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v0, v9

    add-int v6, v0, v16

    if-eqz v17, :cond_118

    .line 226
    iget v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v0, v3, :cond_109

    const/4 v2, 0x1

    :cond_109
    move/from16 v25, v10

    move/from16 p2, v13

    move-object/from16 v0, v17

    move/from16 v13, v18

    move-object/from16 v4, v19

    const/4 v10, 0x1

    invoke-interface/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/GadgetFilter;->beforeDrawingItem(Lio/blueflower/stapel2d/gui/Gadget;ZILio/blueflower/stapel2d/gui/ListItem;II)V

    goto :goto_123

    :cond_118
    move/from16 v25, v10

    move/from16 p2, v13

    move-object/from16 v0, v17

    move/from16 v13, v18

    move-object/from16 v4, v19

    const/4 v10, 0x1

    .line 227
    :goto_123
    iget v2, v1, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v2, v3, :cond_12a

    move/from16 v18, v10

    goto :goto_12c

    :cond_12a
    const/16 v18, 0x0

    :goto_12c
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v22

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    move-object/from16 v24, v2

    move/from16 v19, v3

    move-object/from16 v17, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v17 .. v24}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 228
    iget v2, v1, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v3, v2, :cond_145

    move v2, v10

    goto :goto_146

    :cond_145
    const/4 v2, 0x0

    :goto_146
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v23

    if-eqz v0, :cond_15e

    .line 229
    iget v2, v1, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v2, v3, :cond_152

    move v2, v10

    goto :goto_153

    :cond_152
    const/4 v2, 0x0

    :goto_153
    invoke-interface/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/GadgetFilter;->afterDrawingItem(Lio/blueflower/stapel2d/gui/Gadget;ZILio/blueflower/stapel2d/gui/ListItem;II)V

    goto :goto_15e

    :cond_157
    move/from16 v25, v10

    move/from16 p2, v13

    move-object/from16 v0, v17

    move v13, v2

    :cond_15e
    :goto_15e
    add-int v16, v16, v23

    goto :goto_166

    :cond_161
    move/from16 v25, v10

    move/from16 p2, v13

    move v13, v2

    :goto_166
    add-int/lit8 v3, v3, 0x1

    move v2, v13

    move/from16 v10, v25

    move/from16 v13, p2

    goto/16 :goto_86

    :cond_16f
    move/from16 v25, v10

    move/from16 p2, v13

    const/4 v10, 0x1

    move v13, v2

    .line 237
    invoke-virtual {v7, v12, v14, v15, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    int-to-float v0, v8

    int-to-float v2, v9

    .line 238
    iget v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    iget v4, v1, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v4, v4

    invoke-virtual {v7, v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->addClipRect(FFFF)V

    .line 244
    iget-boolean v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->showSlider:Z

    if-eqz v0, :cond_19f

    .line 245
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 246
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v11}, Lio/blueflower/stapel2d/gui/ListBoxSlider;->update(Lio/blueflower/stapel2d/gui/ListBox;IF)V

    .line 247
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    iget v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v8, v2

    iget v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v9, v2

    invoke-virtual {v0, v8, v9}, Lio/blueflower/stapel2d/gui/ListBoxSlider;->draw(II)V

    goto :goto_1a5

    .line 249
    :cond_19f
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    :goto_1a5
    if-eqz p2, :cond_1ab

    .line 253
    invoke-virtual {v7, v12, v14, v15, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    return-void

    .line 255
    :cond_1ab
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public getContentHeight()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 165
    :goto_3
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 166
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    .line 167
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_25

    iget v4, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v1, v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    move v4, v0

    :goto_20
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v3

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2a
    return v2
.end method

.method public final getIndexAt(II)I
    .registers 9

    .line 361
    iget p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 363
    :goto_5
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2c

    .line 364
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    .line 365
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_27

    iget v5, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v1, v5, :cond_21

    goto :goto_22

    :cond_21
    move v4, v0

    :goto_22
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v3

    goto :goto_28

    :cond_27
    move v3, v0

    :goto_28
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const v3, 0x3f4ccccd    # 0.8f

    if-lez v1, :cond_37

    mul-float/2addr v3, p1

    sub-float/2addr p1, v3

    goto :goto_54

    :cond_37
    int-to-float v1, v2

    add-float/2addr v1, p1

    .line 370
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_54

    .line 371
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr p1, v1

    .line 374
    :cond_54
    :goto_54
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr p1, v1

    move v1, v0

    .line 375
    :goto_61
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 376
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/ListItem;

    .line 377
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 378
    iget v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v1, v3, :cond_7d

    move v3, v4

    goto :goto_7e

    :cond_7d
    move v3, v0

    :goto_7e
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v2

    if-gt p1, p2, :cond_89

    add-int v3, p1, v2

    if-ge p2, v3, :cond_89

    return v1

    :cond_89
    add-int/2addr p1, v2

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_8d
    const/4 p1, -0x1

    return p1
.end method

.method public getItem(I)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 3

    .line 117
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/ListItem;

    return-object p1
.end method

.method public final getItemY(I)I
    .registers 7

    .line 348
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 349
    :goto_8
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 350
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    .line 351
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 352
    iget v4, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v2, v4, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    move v4, v1

    :goto_25
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v3

    if-ne v2, p1, :cond_2c

    return v0

    :cond_2c
    add-int/2addr v0, v3

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_30
    return v1
.end method

.method public getSelectedItemIndex()I
    .registers 2

    .line 133
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    return v0
.end method

.method public getShiftY()F
    .registers 2

    .line 89
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    return v0
.end method

.method public isLimitYScrolling()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->limitYScrolling:Z

    return v0
.end method

.method public isScrollSensitive()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->scrollSensitive:Z

    return v0
.end method

.method public isShowBorder()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->showBorder:Z

    return v0
.end method

.method public isShowSlider()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->showSlider:Z

    return v0
.end method

.method public onClick()V
    .registers 9

    .line 323
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 326
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    goto/16 :goto_d5

    .line 328
    :cond_1e
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    .line 329
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    .line 330
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5a

    goto/16 :goto_d5

    .line 332
    :cond_5a
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 333
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 334
    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getIndexAt(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_84

    goto :goto_d5

    :cond_84
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_87
    if-ge v4, v2, :cond_b0

    .line 339
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/ListItem;

    iget v7, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v7, v4, :cond_a5

    const/4 v7, 0x1

    goto :goto_a6

    :cond_a5
    move v7, v3

    :goto_a6
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v6

    goto :goto_ac

    :cond_ab
    move v6, v3

    :goto_ac
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 341
    :cond_b0
    iput v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    .line 342
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/ListItem;

    .line 343
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    sub-int/2addr v0, v3

    .line 344
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    sub-int/2addr v1, v3

    .line 342
    invoke-virtual {v2, v0, v1}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public onUpdate()V
    .registers 7

    .line 285
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 287
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 288
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v0

    .line 289
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->inMoveMode:Z

    if-nez v3, :cond_31

    .line 290
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v3

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 291
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->inMoveMode:Z

    .line 293
    :cond_31
    iget-boolean v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->inMoveMode:Z

    if-eqz v1, :cond_ce

    .line 294
    iget v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    .line 295
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->speedY:F

    return-void

    .line 298
    :cond_4b
    iput-boolean v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->inMoveMode:Z

    move v0, v2

    move v3, v0

    .line 301
    :goto_4f
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_76

    .line 302
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/ListItem;

    .line 303
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_71

    iget v5, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    if-ne v0, v5, :cond_6b

    move v5, v1

    goto :goto_6c

    :cond_6b
    move v5, v2

    :goto_6c
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v4

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 306
    :cond_76
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    iget v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->speedY:F

    add-float/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr v1, v0

    .line 307
    iput v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->speedY:F

    .line 308
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_91

    iput v1, p0, Lio/blueflower/stapel2d/gui/ListBox;->speedY:F

    .line 310
    :cond_91
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->limitYScrolling:Z

    if-eqz v0, :cond_ce

    .line 311
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    cmpl-float v2, v0, v1

    const v4, 0x3f333333    # 0.7f

    if-lez v2, :cond_a7

    mul-float/2addr v4, v0

    sub-float/2addr v0, v4

    .line 312
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    return-void

    :cond_a7
    int-to-float v1, v3

    add-float/2addr v0, v1

    .line 313
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_ce

    .line 314
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    .line 315
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    sub-float/2addr v3, v5

    sub-float/2addr v3, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 314
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    :cond_ce
    return-void
.end method

.method public removeAllChildren()V
    .registers 4

    .line 25
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 26
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 27
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->slider:Lio/blueflower/stapel2d/gui/ListBoxSlider;

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public removeAllItems()V
    .registers 2

    .line 129
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeItem(Lio/blueflower/stapel2d/gui/ListItem;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeItemIndex(I)V
    .registers 3

    .line 125
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public selectItemIndex(I)V
    .registers 6

    const/4 v0, 0x0

    .line 137
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    .line 138
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->getItemY(I)I

    move-result p1

    if-gez p1, :cond_20

    .line 140
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    return-void

    .line 141
    :cond_20
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    iget v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    if-le v0, v2, :cond_51

    .line 142
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->items:Ljava/util/List;

    iget v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->selectedItem:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr p1, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr p1, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    :cond_51
    return-void
.end method

.method public setLimitYScrolling(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->limitYScrolling:Z

    return-void
.end method

.method public setScrollSensitive(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->scrollSensitive:Z

    return-void
.end method

.method public setShiftToBottom()V
    .registers 3

    .line 105
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method

.method public setShiftY(F)V
    .registers 2

    .line 98
    iput p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    return-void
.end method

.method public setShowBorder(Z)V
    .registers 2

    .line 151
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->showBorder:Z

    return-void
.end method

.method public setShowSlider(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->showSlider:Z

    return-void
.end method

.method public setVisibilityOffsets(II)V
    .registers 3

    .line 159
    iput p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->visibilityOffsetTop:I

    .line 160
    iput p2, p0, Lio/blueflower/stapel2d/gui/ListBox;->visibilityOffsetBottom:I

    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 7

    .line 261
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 262
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v0

    .line 263
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_64

    .line 266
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/ListBox;->scrollSensitive:Z

    if-eqz v3, :cond_64

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 267
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getCursor()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 269
    iget p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    iput p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    .line 271
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result p1

    .line 273
    iget v0, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_44

    .line 274
    iput v2, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    return-object v1

    :cond_44
    int-to-float v2, p1

    add-float/2addr v0, v2

    .line 275
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_63

    .line 276
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/blueflower/stapel2d/gui/ListBox;->shiftY:F

    :cond_63
    return-object v1

    :cond_64
    const/4 p1, 0x0

    return-object p1
.end method
