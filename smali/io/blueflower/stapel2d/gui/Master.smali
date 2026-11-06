###### Class io.blueflower.stapel2d.gui.Master (io.blueflower.stapel2d.gui.Master)
.class public Lio/blueflower/stapel2d/gui/Master;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "Master.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/gui/Master$ClickListener;
    }
.end annotation


# instance fields
.field public final clickListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/Master$ClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public vheight:I

.field public vwidth:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Skin;II)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    move v3, p2

    move v4, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lio/blueflower/stapel2d/gui/Master;->clickListenerList:Ljava/util/List;

    .line 22
    iput-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method


# virtual methods
.method public addClickListener(Lio/blueflower/stapel2d/gui/Master$ClickListener;)V
    .registers 3

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Master;->clickListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw()V
    .registers 6

    .line 44
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 45
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v1, 0xff

    .line 47
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 48
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    iput v1, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    .line 49
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    iput v1, p0, Lio/blueflower/stapel2d/gui/Master;->vheight:I

    .line 50
    iget v2, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2d

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    if-eq v1, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v4

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    :goto_2e
    if-eqz v1, :cond_3a

    .line 53
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 54
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 57
    :cond_3a
    invoke-virtual {p0, v4, v4}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    if-eqz v1, :cond_49

    .line 60
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 61
    iget v1, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Master;->vheight:I

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    :cond_49
    return-void
.end method

.method public getHeightRatio()F
    .registers 3

    .line 30
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getVirtualHeightRatio()F
    .registers 3

    .line 39
    iget v0, p0, Lio/blueflower/stapel2d/gui/Master;->vheight:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Master;->vheight:I

    .line 40
    :cond_e
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/Master;->vheight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getVirtualWidthRatio()F
    .registers 3

    .line 34
    iget v0, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    .line 35
    :cond_e
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/Master;->vwidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidthRatio()F
    .registers 3

    .line 26
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public informAboutClickOn(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Master;->clickListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master$ClickListener;

    .line 67
    invoke-interface {v1, p1}, Lio/blueflower/stapel2d/gui/Master$ClickListener;->onClick(Lio/blueflower/stapel2d/gui/Gadget;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeClickListener(Lio/blueflower/stapel2d/gui/Master$ClickListener;)Z
    .registers 3

    .line 76
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Master;->clickListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class io.blueflower.stapel2d.gui.Master.ClickListener (io.blueflower.stapel2d.gui.Master$ClickListener)
.class public interface abstract Lio/blueflower/stapel2d/gui/Master$ClickListener;
.super Ljava/lang/Object;
.source "Master.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/gui/Master;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClick(Lio/blueflower/stapel2d/gui/Gadget;)V
.end method
