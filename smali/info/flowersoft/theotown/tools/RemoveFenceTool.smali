###### Class info.flowersoft.theotown.tools.RemoveFenceTool (info.flowersoft.theotown.tools.RemoveFenceTool)
.class public Linfo/flowersoft/theotown/tools/RemoveFenceTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemoveFenceTool.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method


# virtual methods
.method public build(IIII)V
    .registers 7

    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 23
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 26
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 28
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFenceWithin(IIII)V

    .line 30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 35
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/RemoveTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3c

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 40
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 41
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SIDEMARK:I

    add-int/lit8 v3, v0, 0x4

    iget v4, p3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v3, v4

    rem-int/2addr v3, v1

    add-int v8, v2, v3

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    .line 40
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_36

    :cond_33
    move v5, p1

    move v6, p2

    move-object v4, p3

    :goto_36
    add-int/lit8 v0, v0, 0x1

    move-object p3, v4

    move p1, v5

    move p2, v6

    goto :goto_c

    :cond_3c
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 50
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_FENCE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "RemoveFence"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x901

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
