###### Class info.flowersoft.theotown.ui.ComboButton (info.flowersoft.theotown.ui.ComboButton)
.class public Linfo/flowersoft/theotown/ui/ComboButton;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "ComboButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linfo/flowersoft/theotown/ui/IconButton;"
    }
.end annotation


# instance fields
.field public final callback:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "TT;>;"
        }
    .end annotation
.end field

.field public isOpen:Z

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr<",
            "TT;>;"
        }
    .end annotation
.end field

.field public selectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GQOZWicQjdeXTq_JOjC7_xxltfU(Linfo/flowersoft/theotown/ui/ComboButton;)V
    .registers 2

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->isOpen:Z

    return-void
.end method

.method public static synthetic $r8$lambda$yLdXHVyiDrEOGlObU_ORwTcKxMI(Linfo/flowersoft/theotown/ui/ComboButton;Ljava/lang/Object;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/ComboButton;->selectInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr<",
            "TT;>;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 32
    const-string v2, ""

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ComboButton;->items:Ljava/util/List;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, v0, Linfo/flowersoft/theotown/ui/ComboButton;->isOpen:Z

    .line 33
    iput-object p6, v0, Linfo/flowersoft/theotown/ui/ComboButton;->repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;

    .line 34
    iput-object p7, v0, Linfo/flowersoft/theotown/ui/ComboButton;->callback:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addItems([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->items:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(II)V
    .registers 15

    .line 91
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/IconButton;->draw(II)V

    .line 93
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 94
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 95
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 p2, p2, 0x2

    .line 96
    :cond_17
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, -0xd

    .line 99
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    .line 100
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 101
    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0x50

    .line 102
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 103
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    add-int/lit8 v3, p1, -0x1a

    int-to-float v5, v3

    add-int/lit8 v3, p2, 0x2

    int-to-float v6, v3

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x5

    int-to-float v8, p2

    const/high16 v9, 0x40000000    # 2.0f

    move v7, v5

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 p2, 0xff

    .line 104
    invoke-virtual {v10, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 105
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    add-int/lit8 p2, p1, -0x13

    int-to-float v5, p2

    add-int/lit8 p2, v2, -0x3

    int-to-float v6, p2

    int-to-float v7, v0

    add-int/lit8 v2, v2, 0x3

    int-to-float v8, v2

    add-int/lit8 p1, p1, -0x7

    int-to-float v9, p1

    move-object v11, v10

    move v10, v6

    invoke-virtual/range {v4 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->isOpen:Z

    return v0
.end method

.method public layout()V
    .registers 3

    .line 83
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    .line 84
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v0, :cond_10

    .line 85
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1a

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    :cond_10
    return-void
.end method

.method public onClick()V
    .registers 1

    .line 76
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 78
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ComboButton;->showMenu()V

    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;->getIcon(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ComboButton;->selectedItem:Ljava/lang/Object;

    return-void
.end method

.method public final selectInternal(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/ComboButton;->select(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->callback:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public showMenu()V
    .registers 10

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/ComboButton;->isOpen:Z

    .line 54
    new-instance v1, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v2, 0x0

    move v3, v2

    .line 55
    :goto_a
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ComboButton;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 56
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ComboButton;->items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 57
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/ComboButton;->repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;

    invoke-interface {v5, v4}, Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;->getIcon(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/ComboButton;->repr:Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;

    invoke-interface {v6, v4}, Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4}, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/ComboButton;Ljava/lang/Object;)V

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/ComboButton;->selectedItem:Ljava/lang/Object;

    if-eq v4, v8, :cond_2f

    move v4, v0

    goto :goto_30

    :cond_2f
    move v4, v2

    :goto_30
    invoke-virtual {v1, v5, v6, v7, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 59
    :cond_36
    new-instance v0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/ComboButton;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setOnClose(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 60
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ComboButton.ButtonRepr (info.flowersoft.theotown.ui.ComboButton$ButtonRepr)
.class public interface abstract Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;
.super Ljava/lang/Object;
.source "ComboButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ComboButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ButtonRepr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getIcon(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract getText(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/ComboButton;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/ComboButton;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/ComboButton;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/ComboButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/ComboButton;->$r8$lambda$yLdXHVyiDrEOGlObU_ORwTcKxMI(Linfo/flowersoft/theotown/ui/ComboButton;Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/ComboButton;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/ComboButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/ComboButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ComboButton$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/ComboButton;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ComboButton;->$r8$lambda$GQOZWicQjdeXTq_JOjC7_xxltfU(Linfo/flowersoft/theotown/ui/ComboButton;)V

    return-void
.end method
