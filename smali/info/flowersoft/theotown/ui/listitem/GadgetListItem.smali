###### Class info.flowersoft.theotown.ui.listitem.GadgetListItem (info.flowersoft.theotown.ui.listitem.GadgetListItem)
.class public Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "GadgetListItem.java"


# instance fields
.field public canBeSelected:Z

.field public drawBackground:Z

.field public final gadget:Lio/blueflower/stapel2d/gui/Gadget;

.field public offsetY:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 19
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->canBeSelected:Z

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 1

    .line 10
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    return-object p0
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    .line 42
    iput p4, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->offsetY:I

    .line 43
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->drawBackground:Z

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_16

    .line 44
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->canBeSelected:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    :goto_d
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_d

    :goto_18
    invoke-super/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    goto :goto_1f

    :cond_1c
    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 47
    :goto_1f
    iget-object p1, v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 48
    iget-object p1, v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result p2

    sub-int p3, v3, p2

    iget-object p2, v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p2

    sub-int p4, v4, p2

    invoke-virtual {p1, p3, p4}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    .line 49
    iget-object p1, v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->update()V

    :cond_3f
    return-void
.end method

.method public getGadget()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    return-object v0
.end method

.method public getHeight(Z)I
    .registers 2

    .line 55
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawBackground()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->drawBackground:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 60
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ListItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(II)V
    .registers 7

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    iget v1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->offsetY:I

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 66
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;-><init>(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;II)V

    .line 77
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    new-instance p2, Lio/blueflower/stapel2d/touch/TouchUpdate;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v3, v1}, Lio/blueflower/stapel2d/touch/TouchUpdate;-><init>(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchPoint;FLio/blueflower/stapel2d/touch/TouchPoint;)V

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 78
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    new-instance p2, Lio/blueflower/stapel2d/touch/TouchUpdate;

    invoke-direct {p2, v1, v0, v3, v1}, Lio/blueflower/stapel2d/touch/TouchUpdate;-><init>(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchPoint;FLio/blueflower/stapel2d/touch/TouchPoint;)V

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 79
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    const/16 p2, -0x3e8

    invoke-virtual {p1, p2, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    return-void
.end method

.method public setCanBeSelected(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->canBeSelected:Z

    return-void
.end method

.method public setDrawBackground(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->drawBackground:Z

    return-void
.end method

###### Class info.flowersoft.theotown.ui.listitem.GadgetListItem.AnonymousClass1 (info.flowersoft.theotown.ui.listitem.GadgetListItem$1)
.class public Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;
.super Lio/blueflower/stapel2d/touch/TouchPoint;
.source "GadgetListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->onClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

.field public final synthetic val$px:I

.field public final synthetic val$py:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;->this$0:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    iput p2, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;->val$px:I

    iput p3, p0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem$1;->val$py:I

    invoke-direct {p0}, Lio/blueflower/stapel2d/touch/TouchPoint;-><init>()V

    .line 68
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->access$000(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 69
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->access$000(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    div-float/2addr p2, v1

    iput p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 70
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->access$000(Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result p1

    add-int/2addr p3, p1

    int-to-float p1, p3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    .line 71
    iget p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    iput p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstX:F

    .line 72
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstY:F

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    return-void
.end method
