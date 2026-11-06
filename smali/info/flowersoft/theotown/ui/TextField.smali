###### Class info.flowersoft.theotown.ui.TextField (info.flowersoft.theotown.ui.TextField)
.class public Linfo/flowersoft/theotown/ui/TextField;
.super Lio/blueflower/stapel2d/gui/Button;
.source "TextField.java"


# static fields
.field public static final KEY_FILTER:[I

.field public static idCounter:I

.field public static selectedId:I


# instance fields
.field public cmdClear:Linfo/flowersoft/theotown/ui/IconButton;

.field public cursorPosition:I

.field public hint:Ljava/lang/String;

.field public final id:I

.field public lastChangeMS:J

.field public lastText:Ljava/lang/String;

.field public password:Z

.field public shiftX:I

.field public text:Ljava/lang/String;

.field public textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x6f

    const/16 v1, 0x3d

    const/16 v2, 0x42

    .line 26
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/TextField;->KEY_FILTER:[I

    const/4 v0, 0x0

    .line 28
    sput v0, Linfo/flowersoft/theotown/ui/TextField;->idCounter:I

    const/4 v0, -0x1

    .line 29
    sput v0, Linfo/flowersoft/theotown/ui/TextField;->selectedId:I

    return-void
.end method

.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 15

    .line 50
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, p0

    .line 31
    sget p5, Linfo/flowersoft/theotown/ui/TextField;->idCounter:I

    add-int/lit8 v0, p5, 0x1

    sput v0, Linfo/flowersoft/theotown/ui/TextField;->idCounter:I

    iput p5, v1, Linfo/flowersoft/theotown/ui/TextField;->id:I

    const/4 p5, -0x1

    .line 40
    iput p5, v1, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    .line 52
    const-string v3, ""

    iput-object v3, v1, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 53
    const-string p5, ""

    iput-object p5, v1, Linfo/flowersoft/theotown/ui/TextField;->lastText:Ljava/lang/String;

    .line 55
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object p5, v1, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 56
    invoke-virtual {p5}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result p5

    float-to-int v4, p5

    iget-object p5, v1, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p5}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result p5

    float-to-int v5, p5

    iget-object p5, v1, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p5}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p5

    float-to-int v6, p5

    iget-object p5, v1, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p5}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p5

    float-to-int v7, p5

    .line 55
    invoke-interface/range {v2 .. v7}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->createTextEditor(Ljava/lang/String;IIII)Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    move-result-object p5

    iput-object p5, v1, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/TextField;->setShape(IIII)V

    .line 59
    iget-object p1, v1, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz p1, :cond_43

    return-void

    :cond_43
    const/16 p1, 0x1e

    .line 64
    iput p1, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/ui/TextField$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLEAR_TEXT:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    add-int/lit8 v4, p1, 0x2

    iget p1, v1, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    add-int/lit8 v6, p1, -0x4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    add-int/lit8 v7, p1, -0x4

    const-string v3, ""

    const/4 v5, 0x2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/TextField$1;-><init>(Linfo/flowersoft/theotown/ui/TextField;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/TextField;->cmdClear:Linfo/flowersoft/theotown/ui/IconButton;

    .line 76
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object p1

    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Icon;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/ui/TextField;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 135
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 137
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v2, :cond_9

    return-void

    .line 142
    :cond_9
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 144
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 145
    iget-boolean v3, p0, Linfo/flowersoft/theotown/ui/TextField;->password:Z

    if-eqz v3, :cond_23

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [C

    const/16 v3, 0x25cf

    .line 147
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 148
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    move-object v10, v3

    goto :goto_24

    :cond_23
    move-object v10, v2

    .line 151
    :goto_24
    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 152
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v5

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v7, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 154
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 155
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 156
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TextField;->hint:Ljava/lang/String;

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    .line 157
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 158
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TextField;->hint:Ljava/lang/String;

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x5

    iget v4, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v2, p2

    int-to-float v5, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, v2

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v3, v10

    goto :goto_b2

    :cond_97
    move-object v2, v0

    .line 160
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    iget v3, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, v0

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v10

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 163
    :goto_b2
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    const/4 v4, 0x0

    if-ltz v0, :cond_e6

    .line 164
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    .line 165
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 166
    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    if-le v5, v6, :cond_de

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    sub-int/2addr v5, v0

    iput v5, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    .line 167
    :cond_de
    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v5, v0

    if-gez v5, :cond_e6

    neg-int v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    .line 170
    :cond_e6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->isActive()Z

    move-result v0

    if-eqz v0, :cond_13a

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v5, :cond_13a

    .line 171
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    iget-wide v7, p0, Linfo/flowersoft/theotown/ui/TextField;->lastChangeMS:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x320

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x190

    cmp-long v0, v5, v7

    if-gez v0, :cond_13a

    .line 172
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v0, v5

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v0, v4

    .line 173
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    move v3, v2

    .line 174
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v0, v0

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v6, v3

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v5, 0x3f800000    # 1.0f

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 177
    :cond_13a
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    .line 178
    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public free()V
    .registers 2

    .line 315
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 317
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_15

    .line 318
    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->dispose()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    :cond_15
    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .registers 3

    .line 325
    sget v0, Linfo/flowersoft/theotown/ui/TextField;->selectedId:I

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->id:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public layout()V
    .registers 6

    .line 81
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cmdClear:Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v0, :cond_1a

    .line 85
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/IconButton;->setShape(IIII)V

    :cond_1a
    return-void
.end method

.method public final moveCursorLeft()V
    .registers 3

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-lt v0, v1, :cond_19

    if-lez v1, :cond_19

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_19
    return-void
.end method

.method public final moveCursorRight()V
    .registers 3

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-le v0, v1, :cond_17

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_17
    return-void
.end method

.method public onClick()V
    .registers 9

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_5

    goto :goto_73

    .line 196
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_74

    .line 197
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->isActive()Z

    move-result v0

    if-nez v0, :cond_19

    .line 198
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->id:I

    sput v0, Linfo/flowersoft/theotown/ui/TextField;->selectedId:I

    .line 200
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 201
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/TextField;->password:Z

    if-eqz v1, :cond_30

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/16 v1, 0x25cf

    .line 203
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 204
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .line 206
    :cond_30
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 207
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v3

    mul-float/2addr v2, v3

    .line 208
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    iget v4, p0, Linfo/flowersoft/theotown/ui/TextField;->shiftX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 209
    iput v4, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    .line 210
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 211
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 212
    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Font;->getCodepointWidth(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    add-float/2addr v7, v3

    cmpl-float v7, v2, v7

    if-lez v7, :cond_6c

    .line 214
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v7, v4

    iput v7, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_6c
    add-float/2addr v3, v6

    .line 217
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_4e

    :cond_73
    :goto_73
    return-void

    .line 220
    :cond_74
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    new-instance v1, Linfo/flowersoft/theotown/ui/TextField$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/TextField$2;-><init>(Linfo/flowersoft/theotown/ui/TextField;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TextField;->title:Ljava/lang/String;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->hint:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChange(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 3

    .line 303
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 305
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->lastText:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 307
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/TextField;->lastChangeMS:J

    .line 308
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->lastText:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/TextField;->onTextChange(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public setActive()V
    .registers 2

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->isActive()Z

    move-result v0

    if-nez v0, :cond_16

    .line 185
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->id:I

    sput v0, Linfo/flowersoft/theotown/ui/TextField;->selectedId:I

    .line 186
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-gez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_16
    return-void
.end method

.method public setAutoFill()V
    .registers 3

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_9

    .line 106
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/TextField;->password:Z

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->markAsAutoFill(Z)V

    :cond_9
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    .line 129
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField;->hint:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->setHint(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setPassword(Z)V
    .registers 3

    .line 94
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/TextField;->password:Z

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_9

    .line 96
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->setPassword(Z)V

    :cond_9
    return-void
.end method

.method public setShape(IIII)V
    .registers 6

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 113
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz p1, :cond_26

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result p3

    float-to-int p3, p3

    iget-object p4, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p4}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p1, p2, p3, p4, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->setShape(IIII)V

    :cond_26
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_7

    .line 334
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->setText(Ljava/lang/String;)V

    .line 336
    :cond_7
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 337
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-ltz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_13
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField;->title:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 118
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eq p1, v0, :cond_10

    .line 119
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;->setVisible(Z)V

    :cond_10
    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 9

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-nez v0, :cond_1a4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1a4

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->isActive()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_1a4

    .line 240
    :cond_16
    iget v0, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    .line 241
    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->hasTypedChar()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5f

    .line 242
    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->getTypedChar()C

    move-result v1

    .line 243
    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 244
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 245
    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    add-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_5f
    const/16 v1, 0x81

    .line 249
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1

    if-nez v1, :cond_71

    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_71

    :cond_70
    move v2, v3

    :cond_71
    :goto_71
    const/16 v1, 0x43

    .line 251
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-lez v1, :cond_ae

    .line 252
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    sub-int/2addr v6, v1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 254
    iget v4, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    sub-int/2addr v4, v1

    iput v4, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_ae
    const/16 v1, 0x70

    .line 256
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v1

    if-eqz v1, :cond_ea

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_ea

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    :cond_ea
    const/16 v1, 0x15

    .line 259
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v1

    if-eqz v1, :cond_f9

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-lez v1, :cond_f9

    .line 260
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->moveCursorLeft()V

    :cond_f9
    const/16 v1, 0x16

    .line 262
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_10e

    .line 263
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->moveCursorRight()V

    :cond_10e
    const/4 v1, 0x3

    .line 265
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_11b

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-lez v1, :cond_11b

    .line 266
    iput v3, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_11b
    const/16 v1, 0x7b

    .line 268
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_135

    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_135

    .line 269
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    :cond_135
    if-eqz v2, :cond_152

    const/16 v1, 0x1f

    .line 271
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_152

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_152

    .line 272
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v1

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    :cond_152
    if-eqz v2, :cond_195

    const/16 v1, 0x32

    .line 274
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 275
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_195

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v5, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    iget v4, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/TextField;->text:Ljava/lang/String;

    .line 278
    iget v2, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    .line 282
    :cond_195
    iget v1, p0, Linfo/flowersoft/theotown/ui/TextField;->cursorPosition:I

    if-eq v0, v1, :cond_19f

    .line 283
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/TextField;->lastChangeMS:J

    .line 286
    :cond_19f
    sget-object v0, Linfo/flowersoft/theotown/ui/TextField;->KEY_FILTER:[I

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->filteredFlush([I)V

    :cond_1a4
    :goto_1a4
    return-void
.end method

.method public usesNativeTextField()Z
    .registers 2

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField;->textEditor:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.TextField.AnonymousClass1 (info.flowersoft.theotown.ui.TextField$1)
.class Linfo/flowersoft/theotown/ui/TextField$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TextField;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField$1;->this$0:Linfo/flowersoft/theotown/ui/TextField;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    add-int/lit8 p2, p2, 0x1

    .line 73
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 3

    .line 68
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField$1;->this$0:Linfo/flowersoft/theotown/ui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TextField.AnonymousClass2 (info.flowersoft.theotown.ui.TextField$2)
.class Linfo/flowersoft/theotown/ui/TextField$2;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/Input$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TextField;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TextField$2;->this$0:Linfo/flowersoft/theotown/ui/TextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .registers 1

    .line 0
    return-void
.end method

.method public input(Ljava/lang/String;)V
    .registers 3

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField$2;->this$0:Linfo/flowersoft/theotown/ui/TextField;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/TextField;->access$002(Linfo/flowersoft/theotown/ui/TextField;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TextField$2;->this$0:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/TextField;->onTextChange(Ljava/lang/String;)V

    return-void
.end method
