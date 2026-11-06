###### Class info.flowersoft.theotown.stages.tiledialog.ToolActionProvider (info.flowersoft.theotown.stages.tiledialog.ToolActionProvider)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "ToolActionProvider.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()[Linfo/flowersoft/theotown/stages/tiledialog/Action;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v3, 0x0

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v4, "$mltry_rocketlauncher00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    .line 40
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 41
    new-instance v2, Linfo/flowersoft/theotown/tools/RocketAimTool;

    invoke-direct {v2}, Linfo/flowersoft/theotown/tools/RocketAimTool;-><init>()V

    .line 42
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/tools/RocketAimTool;->addLauncher(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 43
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_RED_BUTTON:I

    const-string v5, "launch_rocket"

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4, v5, v2, v6}, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/tiledialog/Action;

    aput-object v3, v1, v0

    return-object v1

    .line 47
    :cond_3f
    sget-object v2, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v1, :cond_9e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_87

    const/4 v4, 0x3

    if-eq v2, v4, :cond_70

    const/4 v4, 0x4

    if-eq v2, v4, :cond_59

    return-object v3

    .line 58
    :cond_59
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_SWAT_ALERT:I

    .line 59
    invoke-static {}, Linfo/flowersoft/theotown/tools/SWATAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/tools/SWATAlertTool;

    invoke-direct {v5}, Linfo/flowersoft/theotown/tools/SWATAlertTool;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/tiledialog/Action;

    aput-object v2, v1, v0

    return-object v1

    .line 55
    :cond_70
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_MEDIC:I

    .line 56
    invoke-static {}, Linfo/flowersoft/theotown/tools/MedicAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/tools/MedicAlertTool;

    invoke-direct {v5}, Linfo/flowersoft/theotown/tools/MedicAlertTool;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/tiledialog/Action;

    aput-object v2, v1, v0

    return-object v1

    .line 52
    :cond_87
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_POLICE:I

    .line 53
    invoke-static {}, Linfo/flowersoft/theotown/tools/PoliceAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/tools/PoliceAlertTool;

    invoke-direct {v5}, Linfo/flowersoft/theotown/tools/PoliceAlertTool;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/tiledialog/Action;

    aput-object v2, v1, v0

    return-object v1

    .line 49
    :cond_9e
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_FIREDEPARTMENT:I

    .line 50
    invoke-static {}, Linfo/flowersoft/theotown/tools/FireBrigadeAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/tools/FireBrigadeAlertTool;

    invoke-direct {v5}, Linfo/flowersoft/theotown/tools/FireBrigadeAlertTool;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/tiledialog/Action;

    aput-object v2, v1, v0

    return-object v1

    :cond_b5
    return-object v3
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 22
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ToolActionProvider.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.ToolActionProvider$1)
.class public synthetic Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;
.super Ljava/lang/Object;
.source "ToolActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/stages/tiledialog/ToolActionProvider$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
