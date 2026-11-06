###### Class info.flowersoft.theotown.ui.PopupBuilder (info.flowersoft.theotown.ui.PopupBuilder)
.class public Linfo/flowersoft/theotown/ui/PopupBuilder;
.super Ljava/lang/Object;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;
    }
.end annotation


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final border:I

.field public final enableds:Lio/blueflower/stapel2d/util/IntList;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public final iconWidth:I

.field public final icons:Lio/blueflower/stapel2d/util/IntList;

.field public final itemHeight:I

.field public final itemWidth:I

.field public final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onCancel:Ljava/lang/Runnable;

.field public onClose:Ljava/lang/Runnable;

.field public selectedButton:Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;

.field public sourceHeight:I

.field public sourceWidth:I

.field public sourceX:I

.field public sourceY:I

.field public final spacing:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    .line 25
    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->itemWidth:I

    const/16 v0, 0x1e

    .line 26
    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->iconWidth:I

    const/16 v0, 0x1a

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->itemHeight:I

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->border:I

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->spacing:I

    .line 33
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->actions:Ljava/util/List;

    .line 36
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->enableds:Lio/blueflower/stapel2d/util/IntList;

    .line 42
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 43
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceX:I

    .line 44
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceY:I

    .line 45
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceWidth:I

    .line 46
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceHeight:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;
    .registers 1

    .line 17
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onCancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;
    .registers 1

    .line 17
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onClose:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/PopupBuilder;Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;)Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;
    .registers 2

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->selectedButton:Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;

    return-object p1
.end method


# virtual methods
.method public addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 5

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 6

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 80
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->actions:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->enableds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-object p0
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v0, p1, p2, v1}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 4

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 96
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_17
    return-object p0

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/blueflower/stapel2d/gui/Panel;
    .registers 19

    move-object/from16 v1, p0

    .line 115
    :goto_2
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_34

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_34

    .line 116
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    .line 117
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 118
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->actions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->enableds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    goto :goto_2

    .line 122
    :cond_34
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_3e
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 125
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/PopupBuilder$1;-><init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v1, 0x6f

    .line 145
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 147
    new-instance v6, Linfo/flowersoft/theotown/ui/PopupBuilder$2;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v6

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/PopupBuilder$2;-><init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v11, v6

    move-object v6, v0

    const/4 v0, 0x2

    .line 158
    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    const/4 v13, 0x0

    move v2, v13

    move v7, v2

    move v14, v7

    move v15, v14

    move/from16 v16, v15

    .line 164
    :goto_80
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge v14, v0, :cond_11e

    .line 165
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    .line 166
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_9e

    if-nez v16, :cond_9e

    move/from16 v17, v12

    goto/16 :goto_118

    .line 168
    :cond_9e
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->actions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/Runnable;

    .line 169
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->enableds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v14}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    if-lez v4, :cond_b1

    move v4, v12

    goto :goto_b2

    :cond_b1
    move v4, v13

    :goto_b2
    if-nez v3, :cond_cb

    if-nez v10, :cond_cb

    add-int/lit8 v3, v7, -0x1

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder$3;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/PopupBuilder$3;-><init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    add-int/lit8 v7, v7, 0x2

    move-object/from16 v1, p0

    move v0, v7

    move/from16 v17, v12

    move v7, v2

    goto :goto_eb

    :cond_cb
    move v1, v4

    move v4, v2

    move v2, v0

    .line 184
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;

    move v5, v7

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v7

    const/16 v8, 0x1a

    move-object v9, v6

    const/16 v6, 0x1e

    move/from16 v17, v12

    move v12, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/PopupBuilder$4;-><init>(Linfo/flowersoft/theotown/ui/PopupBuilder;ILjava/lang/String;IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gui/Button;)V

    move v7, v4

    move-object v6, v9

    .line 193
    invoke-virtual {v0, v12}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    add-int/lit8 v0, v5, 0x1b

    add-int/lit8 v16, v16, 0x1

    .line 198
    :goto_eb
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v2, v0, 0x34

    .line 199
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    if-le v2, v3, :cond_115

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_115

    add-int/lit8 v2, v7, 0x78

    move v3, v0

    .line 201
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder$5;

    add-int/lit8 v5, v3, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/PopupBuilder$5;-><init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    add-int/lit8 v2, v7, 0x7b

    move v7, v13

    move/from16 v16, v7

    goto :goto_118

    :cond_115
    move v3, v0

    move v2, v7

    move v7, v3

    :goto_118
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v17

    goto/16 :goto_80

    :cond_11e
    move v7, v2

    add-int/lit8 v2, v7, 0x7c

    add-int/lit8 v15, v15, 0x3

    .line 217
    invoke-virtual {v6, v2, v15}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 219
    iget v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceX:I

    iget v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceWidth:I

    add-int/2addr v2, v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceY:I

    iget v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setAbsolutePosition(II)V

    .line 221
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_165

    .line 222
    iget v0, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceX:I

    iget v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceWidth:I

    add-int/2addr v0, v2

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setAbsolutePosition(II)V

    .line 225
    :cond_165
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_18b

    .line 226
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    iget v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceY:I

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v6, v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setAbsolutePosition(II)V

    .line 229
    :cond_18b
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/PopupBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setAbsolutePosition(II)V

    return-object v6
