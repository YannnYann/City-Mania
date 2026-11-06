###### Class info.flowersoft.theotown.ui.selectable.DefaultSelectable (info.flowersoft.theotown.ui.selectable.DefaultSelectable)
.class public abstract Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;
.super Ljava/lang/Object;
.source "DefaultSelectable.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/Selectable;


# static fields
.field public static master:Lio/blueflower/stapel2d/gui/Master;


# instance fields
.field public final UNKNOWN_PREVIEW_FRAMES:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

.field public labelList:Lio/blueflower/stapel2d/gui/ElementLine;

.field public line:Lio/blueflower/stapel2d/gui/ElementLine;

.field public onSelect:Ljava/lang/Runnable;

.field public panel:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "$logo_unknown00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->UNKNOWN_PREVIEW_FRAMES:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public static setMaster(Lio/blueflower/stapel2d/gui/Master;)V
    .registers 1

    .line 105
    sput-object p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->master:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method


# virtual methods
.method public addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/GoldButton;"
        }
    .end annotation

    .line 142
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 143
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;-><init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    const/4 p1, 0x0

    .line 157
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-object v0
.end method

.method public allowEasySelect()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 12

    .line 110
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    sput-object v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->master:Lio/blueflower/stapel2d/gui/Master;

    .line 111
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 113
    new-instance v2, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 114
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1e

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v7

    const/16 v8, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 116
    new-instance v2, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 117
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v7

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;

    .line 120
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 134
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectIcon()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectText()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;)V

    new-instance v5, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;)V

    invoke-virtual {p0, v0, v3, v4, v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v3, 0x64

    .line 135
    invoke-virtual {v0, v3, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setMinimumSize(II)V

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method

.method public countFrames()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V
    .registers 9

    .line 225
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v0

    mul-float/2addr p4, v0

    const/high16 v1, 0x41d00000    # 26.0f

    sub-float/2addr p4, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p4, v2

    float-to-int p4, p4

    add-int/2addr p2, p4

    mul-float/2addr p5, v0

    sub-float/2addr p5, v1

    div-float/2addr p5, v2

    float-to-int p4, p5

    add-int/2addr p3, p4

    .line 228
    sget-object p4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p4, 0xff

    .line 229
    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p4, 0x3f800000    # 1.0f

    .line 230
    invoke-virtual {p1, p4, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 231
    sget-object p4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p2, p2

    int-to-float p3, p3

    sget p5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    invoke-virtual {p1, p4, p2, p3, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 232
    invoke-virtual {p1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 14

    .line 193
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v0

    .line 194
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v1

    .line 196
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0xff

    .line 197
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 199
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame()I

    move-result v3

    .line 200
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v4

    mul-float/2addr v4, v0

    .line 201
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v5

    mul-float/2addr v5, v1

    .line 203
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame2()I

    move-result v6

    if-lez v6, :cond_39

    .line 207
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v7, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v7

    mul-float/2addr v7, v0

    .line 208
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_3b

    :cond_39
    const/4 v7, 0x0

    move v0, v7

    .line 211
    :goto_3b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->hasRequirement()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_73

    const/16 v1, 0xc8

    .line 212
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 213
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v8, p2

    add-float/2addr v4, v8

    int-to-float v9, p3

    add-float/2addr v5, v9

    invoke-virtual {p1, v1, v4, v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-lez v6, :cond_5e

    .line 214
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr v8, v7

    add-float/2addr v9, v0

    invoke-virtual {p1, v1, v8, v9, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 215
    :cond_5e
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 217
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    return-void

    :cond_73
    move-object v2, p1

    move p1, p2

    move p2, p3

    .line 219
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p1, p1

    add-float/2addr v4, p1

    int-to-float p2, p2

    add-float/2addr v5, p2

    invoke-virtual {v2, p3, v4, v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-lez v6, :cond_88

    .line 220
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr p1, v7

    add-float/2addr p2, v0

    invoke-virtual {v2, p3, p1, p2, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_88
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

.method public getLabelHeight()I
    .registers 2

    .line 101
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getLabelList()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMaster()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 50
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->master:Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 3

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->UNKNOWN_PREVIEW_FRAMES:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPreviewFrame2()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewHeight()I
    .registers 3

    .line 188
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 3

    .line 183
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSelectButton()Lio/blueflower/stapel2d/gui/Button;
    .registers 2

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    return-object v0
.end method

.method public abstract getSelectIcon()I
.end method

.method public getSelectId()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, "cmdSelectableSelect"

    return-object v0
.end method

.method public abstract getSelectText()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hasRequirement()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 251
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 255
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
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
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->hasRequirement()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public isUnlocked()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public select()V
    .registers 2

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->onSelect:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOnSelect(Ljava/lang/Runnable;)V
    .registers 2

    .line 70
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->onSelect:Ljava/lang/Runnable;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.DefaultSelectable.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.DefaultSelectable$1)
.class public Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;
.super Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
.source "DefaultSelectable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 4

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 124
    :goto_12
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 125
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->labelList:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 128
    :cond_34
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 129
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.DefaultSelectable.AnonymousClass2 (info.flowersoft.theotown.ui.selectable.DefaultSelectable$2)
.class Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "DefaultSelectable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

.field public final synthetic val$onClick:Ljava/lang/Runnable;

.field public final synthetic val$visibility:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->val$onClick:Ljava/lang/Runnable;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->val$visibility:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->val$visibility:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 146
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$2;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.selectable.DefaultSelectable$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->isSelectable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
