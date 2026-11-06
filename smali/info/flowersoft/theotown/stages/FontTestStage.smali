###### Class info.flowersoft.theotown.stages.FontTestStage (info.flowersoft.theotown.stages.FontTestStage)
.class public final Linfo/flowersoft/theotown/stages/FontTestStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "FontTestStage.kt"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .line 12
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    .line 15
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    .line 17
    const-string v2, "\n\u0627\u0644\u062f\u0642\u0629\n\ufe8d\ufedf\ufeaa\ufed7\ufe94\n\ufe8d\ufedf\ufeaa\ufed7\ufe94\n\u0644\n\ufedd\n\ufedf\n\ufee0\n\ufede\n            "

    .line 27
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 14
    const-string v4, "Font Test"

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "FontTestStage"

    return-object v0
.end method
