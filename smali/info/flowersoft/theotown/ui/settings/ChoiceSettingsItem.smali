###### Class info.flowersoft.theotown.ui.settings.ChoiceSettingsItem (info.flowersoft.theotown.ui.settings.ChoiceSettingsItem)
.class public Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;
.super Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.source "ChoiceSettingsItem.java"


# instance fields
.field public final isSelected:Lio/blueflower/stapel2d/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final rebuild:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Linfo/flowersoft/theotown/ui/settings/SettingsListbox;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    .line 19
    iput-object p2, v1, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;->isSelected:Lio/blueflower/stapel2d/util/Property;

    .line 20
    iput-object p6, v1, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;->rebuild:Ljava/lang/Runnable;

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

    .line 25
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 26
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 27
    iget-object p2, v0, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;->isSelected:Lio/blueflower/stapel2d/util/Property;

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 30
    iget-object p3, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string p4, " "

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/lit8 p4, v3, 0x5

    sub-int p6, v6, p3

    .line 32
    div-int/lit8 p6, p6, 0x2

    add-int p3, v4, p6

    if-eqz p2, :cond_32

    .line 33
    iget-object p5, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_34

    :cond_32
    iget-object p5, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_34
    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 34
    iget-object p5, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p4, p4

    int-to-float p3, p3

    invoke-virtual {p1, p5, p6, p4, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    if-eqz p2, :cond_47

    .line 36
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p2, p2, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    goto :goto_4b

    :cond_47
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p2, p2, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    :goto_4b
    if-lez p2, :cond_78

    .line 38
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p3, p2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 39
    sget-object p4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p4, p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 40
    sget-object p5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 41
    iget-object p5, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-int p6, v3, v5

    sub-int/2addr p6, p3

    add-int/lit8 p6, p6, -0x5

    int-to-float p3, p6

    sub-int p6, v6, p4

    div-int/lit8 p6, p6, 0x2

    add-int p4, v4, p6

    int-to-float p4, p4

    invoke-virtual {p1, p5, p3, p4, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 44
    :cond_78
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getWidth()I
    .registers 2

    .line 56
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public onClick(II)V
    .registers 3

    .line 49
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;->isSelected:Lio/blueflower/stapel2d/util/Property;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 51
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->needsRebuild:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;->rebuild:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void
.end method
