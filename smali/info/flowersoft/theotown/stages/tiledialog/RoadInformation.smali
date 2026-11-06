###### Class info.flowersoft.theotown.stages.tiledialog.RoadInformation (info.flowersoft.theotown.stages.tiledialog.RoadInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "RoadInformation.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public road:Linfo/flowersoft/theotown/city/objects/Road;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/draft/RoadDraft;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object p0
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_ON:I

    .line 103
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 138
    :cond_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v2, :cond_37

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-eqz v2, :cond_3b

    :cond_37
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-lez v0, :cond_74

    :cond_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->countBridges()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_74

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_74

    .line 139
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_AIR:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6ed

    .line 140
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 142
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V

    :cond_74
    return-void
.end method

.method public finishLast(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 222
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;)Lvm2/LuaTable;

    move-result-object p1

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string v1, "finishInformationDialog"

    invoke-virtual {p0, v0, v1, p1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public getIcon()I
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string v1, "getIcon"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optint(I)I

    move-result v0

    if-ltz v0, :cond_10

    return v0

    .line 66
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->getIcon()I

    move-result v0

    return v0

    :cond_1b
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    return v0
.end method

.method public getPluginId()I
    .registers 2

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    return v0
.end method

.method public getSound()I
    .registers 3

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 96
    :cond_8
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_ROAD:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string v3, "getText"

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    return-object v2

    .line 84
    :cond_2e
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    if-lez v2, :cond_6b

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xb0

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    int-to-double v3, v1

    .line 86
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6b
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string v1, "getTitle"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 74
    :cond_10
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 5

    .line 41
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    const/4 p2, 0x0

    if-eqz p1, :cond_1d

    .line 45
    iget p3, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1b

    if-ne p3, v0, :cond_1d

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p1, :cond_1d

    .line 47
    :cond_1b
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    .line 49
    :cond_1d
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz p1, :cond_23

    iget-object p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    :cond_23
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.RoadInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.RoadInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RoadInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 105
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->updateText()V

    return-void
.end method

.method private updateText()V
    .registers 3

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->hasTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x9d2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 129
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_ON:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    return-void

    .line 131
    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xc61

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 132
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_OFF:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 4

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->hasTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    goto :goto_1b

    .line 120
    :cond_14
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 123
    :goto_1b
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 3

    .line 110
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->hasTrafficLights()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setTrafficLights(Z)V

    .line 112
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$1;->updateText()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.RoadInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.RoadInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RoadInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 145
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->clearButtons()V

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 150
    :goto_17
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/RoadDraft;->countBridges()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 152
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;Linfo/flowersoft/theotown/city/City;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 199
    :cond_32
    new-instance v1, Linfo/flowersoft/theotown/ui/Selector;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x6ed

    .line 200
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 201
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V

    .line 202
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->abuseFor(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/Selectable;

    .line 205
    new-instance v4, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;

    invoke-direct {v4, p0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;Linfo/flowersoft/theotown/ui/Selector;)V

    invoke-interface {v3, v4}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    goto :goto_50

    .line 212
    :cond_65
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Selector;->focus(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.RoadInformation.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.RoadInformation$2$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "RoadInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public _road:Linfo/flowersoft/theotown/city/objects/Road;

.field public d:Linfo/flowersoft/theotown/city/Drawer;

.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

.field public final synthetic val$bridgeType:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;Linfo/flowersoft/theotown/city/City;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    iput p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->val$bridgeType:I

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 156
    new-instance v0, Linfo/flowersoft/theotown/city/objects/Road;

    iget-object p2, p1, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v1

    iget-object p2, p1, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p2

    iget v2, p2, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/Road;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;IIIII)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->_road:Linfo/flowersoft/theotown/city/objects/Road;

    .line 157
    iput p3, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    const/4 p1, 0x1

    .line 158
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->setPile(Z)V

    .line 159
    new-instance p1, Linfo/flowersoft/theotown/city/Drawer;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/city/Drawer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->d:Linfo/flowersoft/theotown/city/Drawer;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 5

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->d:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 187
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->d:Linfo/flowersoft/theotown/city/Drawer;

    int-to-float p2, p2

    iput p2, p1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    add-int/lit8 p3, p3, 0x18

    int-to-float p2, p3

    .line 188
    iput p2, p1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 189
    iput p2, p1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    iput p2, p1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 191
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->_road:Linfo/flowersoft/theotown/city/objects/Road;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 192
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->_road:Linfo/flowersoft/theotown/city/objects/Road;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->d:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Road;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 194
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->d:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public select()V
    .registers 4

    .line 179
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 180
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->val$bridgeType:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setBridge(Linfo/flowersoft/theotown/city/objects/Road;I)V

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.RoadInformation.AnonymousClass2.RunnableC10882 (info.flowersoft.theotown.stages.tiledialog.RoadInformation$2$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;
.super Ljava/lang/Object;
.source "RoadInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

.field public final synthetic val$selector:Linfo/flowersoft/theotown/ui/Selector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;Linfo/flowersoft/theotown/ui/Selector;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;->val$selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/RoadInformation$2$2;->val$selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->rebuild()V

    return-void
.end method
