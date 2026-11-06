###### Class info.flowersoft.theotown.ui.PlayVideoAdButton (info.flowersoft.theotown.ui.PlayVideoAdButton)
.class public Linfo/flowersoft/theotown/ui/PlayVideoAdButton;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "PlayVideoAdButton.java"


# instance fields
.field public onClick:Ljava/lang/Runnable;

.field public stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;


# direct methods
.method public static synthetic $r8$lambda$Ul9ZnZCv_zxP5H0Vetd94qNQfPA(Ljava/lang/Runnable;I)V
    .registers 2

    if-nez p1, :cond_5

    .line 35
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    .line 29
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 31
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    if-eqz p1, :cond_1e

    .line 32
    new-instance p2, Linfo/flowersoft/theotown/ui/PlayVideoAdButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, p7, p6, p2}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;->create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    .line 41
    :cond_1e
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 42
    iput-object p3, v0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->onClick:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 63
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->draw(II)V

    .line 65
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 67
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 72
    :cond_15
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 74
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 75
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 76
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 77
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 78
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    rem-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float v6, v2, v3

    const v2, 0x3fc90fdb

    add-float v7, v6, v2

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 82
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v3, v1

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    add-float/2addr p1, v0

    mul-float v0, v3, v4

    add-float v3, p2, v0

    const p2, 0x3e4ccccd    # 0.2f

    mul-float v4, v2, p2

    const p2, 0x3e99999a    # 0.3f

    mul-float v5, v2, p2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 89
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/Loadable;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 47
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/Loadable;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->onClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1b
    return-void
.end method

###### Class info.flowersoft.theotown.ui.PlayVideoAdButton$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.PlayVideoAdButton$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/PlayVideoAdButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final handle(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/PlayVideoAdButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->$r8$lambda$Ul9ZnZCv_zxP5H0Vetd94qNQfPA(Ljava/lang/Runnable;I)V

    return-void
.end method
