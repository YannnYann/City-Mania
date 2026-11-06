###### Class info.flowersoft.theotown.ui.RegionCoinDialog (info.flowersoft.theotown.ui.RegionCoinDialog)
.class public Linfo/flowersoft/theotown/ui/RegionCoinDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "RegionCoinDialog.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 6

    .line 11
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    const/16 v1, 0x546

    .line 12
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x574

    .line 13
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-direct {p0, v0, v1, v2, p2}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 15
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v0, 0x76b

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method
