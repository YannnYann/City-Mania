###### Class info.flowersoft.theotown.util.LineLayoutFiller (info.flowersoft.theotown.util.LineLayoutFiller)
.class public Linfo/flowersoft/theotown/util/LineLayoutFiller;
.super Ljava/lang/Object;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;,
        Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;
    }
.end annotation


# instance fields
.field public gadgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field public lineHeight:I

.field public lineWidth:I

.field public parent:Lio/blueflower/stapel2d/gui/Gadget;

.field public spacing:I

.field public startX:I

.field public startY:I

.field public targetSizes:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    .line 27
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    .line 30
    iput-object p3, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 31
    iput p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    .line 32
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineWidth:I

    .line 33
    iput p2, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->spacing:I

    return-void
.end method


# virtual methods
.method public addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 5

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;)Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 16

    .line 139
    new-instance v0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;

    const/4 v7, 0x0

    iget-object v8, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;-><init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;)V

    .line 151
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 5

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/IconButton;"
        }
    .end annotation

    .line 101
    new-instance v0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;

    const/4 v7, 0x0

    iget-object v8, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;-><init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    .line 113
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public addEmpty()V
    .registers 8

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/util/LineLayoutFiller$1;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller$1;-><init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGoldButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
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

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;

    const/4 v7, 0x0

    iget-object v8, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;-><init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    .line 130
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;
    .registers 9

    .line 82
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 83
    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    const/4 p1, 0x2

    .line 84
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 85
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public addText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
    .registers 9

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget v4, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineWidth:I

    iget v5, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    iget-object v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 92
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public finalizeLine()V
    .registers 2

    const/4 v0, 0x2

    .line 161
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine(I)V

    return-void
.end method

.method public finalizeLine(I)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 167
    :goto_4
    iget-object v4, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2a

    .line 168
    iget-object v4, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-le v4, v1, :cond_1b

    iget-object v4, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    goto :goto_1c

    :cond_1b
    move v4, v0

    :goto_1c
    if-lez v4, :cond_20

    add-int/2addr v2, v4

    goto :goto_22

    :cond_20
    add-int/lit8 v3, v3, 0x1

    :goto_22
    if-lez v1, :cond_27

    .line 174
    iget v4, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->spacing:I

    add-int/2addr v2, v4

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 177
    :cond_2a
    iget v1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineWidth:I

    sub-int/2addr v1, v2

    .line 178
    iget v2, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startX:I

    move v4, v0

    move v5, v3

    .line 180
    :goto_31
    iget-object v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_75

    .line 181
    iget-object v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Gadget;

    .line 182
    iget-object v7, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v7

    if-le v7, v4, :cond_50

    iget-object v7, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    goto :goto_51

    :cond_50
    move v7, v0

    :goto_51
    if-gtz v7, :cond_67

    const/4 v7, 0x1

    if-le v5, v7, :cond_5c

    add-int v8, v1, v3

    sub-int/2addr v8, v7

    .line 186
    div-int/2addr v8, v3

    move v7, v8

    goto :goto_65

    :cond_5c
    add-int/lit8 v8, v3, -0x1

    add-int v9, v1, v3

    sub-int/2addr v9, v7

    mul-int/2addr v8, v9

    .line 188
    div-int/2addr v8, v3

    sub-int v7, v1, v8

    :goto_65
    add-int/lit8 v5, v5, -0x1

    .line 194
    :cond_67
    iget v8, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    iget v9, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    invoke-virtual {v6, v2, v8, v7, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 195
    iget v6, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->spacing:I

    add-int/2addr v7, v6

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 198
    :cond_75
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->gadgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    iget v1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    return-void
.end method

.method public getLineHeight()I
    .registers 2

    .line 62
    iget v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    return v0
.end method

.method public getLineWidth()I
    .registers 2

    .line 66
    iget v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineWidth:I

    return v0
.end method

.method public getParent()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    return-object v0
.end method

.method public getStartX()I
    .registers 2

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startX:I

    return v0
.end method

.method public getStartY()I
    .registers 2

    .line 54
    iget v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    return v0
.end method

.method public getVerticalSpace()I
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setLineHeight(I)V
    .registers 2

    .line 46
    iput p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineHeight:I

    return-void
.end method

.method public setLineWidth(I)V
    .registers 2

    .line 42
    iput p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->lineWidth:I

    return-void
.end method

.method public setStart(II)V
    .registers 3

    .line 37
    iput p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startX:I

    .line 38
    iput p2, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->startY:I

    return-void
.end method

.method public setTargetSize(II)V
    .registers 5

    .line 156
    :goto_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_0

    .line 157
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller;->targetSizes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.AnonymousClass1 (info.flowersoft.theotown.util.LineLayoutFiller$1)
.class public Linfo/flowersoft/theotown/util/LineLayoutFiller$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;->addEmpty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 78
    iput-object p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$1;->this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.AnonymousClass2 (info.flowersoft.theotown.util.LineLayoutFiller$2)
.class Linfo/flowersoft/theotown/util/LineLayoutFiller$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/IconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

.field public final synthetic val$isVisible:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;->this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

    iput-object p9, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;->val$onClick:Ljava/lang/Runnable;

    iput-object p10, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_10
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 104
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$2;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.AnonymousClass3 (info.flowersoft.theotown.util.LineLayoutFiller$3)
.class Linfo/flowersoft/theotown/util/LineLayoutFiller$3;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGoldButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

.field public final synthetic val$isVisible:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;->this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

    iput-object p9, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;->val$onClick:Ljava/lang/Runnable;

    iput-object p10, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_10
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 121
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.AnonymousClass4 (info.flowersoft.theotown.util.LineLayoutFiller$4)
.class Linfo/flowersoft/theotown/util/LineLayoutFiller$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;)Linfo/flowersoft/theotown/ui/IconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

.field public final synthetic val$isVisible:Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;

.field public final synthetic val$onClick:Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/LineLayoutFiller;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;)V
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

    .line 139
    iput-object p1, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;->this$0:Linfo/flowersoft/theotown/util/LineLayoutFiller;

    iput-object p9, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;->val$onClick:Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;

    iput-object p10, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;->val$isVisible:Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;->val$isVisible:Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;->isVisible(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_a
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 142
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LineLayoutFiller$4;->val$onClick:Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;->handle(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.ClickHandler (info.flowersoft.theotown.util.LineLayoutFiller$ClickHandler)
.class public interface abstract Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;
.super Ljava/lang/Object;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickHandler"
.end annotation


# virtual methods
.method public abstract handle(Lio/blueflower/stapel2d/gui/Gadget;)V
.end method

###### Class info.flowersoft.theotown.util.LineLayoutFiller.VisibilityFunction (info.flowersoft.theotown.util.LineLayoutFiller$VisibilityFunction)
.class public interface abstract Linfo/flowersoft/theotown/util/LineLayoutFiller$VisibilityFunction;
.super Ljava/lang/Object;
.source "LineLayoutFiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/LineLayoutFiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibilityFunction"
.end annotation


# virtual methods
.method public abstract isVisible(Lio/blueflower/stapel2d/gui/Gadget;)Z
.end method
