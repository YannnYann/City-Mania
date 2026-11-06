###### Class info.flowersoft.theotown.ui.Credits (info.flowersoft.theotown.ui.Credits)
.class public Linfo/flowersoft/theotown/ui/Credits;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "Credits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/Credits$Character;
    }
.end annotation


# instance fields
.field public contentHeight:I

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public shiftY:F


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 7

    .line 26
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 27
    iput-object p6, p1, Linfo/flowersoft/theotown/ui/Credits;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setGreedy(Z)V

    return-void
.end method


# virtual methods
.method public addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V
    .registers 11

    .line 109
    new-instance v6, Linfo/flowersoft/theotown/ui/Credits$2;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v6, p0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/Credits$2;-><init>(Linfo/flowersoft/theotown/ui/Credits;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 124
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    div-int/lit8 v4, p1, 0x2

    move-object v6, v0

    .line 127
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/Credits$Character;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, v0

    move-object v0, v6

    .line 128
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 129
    invoke-virtual {p1, v1, v8}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 131
    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/Credits$Character;->getIcon()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_56

    move-object v6, v0

    .line 132
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/Credits$Character;->getIcon()I

    move-result v1

    add-int/lit8 v2, v4, 0xa

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    sub-int/2addr p1, v4

    add-int/lit8 v4, p1, -0xa

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {v0, p1, v8}, Lio/blueflower/stapel2d/gui/Icon;->setAlignment(FF)V

    :cond_56
    return-void
.end method

.method public addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 12

    .line 75
    new-instance v6, Linfo/flowersoft/theotown/ui/Credits$1;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v6, p0

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/Credits$1;-><init>(Linfo/flowersoft/theotown/ui/Credits;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    const/4 p3, 0x5

    const/16 v1, 0xf

    .line 88
    invoke-virtual {v0, p3, v1, p3, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    const/4 p3, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v6, v0

    if-eq p1, p3, :cond_31

    .line 93
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, v0

    move-object v0, v6

    .line 94
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    const/4 p3, 0x0

    .line 95
    invoke-virtual {p1, v7, p3}, Lio/blueflower/stapel2d/gui/Icon;->setAlignment(FF)V

    const/16 v2, 0x32

    :cond_31
    move v3, v2

    .line 99
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, v0

    move-object v0, v6

    .line 100
    invoke-virtual {p1, v7, v7}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 101
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 102
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 103
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    .line 105
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result p2

    add-int/2addr v3, p2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result p2

    add-int/2addr v3, p2

    invoke-virtual {v0, p1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public draw(II)V
    .registers 8

    .line 62
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 63
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 64
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 65
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 66
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 68
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 70
    iget v0, p0, Linfo/flowersoft/theotown/ui/Credits;->contentHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 71
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public onUpdate()V
    .registers 7

    .line 33
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 35
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 36
    iget v0, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Credits;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Credits;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchMapper;->getScrollChange()F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    goto :goto_6b

    .line 38
    :cond_25
    iget v2, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v0

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    .line 39
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gtz v0, :cond_54

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6b

    :cond_54
    move v0, v1

    .line 40
    :goto_55
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 41
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 47
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Gadget;

    .line 48
    iget v4, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 49
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_72

    :cond_8f
    add-int/lit8 v0, v2, 0x14

    .line 51
    iput v0, p0, Linfo/flowersoft/theotown/ui/Credits;->contentHeight:I

    .line 53
    iget v1, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    int-to-float v2, v2

    add-float v3, v1, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a2

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 54
    iput v1, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    return-void

    :cond_a2
    add-float/2addr v2, v1

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_ac

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 56
    iput v1, p0, Linfo/flowersoft/theotown/ui/Credits;->shiftY:F

    :cond_ac
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Credits.AnonymousClass1 (info.flowersoft.theotown.ui.Credits$1)
.class Linfo/flowersoft/theotown/ui/Credits$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Credits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Credits;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Credits;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
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

    .line 75
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Credits$1;->this$0:Linfo/flowersoft/theotown/ui/Credits;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/Credits$1;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 78
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Credits$1;->val$onClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Credits.AnonymousClass2 (info.flowersoft.theotown.ui.Credits$2)
.class Linfo/flowersoft/theotown/ui/Credits$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Credits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Credits;

.field public final synthetic val$character:Linfo/flowersoft/theotown/ui/Credits$Character;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Credits;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Credits$Character;)V
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

    .line 109
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Credits$2;->this$0:Linfo/flowersoft/theotown/ui/Credits;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/Credits$2;->val$character:Linfo/flowersoft/theotown/ui/Credits$Character;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 112
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Credits$2;->val$character:Linfo/flowersoft/theotown/ui/Credits$Character;

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Credits$Character;->onClick()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 119
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Credits.Character (info.flowersoft.theotown.ui.Credits$Character)
.class public interface abstract Linfo/flowersoft/theotown/ui/Credits$Character;
.super Ljava/lang/Object;
.source "Credits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/Credits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Character"
.end annotation


# virtual methods
.method public abstract getIcon()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onClick()Ljava/lang/Runnable;
.end method
