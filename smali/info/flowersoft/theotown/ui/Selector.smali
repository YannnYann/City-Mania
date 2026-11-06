###### Class info.flowersoft.theotown.ui.Selector (info.flowersoft.theotown.ui.Selector)
.class public Linfo/flowersoft/theotown/ui/Selector;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;,
        Linfo/flowersoft/theotown/ui/Selector$SelectableItem;
    }
.end annotation


# instance fields
.field public lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

.field public final lblName:Lio/blueflower/stapel2d/gui/Label;

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public final panel:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 39
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 41
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/lit16 v0, v0, -0xf0

    .line 43
    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0xf0

    add-int/lit16 v1, v1, -0xa0

    .line 44
    div-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x82

    if-eqz p4, :cond_2f

    .line 46
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    .line 47
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    :cond_2f
    const/4 v7, 0x0

    .line 49
    invoke-virtual {p0, v7, v7, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 50
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    mul-int/lit8 v0, v0, 0x3

    .line 52
    div-int/lit8 v3, v0, 0x7

    if-eqz p1, :cond_52

    .line 57
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    const/4 v2, 0x2

    move v4, v3

    const/4 v3, 0x0

    const/16 v5, 0x14

    move-object v6, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v8, v4

    .line 58
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    move v9, v5

    goto :goto_54

    :cond_52
    move v8, v3

    move v9, v7

    .line 61
    :goto_54
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    sub-int/2addr v1, v8

    add-int/lit8 v4, v1, -0x2

    const/16 v5, 0x14

    const-string v1, ""

    const/4 v3, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v10, v2

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->lblName:Lio/blueflower/stapel2d/gui/Label;

    .line 62
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 64
    new-instance v0, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    sub-int v4, v1, v9

    const/4 v1, 0x0

    move-object v5, p0

    move v3, v8

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v4, v3

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 65
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/Selectable;

    .line 66
    invoke-interface {v1}, Linfo/flowersoft/theotown/ui/Selectable;->isActive()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 67
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v3, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;

    new-instance v5, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;

    invoke-direct {v5, p0, v1}, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;-><init>(Linfo/flowersoft/theotown/ui/Selector;Linfo/flowersoft/theotown/ui/Selectable;)V

    invoke-direct {v3, v5}, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;-><init>(Lio/blueflower/stapel2d/gui/ListItem;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_88

    .line 71
    :cond_aa
    new-instance v0, Linfo/flowersoft/theotown/ui/Selector$1;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x14

    const/16 v3, 0x14

    move-object v6, p0

    move-object v1, p0

    move v2, v10

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Selector$1;-><init>(Linfo/flowersoft/theotown/ui/Selector;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 78
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/ui/Selector;->buildPanel(Z)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/Selector;Z)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Selector;->buildPanel(Z)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/Selector;)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 1

    .line 24
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    return-object p0
.end method

.method private countItems()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 118
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Selector;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v2

    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->isMarkable()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method


# virtual methods
.method public final buildPanel(Z)V
    .registers 6

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_75

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Selector;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->isMarkable()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 167
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 168
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 170
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->lblName:Lio/blueflower/stapel2d/gui/Label;

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/ui/Selectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 174
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    if-ne v2, v0, :cond_57

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->allowEasySelect()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 175
    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p1, :cond_57

    .line 177
    instance-of p1, v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    if-eqz p1, :cond_4e

    .line 178
    move-object p1, v0

    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectButton()Lio/blueflower/stapel2d/gui/Button;

    move-result-object v1

    :cond_4e
    if-eqz v1, :cond_54

    .line 182
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Button;->click()V

    goto :goto_57

    .line 184
    :cond_54
    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->select()V

    .line 188
    :cond_57
    :goto_57
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    return-void

    :cond_5a
    const/4 p1, 0x0

    .line 190
    :goto_5b
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    if-ge p1, v0, :cond_74

    .line 191
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Selector;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    if-ne v0, v1, :cond_71

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    return-void

    :cond_71
    add-int/lit8 p1, p1, 0x1

    goto :goto_5b

    :cond_74
    return-void

    .line 198
    :cond_75
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 83
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public focus(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 4

    const/4 v0, 0x0

    .line 87
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 88
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->getInnerItem()Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->access$000(Linfo/flowersoft/theotown/ui/Selector$SelectableItem;)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v1

    if-ne v1, p1, :cond_25

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 90
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Selector;->rebuild()V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method public final getItem(I)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 127
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 128
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Selector;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v2

    .line 129
    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->isMarkable()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_1a

    :cond_15
    if-ne v1, p1, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getListBox()Lio/blueflower/stapel2d/gui/ListBox;
    .registers 2

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object v0
.end method

.method public final getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 3

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->access$100(Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->getSelectable()Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p1

    return-object p1
.end method

.method public final getSelectedIndex()I
    .registers 6

    .line 137
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/Selector;->countItems()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 138
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 140
    :goto_10
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Selector;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 141
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/Selector;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v4

    .line 142
    invoke-interface {v4}, Linfo/flowersoft/theotown/ui/Selectable;->isMarkable()Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_28

    :cond_23
    if-ne v2, v0, :cond_26

    return v3

    :cond_26
    add-int/lit8 v3, v3, 0x1

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2b
    return v1
.end method

.method public rebuild()V
    .registers 2

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->lastClicked:Linfo/flowersoft/theotown/ui/Selectable;

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Selector;->buildPanel(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector;->lblName:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 98
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 99
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/Selector;->countItems()I

    move-result v0

    const/16 v1, 0x3d

    .line 100
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-lez v0, :cond_3e

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Selector;->getSelectedIndex()I

    move-result v1

    const/16 v2, 0x3b

    .line 102
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v2

    if-nez v2, :cond_32

    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_32

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 105
    rem-int/2addr v1, v0

    goto :goto_36

    :cond_32
    :goto_32
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 103
    rem-int/2addr v1, v0

    .line 107
    :goto_36
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/Selector;->getItem(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Selector;->focus(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void

    :cond_3e
    const/16 v0, 0x42

    .line 108
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 109
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Selector;->getSelectedIndex()I

    move-result p1

    if-ltz p1, :cond_53

    .line 110
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Selector;->getItem(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p1

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->select()V

    :cond_53
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Selector.AnonymousClass1 (info.flowersoft.theotown.ui.Selector$1)
.class Linfo/flowersoft/theotown/ui/Selector$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Selector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Selector;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$1;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 74
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Selector.SelectableItem (info.flowersoft.theotown.ui.Selector$SelectableItem)
.class public Linfo/flowersoft/theotown/ui/Selector$SelectableItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectableItem"
.end annotation


# instance fields
.field public final selectable:Linfo/flowersoft/theotown/ui/Selectable;

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Selector;

.field public width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Selector;Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    const/4 p1, 0x0

    .line 242
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 243
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/Selector$SelectableItem;)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 1

    .line 235
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    return-object p0
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 12

    .line 252
    invoke-virtual/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object p1, p0

    .line 254
    iput p5, p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->width:I

    .line 256
    iget-object p2, p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    iget-object v0, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 258
    invoke-interface {p2}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewWidth()I

    move-result v1

    sub-int v1, p5, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    add-int/lit8 v2, p4, 0x2

    iget-object v3, p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 259
    invoke-interface {v3}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result v3

    sub-int/2addr v3, p6

    add-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 256
    invoke-interface {p2, v0, v1, v2}, Linfo/flowersoft/theotown/ui/Selectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 261
    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 263
    iget-object p2, p1, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {p2}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_53

    .line 264
    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    add-int/lit8 p6, p6, -0x1a

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p4, p6

    int-to-float p4, p4

    sget p6, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    invoke-virtual {p2, v0, v1, p4, p6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 265
    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/2addr p3, p5

    add-int/lit8 p3, p3, -0x1c

    int-to-float p3, p3

    sget p5, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    invoke-virtual {p2, p6, p3, p4, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_53
    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 271
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result p1

    const/16 v0, 0x40

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public getSelectable()Linfo/flowersoft/theotown/ui/Selectable;
    .registers 2

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    return-object v0
.end method

.method public onClick(II)V
    .registers 5

    .line 277
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {p2}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_41

    const/16 p2, 0x1c

    if-le p1, p2, :cond_13

    iget v1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->width:I

    sub-int/2addr v1, p2

    if-ge p1, v1, :cond_13

    goto :goto_41

    :cond_13
    const/4 v0, 0x0

    if-le p1, p2, :cond_21

    .line 281
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->nextFrame()V

    .line 282
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/Selector;->access$200(Linfo/flowersoft/theotown/ui/Selector;Z)V

    return-void

    .line 283
    :cond_21
    iget v1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->width:I

    sub-int/2addr v1, p2

    if-ge p1, v1, :cond_31

    .line 284
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->prevFrame()V

    .line 285
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/Selector;->access$200(Linfo/flowersoft/theotown/ui/Selector;Z)V

    return-void

    .line 286
    :cond_31
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/Selector;->access$300(Linfo/flowersoft/theotown/ui/Selector;)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->selectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-eq p1, p2, :cond_40

    .line 287
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/Selector;->access$200(Linfo/flowersoft/theotown/ui/Selector;Z)V

    :cond_40
    return-void

    .line 278
    :cond_41
    :goto_41
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItem;->this$0:Linfo/flowersoft/theotown/ui/Selector;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/Selector;->access$200(Linfo/flowersoft/theotown/ui/Selector;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Selector.SelectableItemWrapper (info.flowersoft.theotown.ui.Selector$SelectableItemWrapper)
.class public final Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;
.super Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectableItemWrapper"
.end annotation


# instance fields
.field public final listItem:Lio/blueflower/stapel2d/gui/ListItem;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/ListItem;)V
    .registers 3

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;-><init>(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 1

    .line 207
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    return-object p0
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    return-void
.end method

.method public getInnerItem()Lio/blueflower/stapel2d/gui/ListItem;
    .registers 2

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    return-object v0
.end method

.method public getTargetHeight(Z)I
    .registers 3

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result p1

    return p1
.end method

.method public onClick(II)V
    .registers 4

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Selector$SelectableItemWrapper;->listItem:Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    return-void
.end method