.end method

.method public clear()V
    .registers 2

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onClose:Ljava/lang/Runnable;

    .line 110
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onCancel:Ljava/lang/Runnable;

    return-void
.end method

.method public getSelectedButton()Linfo/flowersoft/theotown/ui/IconButton;
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->selectedButton:Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;

    return-object v0
.end method

.method public setOnCancel(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 2

    .line 62
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onCancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnClose(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 2

    .line 54
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->onClose:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setSource(II)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, v0, v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(IIII)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSource(IIII)Linfo/flowersoft/theotown/ui/PopupBuilder;
    .registers 5

    .line 67
    iput p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceX:I

    .line 68
    iput p2, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceY:I

    .line 69
    iput p3, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceWidth:I

    .line 70
    iput p4, p0, Linfo/flowersoft/theotown/ui/PopupBuilder;->sourceHeight:I

    return-object p0
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.AnonymousClass1 (info.flowersoft.theotown.ui.PopupBuilder$1)
.class Linfo/flowersoft/theotown/ui/PopupBuilder$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public free()V
    .registers 2

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 137
    :cond_11
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 128
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$000(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$000(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_25
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.AnonymousClass2 (info.flowersoft.theotown.ui.PopupBuilder$2)
.class Linfo/flowersoft/theotown/ui/PopupBuilder$2;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$2;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 150
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 151
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0xff

    .line 152
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v3, p1, -0x8

    add-int/lit8 v4, p2, -0x8

    .line 154
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, 0x10

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 155
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Panel;->draw(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.AnonymousClass3 (info.flowersoft.theotown.ui.PopupBuilder$3)
.class Linfo/flowersoft/theotown/ui/PopupBuilder$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 173
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$3;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 176
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 177
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 178
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    int-to-float v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 179
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.AnonymousClass4 (info.flowersoft.theotown.ui.PopupBuilder$4)
.class public Linfo/flowersoft/theotown/ui/PopupBuilder$4;
.super Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

.field public final synthetic val$action:Ljava/lang/Runnable;

.field public final synthetic val$bg:Lio/blueflower/stapel2d/gui/Button;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/PopupBuilder;ILjava/lang/String;IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gui/Button;)V
    .registers 12
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
            null,
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->val$action:Ljava/lang/Runnable;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->val$bg:Lio/blueflower/stapel2d/gui/Button;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;-><init>(ILjava/lang/String;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 187
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$202(Linfo/flowersoft/theotown/ui/PopupBuilder;Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;)Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->access$100(Linfo/flowersoft/theotown/ui/PopupBuilder;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->val$bg:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$4;->val$bg:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.AnonymousClass5 (info.flowersoft.theotown.ui.PopupBuilder$5)
.class Linfo/flowersoft/theotown/ui/PopupBuilder$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/PopupBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PopupBuilder$5;->this$0:Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 204
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 205
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 206
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    int-to-float v3, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 207
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.PopupBuilder.MenuItemButton (info.flowersoft.theotown.ui.PopupBuilder$MenuItemButton)
.class Linfo/flowersoft/theotown/ui/PopupBuilder$MenuItemButton;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PopupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/PopupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemButton"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 17

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 237
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 238
    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/ui/IconButton;->setIconWidth(I)V

    .line 239
    invoke-virtual {p0, p6}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 240
    invoke-virtual {p0, p6}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 245
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 247
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v0

    .line 248
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v2

    const/16 v3, 0x64

    const/16 v8, 0xff

    if-nez v2, :cond_2d

    mul-int/lit8 v2, v0, 0x64

    .line 249
    div-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 250
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 251
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/Icon;->setAlpha(I)V

    goto :goto_54

    .line 253
    :cond_2d
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 254
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 255
    :cond_3b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 256
    :cond_46
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2, v8}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 257
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v2, v8}, Lio/blueflower/stapel2d/gui/Icon;->setAlpha(I)V

    .line 262
    :goto_54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 263
    :cond_66
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 264
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_7b

    .line 266
    :cond_74
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 268
    :goto_7b
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 269
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v7, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 271
    :cond_9d
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 273
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 275
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 277
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 278
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method
