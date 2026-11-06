###### Class info.flowersoft.theotown.ui.settings.SettingsInfoItem (info.flowersoft.theotown.ui.settings.SettingsInfoItem)
.class Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;
.super Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.source "SettingsInfoItem.java"


# instance fields
.field public callback:Ljava/lang/Runnable;

.field public color:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 12

    if-nez p4, :cond_b

    .line 17
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    goto :goto_10

    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_4

    :goto_10
    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 14

    const/4 v0, 0x0

    .line 22
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    .line 23
    iput-object p4, v1, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;->callback:Ljava/lang/Runnable;

    .line 24
    iput-object p5, v1, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 29
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 30
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 32
    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 33
    const-string p3, " "

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 34
    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/lit8 p4, v3, 0x5

    sub-int p6, v6, p3

    .line 36
    div-int/lit8 p6, p6, 0x2

    add-int p3, v4, p6

    .line 37
    iget-object p5, v0, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 38
    iget-object p5, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p4, p4

    int-to-float p3, p3

    invoke-virtual {p1, p2, p5, p4, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 40
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const v0, 0x7fffffff

    return v0
.end method

.method public onClick(II)V
    .registers 3

    .line 45
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;->callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
