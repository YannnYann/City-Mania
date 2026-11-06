###### Class info.flowersoft.theotown.ui.ScrollableTextFrame (info.flowersoft.theotown.ui.ScrollableTextFrame)
.class public Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "ScrollableTextFrame.java"


# instance fields
.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

.field public textFrameItem:Lio/blueflower/stapel2d/gui/ListItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 23
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 25
    new-instance v0, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p2, v0

    move-object v0, v5

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 26
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 28
    iget-object p2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    .line 29
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 30
    iget-object p1, v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrameItem:Lio/blueflower/stapel2d/gui/ListItem;

    return-void
.end method


# virtual methods
.method public addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;
    .registers 10

    .line 46
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1, p1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 48
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 49
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/gui/TextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 50
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance p2, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;-><init>(Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Ljava/lang/String;Lio/blueflower/stapel2d/gui/TextFrame;)V

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-object v0
.end method

.method public draw(II)V
    .registers 9

    .line 67
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 68
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->isClippingActive()Z

    move-result v1

    .line 69
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectX()F

    move-result v2

    .line 70
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectY()F

    move-result v3

    .line 71
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectW()F

    move-result v4

    .line 72
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getClipRectH()F

    move-result v5

    .line 73
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    if-eqz v1, :cond_20

    .line 75
    invoke-virtual {v0, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    :cond_20
    return-void
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    return-object v0
.end method

.method public getListBox()Lio/blueflower/stapel2d/gui/ListBox;
    .registers 2

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 130
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 131
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v3

    .line 132
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrameItem:Lio/blueflower/stapel2d/gui/ListItem;

    if-eq v3, v4, :cond_1b

    .line 133
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v3

    :goto_19
    add-int/2addr v2, v3

    goto :goto_22

    .line 135
    :cond_1b
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result v3

    goto :goto_19

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_25
    return v2
.end method

.method public isBold()Z
    .registers 2

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->isBold()Z

    move-result v0

    return v0
.end method

.method public isShowBorder()Z
    .registers 2

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->isShowBorder()Z

    move-result v0

    return v0
.end method

.method public setAlignment(FF)V
    .registers 4

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    return-void
.end method

.method public setBold(Z)V
    .registers 3

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->setBold(Z)V

    return-void
.end method

.method public setColor(III)V
    .registers 5

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1, p2, p3}, Lio/blueflower/stapel2d/gui/Label;->setColor(III)V

    return-void
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 38
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setColor(III)V

    return-void
.end method

.method public setFont(Lio/blueflower/stapel2d/drawing/Font;)V
    .registers 3

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/gui/TextFrame;->setPadding(IIII)V

    return-void
.end method

.method public setShowBorder(Z)V
    .registers 3

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->setShowBorder(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->textFrame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ScrollableTextFrame.AnonymousClass1 (info.flowersoft.theotown.ui.ScrollableTextFrame$1)
.class Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ScrollableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public final synthetic val$frame:Lio/blueflower/stapel2d/gui/TextFrame;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Ljava/lang/String;Lio/blueflower/stapel2d/gui/TextFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->this$0:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 53
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {p1, p3, p4}, Lio/blueflower/stapel2d/gui/TextFrame;->draw(II)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 58
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame$1;->val$frame:Lio/blueflower/stapel2d/gui/TextFrame;

    .line 59
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    .line 58
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
