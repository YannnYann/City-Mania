###### Class info.flowersoft.theotown.cityloader.CityKeeper (info.flowersoft.theotown.cityloader.CityKeeper)
.class public Linfo/flowersoft/theotown/cityloader/CityKeeper;
.super Ljava/lang/Object;
.source "CityKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;
    }
.end annotation


# static fields
.field public static final SAVING_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowPlugins:Z

.field public authorId:J

.field public authorName:Ljava/lang/String;

.field public backupFile:Ljava/io/File;

.field public beforeCityPreparationCall:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/city/City;",
            ">;"
        }
    .end annotation
.end field

.field public city:Linfo/flowersoft/theotown/city/City;

.field public file:Ljava/io/File;

.field public getActualFileToLoadFrom:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

.field public getActualFileToSaveTo:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

.field public lastReadHeaderSize:I

.field public loadedListener:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/ComponentLoader;",
            ">;"
        }
    .end annotation
.end field

.field public loadingException:Ljava/lang/Exception;

.field public online:Z

.field public preview:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final progress:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public savable:Z

.field public savedListener:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final status:Lio/blueflower/stapel2d/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOldHeaderSizeFormat:Z


# direct methods
.method public static synthetic $r8$lambda$SUARZm4-JghVe2LmdWoSVZgd2F4(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Float;)V
    .registers 3

    .line 576
    iget-object p0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    .line 576
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    .line 98
    new-instance v1, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    .line 99
    new-instance v1, Lio/blueflower/stapel2d/util/ValueProperty;

    const-string v2, ""

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savable:Z

    const/4 v2, 0x0

    .line 110
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->online:Z

    .line 113
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->allowPlugins:Z

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 121
    new-instance p1, Linfo/flowersoft/theotown/cityloader/CityLoader;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/cityloader/CityLoader;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance p1, Linfo/flowersoft/theotown/cityloader/GroundLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/GroundLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Linfo/flowersoft/theotown/cityloader/SoundLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/SoundLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Linfo/flowersoft/theotown/cityloader/TreeLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/TreeLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Linfo/flowersoft/theotown/cityloader/RoadLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/RoadLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p1, Linfo/flowersoft/theotown/cityloader/BusStopLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/BusStopLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p1, Linfo/flowersoft/theotown/cityloader/RailLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/RailLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p1, Linfo/flowersoft/theotown/cityloader/BuildingLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/BuildingLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p1, Linfo/flowersoft/theotown/cityloader/DateLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/DateLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance p1, Linfo/flowersoft/theotown/cityloader/PeopleLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/PeopleLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Linfo/flowersoft/theotown/cityloader/DemandLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/DemandLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p1, Linfo/flowersoft/theotown/cityloader/ManagementLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/ManagementLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p1, Linfo/flowersoft/theotown/cityloader/TrafficLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/TrafficLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p1, Linfo/flowersoft/theotown/cityloader/InfluenceLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/InfluenceLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance p1, Linfo/flowersoft/theotown/cityloader/BudgetLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/BudgetLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p1, Linfo/flowersoft/theotown/cityloader/ZoneSizeLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/ZoneSizeLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p1, Linfo/flowersoft/theotown/cityloader/PowerLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/PowerLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Linfo/flowersoft/theotown/cityloader/WaterLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/WaterLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p1, Linfo/flowersoft/theotown/cityloader/NotificatorLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/NotificatorLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Linfo/flowersoft/theotown/cityloader/RequirementLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/RequirementLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p1, Linfo/flowersoft/theotown/cityloader/CatastropheLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/CatastropheLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p1, Linfo/flowersoft/theotown/cityloader/ToolLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/ToolLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Linfo/flowersoft/theotown/cityloader/BuildMaskLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/BuildMaskLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Linfo/flowersoft/theotown/cityloader/WeatherLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/WeatherLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Linfo/flowersoft/theotown/cityloader/TransportationLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/TransportationLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Linfo/flowersoft/theotown/cityloader/TSLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/TSLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Linfo/flowersoft/theotown/cityloader/StatisticsLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/StatisticsLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Linfo/flowersoft/theotown/cityloader/SignLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/SignLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Linfo/flowersoft/theotown/cityloader/AirportLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/AirportLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Linfo/flowersoft/theotown/cityloader/IdleGameLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/IdleGameLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Linfo/flowersoft/theotown/cityloader/NeighborhoodLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/NeighborhoodLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Linfo/flowersoft/theotown/cityloader/ScenarioLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/ScenarioLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p1, Linfo/flowersoft/theotown/cityloader/RailPatchLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/cityloader/RailPatchLoader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 67
    iget-object p0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static isCityNameValid(Ljava/lang/String;)Z
    .registers 3

    .line 924
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    .line 925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1f

    .line 926
    invoke-static {}, Linfo/flowersoft/theotown/resources/WordFilter;->getInstance()Linfo/flowersoft/theotown/resources/WordFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/resources/WordFilter;->isForbidden(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static isSaving()Z
    .registers 2

    .line 210
    sget-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    monitor-enter v0

    .line 211
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 212
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static reset()V
    .registers 1

    .line 85
    sget-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static waitForSaving()V
    .registers 4

    .line 216
    sget-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    monitor-enter v0

    .line 218
    :goto_3
    :try_start_3
    sget-object v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_3

    :catchall_f
    move-exception v1

    goto :goto_1b

    :catch_11
    move-exception v1

    .line 220
    :try_start_12
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Wait for saving"

    invoke-interface {v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    :cond_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw v1
.end method


# virtual methods
.method public final buildCityInfo()V
    .registers 8

    .line 591
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 592
    new-instance v1, Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    sget v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;-><init>(Linfo/flowersoft/theotown/city/City;IZZZ)V

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 595
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 597
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v1

    .line 598
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 600
    new-instance v2, Linfo/flowersoft/theotown/city/MinimapRenderer;

    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/city/MinimapRenderer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v3, 0x1

    .line 601
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/MinimapRenderer;->setUseDefaultTool(Z)V

    .line 602
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/MinimapRenderer;->render(Z)V

    .line 603
    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getData()[I

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setMinimapData([I)V

    .line 604
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    :cond_46
    if-eqz v0, :cond_5f

    .line 607
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 608
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setPreviewData([III)V

    :cond_5f
    if-eqz v0, :cond_6a

    .line 611
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSaveCounter()I

    move-result v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setSaveCounter(I)V

    :cond_6a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 915
    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz v1, :cond_13

    .line 916
    check-cast p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object p1, p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    return v0
.end method

.method public getAuthorId()J
    .registers 3

    .line 195
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorId:J

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGetActualFileToLoadFrom()Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;
    .registers 2

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToLoadFrom:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    return-object v0
.end method

.method public getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;
    .registers 2

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    return-object v0
.end method

.method public getLoadingException()Ljava/lang/Exception;
    .registers 2

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadingException:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getMinimapBitmap(Linfo/flowersoft/theotown/cityloader/LightCityInfo;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 8

    .line 884
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v0

    .line 885
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v1

    .line 886
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v0, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 887
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getMinimapData()[I

    move-result-object p1

    .line 888
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 890
    :goto_17
    array-length v3, p1

    if-ge v1, v3, :cond_37

    .line 891
    aget v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    shl-int/lit8 v4, v4, 0x18

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    .line 892
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 895
    :cond_37
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 896
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v2
.end method

.method public getProgressProvider()Linfo/flowersoft/theotown/util/ProgressProvider;
    .registers 2

    .line 851
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    return-object v0
.end method

.method public getStateProvider()Lio/blueflower/stapel2d/util/Getter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    return-object v0
.end method

.method public final getStoreFile(I)Ljava/io/File;
    .registers 5

    .line 226
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".store"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hasTempBackupFile()Z
    .registers 2

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isOnline()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->online:Z

    return v0
.end method

.method public isSavable()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savable:Z

    return v0
.end method

.method public declared-synchronized load()V
    .registers 15

    monitor-enter p0

    .line 444
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 447
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToLoadFrom:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;->get()Ljava/io/File;

    move-result-object v0

    :cond_e
    move-object v1, v0

    goto :goto_13

    :catchall_10
    move-exception v0

    goto/16 :goto_301

    .line 449
    :goto_13
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 450
    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    const/4 v2, 0x1

    .line 451
    invoke-virtual {p0, v2, v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo(ZZ)V

    .line 452
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 454
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 455
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v3, ""

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 456
    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadingException:Ljava/lang/Exception;

    if-eqz v1, :cond_2fb

    .line 459
    const-string v0, "load city"

    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 461
    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_10

    .line 463
    :try_start_36
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v4, "Open file"

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 464
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 465
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Skip header"

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 466
    iget v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->lastReadHeaderSize:I

    invoke-virtual {p0, v0, v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->skip(Ljava/io/InputStream;I)V

    .line 468
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasCompressedMinimap()Z

    move-result v4

    if-nez v4, :cond_85

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 469
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    :goto_72
    if-lez v4, :cond_85

    .line 470
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_85

    int-to-long v4, v4

    .line 471
    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_72

    :catch_82
    move-exception v0

    goto/16 :goto_28b

    .line 475
    :cond_85
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 477
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Skip preview data"

    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasCompressedMinimap()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_eb

    .line 480
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 481
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v6

    mul-int/2addr v0, v6

    :goto_b1
    if-lez v0, :cond_c2

    .line 482
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_c2

    int-to-long v6, v0

    .line 483
    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v0, v6

    goto :goto_b1

    :cond_c1
    move v0, v5

    .line 486
    :cond_c2
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 487
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 489
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    mul-int/lit8 v7, v7, 0x4

    mul-int/2addr v7, v6

    add-int/2addr v0, v7

    :goto_db
    if-lez v0, :cond_eb

    .line 491
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_eb

    int-to-long v6, v0

    .line 492
    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v0, v6

    goto :goto_db

    .line 499
    :cond_eb
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v6, "Prepare reading"

    invoke-interface {v0, v6}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isBinaryFormat()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 501
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 502
    new-instance v4, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;

    invoke-direct {v4, v0}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;-><init>(Ljava/io/Reader;)V

    goto :goto_11d

    .line 504
    :cond_10c
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x4000

    invoke-direct {v6, v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 505
    new-instance v4, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;

    invoke-direct {v4, v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;-><init>(Ljava/io/DataInputStream;)V

    .line 508
    :goto_11d
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 510
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_126
    :goto_126
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_173

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/cityloader/ComponentLoader;

    .line 511
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->setInfo(Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    .line 512
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load raw "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 513
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v7}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->loadRaw(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v6, :cond_126

    .line 515
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v7

    xor-int/2addr v7, v2

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/City;->setReadonly(Z)V

    .line 516
    iget-object v8, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isOnline()Z

    move-result v9

    iget-object v10, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorName:Ljava/lang/String;

    iget-wide v11, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorId:J

    iget-boolean v13, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->allowPlugins:Z

    invoke-virtual/range {v8 .. v13}, Linfo/flowersoft/theotown/city/City;->setOnline(ZLjava/lang/String;JZ)V

    goto :goto_126

    .line 520
    :cond_173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 522
    :goto_17a
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1fd

    .line 523
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 526
    :cond_188
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a2

    .line 527
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/cityloader/ComponentLoader;

    .line 528
    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_188

    .line 530
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1a3

    :cond_1a2
    move-object v8, v3

    :goto_1a3
    if-eqz v8, :cond_1e6

    .line 535
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 536
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v4, v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    .line 537
    const-string v6, "load city"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load component "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e9

    .line 539
    :cond_1e6
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    :goto_1e9
    add-int/2addr v5, v2

    .line 542
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    int-to-float v7, v5

    iget-object v8, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    goto/16 :goto_17a

    .line 546
    :cond_1fd
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_201
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/cityloader/ComponentLoader;

    .line 547
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load no source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 548
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    .line 549
    const-string v6, "load city"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load (n/a) component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_201

    .line 553
    :cond_24e
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_254
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_280

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/cityloader/ComponentLoader;

    .line 554
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finalize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 555
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->afterLoad(Linfo/flowersoft/theotown/city/City;)V

    goto :goto_254

    .line 558
    :cond_280
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Closing"

    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 559
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonReader;->close()V
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_28a} :catch_82
    .catchall {:try_start_36 .. :try_end_28a} :catchall_10

    goto :goto_2ba

    .line 561
    :goto_28b
    :try_start_28b
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 563
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadingException:Ljava/lang/Exception;

    .line 564
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "CityKeeper"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v5, "Load city"

    invoke-interface {v4, v5, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 566
    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    .line 568
    :goto_2ba
    const-string v0, "load city"

    const-string v3, "Read file"

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_2e6

    .line 571
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v3, "Prepare city"

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->beforeCityPreparationCall:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_2d5

    .line 573
    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 576
    :cond_2d5
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/cityloader/CityKeeper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/City;->prepare(Lio/blueflower/stapel2d/util/Setter;Z)V

    .line 577
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logLoadCity(Linfo/flowersoft/theotown/city/City;)V

    .line 579
    :cond_2e6
    const-string v0, "load city"

    const-string v2, "Prepare city"

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "load city"

    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadedListener:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_2f9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_2f9
    .catchall {:try_start_28b .. :try_end_2f9} :catchall_10

    .line 584
    :cond_2f9
    monitor-exit p0

    return-void

    .line 457
    :cond_2fb
    :try_start_2fb
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 584
    :goto_301
    monitor-exit p0
    :try_end_302
    .catchall {:try_start_2fb .. :try_end_302} :catchall_10

    throw v0
.end method

.method public declared-synchronized loadLightInfo()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 316
    :try_start_2
    invoke-virtual {p0, v0, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 317
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized loadLightInfo(ZZ)V
    .registers 13

    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-eqz v0, :cond_193

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_9
    const/16 v4, 0x10

    if-ge v2, v4, :cond_8c

    .line 349
    :try_start_d
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_76
    .catchall {:try_start_d .. :try_end_19} :catchall_3c

    .line 351
    :try_start_19
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->readHeaderSize(Ljava/io/InputStream;)I

    move-result v3

    const/high16 v6, 0x10000

    mul-int/2addr v6, v2

    add-int/2addr v3, v6

    .line 352
    iget-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->usesOldHeaderSizeFormat:Z

    if-eqz v6, :cond_27

    const/4 v6, 0x2

    goto :goto_28

    :cond_27
    const/4 v6, 0x6

    :goto_28
    add-int/2addr v6, v3

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->lastReadHeaderSize:I

    if-lez v3, :cond_69

    .line 358
    new-array v6, v3, [B

    move v7, v1

    :cond_30
    if-ge v7, v3, :cond_41

    sub-int v8, v3, v7

    .line 361
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v7, v8

    if-gez v8, :cond_30

    goto :goto_41

    :catchall_3c
    move-exception p1

    goto/16 :goto_199

    :catch_3f
    move-exception v3

    goto :goto_79

    .line 366
    :cond_41
    :goto_41
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    new-instance v6, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;

    invoke-direct {v6, v3}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;-><init>(Ljava/io/Reader;)V

    .line 368
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 369
    new-instance v3, Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-direct {v3, v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 370
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 371
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->close()V

    move-object v3, v5

    goto :goto_8c

    .line 354
    :cond_69
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 355
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 356
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid city file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_76} :catch_3f
    .catchall {:try_start_19 .. :try_end_76} :catchall_3c

    :catch_76
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_79
    if-eqz v5, :cond_82

    .line 374
    :try_start_7b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_82

    :catch_7f
    move-exception p1

    goto/16 :goto_18a

    .line 375
    :cond_82
    :goto_82
    iget-boolean v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->usesOldHeaderSizeFormat:Z

    if-eqz v4, :cond_8b

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto/16 :goto_9

    .line 376
    :cond_8b
    throw v3

    :cond_8c
    :goto_8c
    if-nez p1, :cond_a9

    if-eqz p2, :cond_91

    goto :goto_a9

    .line 426
    :cond_91
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result p1

    if-eqz p1, :cond_17b

    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object p1

    if-nez p1, :cond_17b

    .line 427
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2, p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setPreviewData([III)V

    goto/16 :goto_17b

    .line 382
    :cond_a9
    :goto_a9
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    .line 383
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasCompressedMinimap()Z

    move-result v6

    if-eqz v6, :cond_bb

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_bc

    :cond_bb
    move-object v6, v3

    :goto_bc
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_10e

    .line 385
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap()Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 386
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result p1

    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v5

    mul-int/2addr p1, v5

    new-array v5, p1, [I

    move v6, v1

    :goto_dc
    if-ge v6, p1, :cond_e7

    .line 389
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_dc

    .line 392
    :cond_e7
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getVersion()I

    move-result v6

    const/16 v7, 0xa0

    if-gt v6, v7, :cond_108

    move v6, v1

    :goto_f2
    if-ge v6, p1, :cond_108

    .line 394
    aget v7, v5, v6

    const v8, -0xff0100

    and-int/2addr v8, v7

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v4

    or-int/2addr v7, v8

    .line 396
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f2

    .line 400
    :cond_108
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1, v5}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setMinimapData([I)V

    goto :goto_133

    .line 401
    :cond_10e
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap()Z

    move-result p1

    if-eqz p1, :cond_133

    .line 402
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v4

    mul-int/2addr p1, v4

    :goto_125
    if-lez p1, :cond_133

    .line 403
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_133

    .line 404
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_125

    :cond_133
    :goto_133
    const/high16 p1, 0x1000000

    if-eqz p2, :cond_160

    .line 407
    iget-object p2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result p2

    if-eqz p2, :cond_160

    .line 408
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 409
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    mul-int v4, p2, v0

    if-ltz v4, :cond_17b

    if-ge v4, p1, :cond_17b

    .line 411
    new-array p1, v4, [I

    :goto_14f
    if-ge v1, v4, :cond_15a

    .line 413
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14f

    .line 415
    :cond_15a
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v1, p1, p2, v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setPreviewData([III)V

    goto :goto_17b

    .line 417
    :cond_160
    iget-object p2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result p2

    if-eqz p2, :cond_17b

    .line 418
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 419
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    mul-int v2, p2, v1

    if-ltz v2, :cond_17b

    if-ge v2, p1, :cond_17b

    .line 423
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1, v0, p2, v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setPreviewData([III)V

    .line 430
    :cond_17b
    :goto_17b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 431
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    iget-object p2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setSize(J)V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_189} :catch_7f
    .catchall {:try_start_7b .. :try_end_189} :catchall_3c

    goto :goto_191

    .line 433
    :goto_18a
    :try_start_18a
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Load light"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_191
    .catchall {:try_start_18a .. :try_end_191} :catchall_3c

    .line 435
    :goto_191
    monitor-exit p0

    return-void

    .line 343
    :cond_193
    :try_start_193
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 435
    :goto_199
    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_193 .. :try_end_19a} :catchall_3c

    throw p1
.end method

.method public final readHeaderSize(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    if-lez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 321
    :goto_10
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->usesOldHeaderSizeFormat:Z

    if-nez v0, :cond_2e

    .line 323
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_2e
    return v0
.end method

.method public removeTempBackupFile()Z
    .registers 6

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    if-eqz v0, :cond_71

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_4c
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_6e
    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    .line 271
    :cond_71
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    if-nez v0, :cond_77

    const/4 v0, 0x1

    return v0

    :cond_77
    const/4 v0, 0x0

    return v0
.end method

.method public restoreTempBackupFile()Z
    .registers 3

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 255
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToSaveTo:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v1, :cond_c

    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToLoadFrom:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;->get()Ljava/io/File;

    move-result-object v0

    .line 256
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 257
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savedListener:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v1, :cond_25

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_25
    const/4 v0, 0x1

    return v0

    :cond_27
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    const/4 v0, 0x0

    return v0
.end method

.method public save()V
    .registers 2

    const/4 v0, -0x1

    .line 615
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->save(I)V

    return-void
.end method

.method public declared-synchronized save(I)V
    .registers 16

    monitor-enter p0

    .line 619
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 621
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 622
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v1, ""

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_2a

    if-nez v0, :cond_1d

    monitor-exit p0

    return-void

    .line 625
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    .line 626
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToSaveTo:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2a

    goto :goto_2d

    :catchall_2a
    move-exception p1

    goto/16 :goto_530

    :cond_2d
    :goto_2d
    if-nez v0, :cond_31

    .line 627
    monitor-exit p0

    return-void

    .line 629
    :cond_31
    :try_start_31
    const-string v1, "save city"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 631
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logSaveCity(Linfo/flowersoft/theotown/city/City;)V

    .line 634
    new-instance v1, Linfo/flowersoft/theotown/cityloader/CityKeeper$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper$1;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 643
    sget-object v2, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_2a

    .line 644
    :try_start_45
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 646
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_52d

    .line 648
    :try_start_50
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 649
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 648
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCars()Ljava/util/List;

    move-result-object v2

    .line 651
    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v4, "Acquire locks"

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 655
    monitor-enter v2
    :try_end_70
    .catchall {:try_start_50 .. :try_end_70} :catchall_2a

    .line 656
    :try_start_70
    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v3
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_4b8

    .line 658
    :try_start_73
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Build info"

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->buildCityInfo()V

    .line 660
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSaveCounter()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setSaveCounter(I)V

    .line 662
    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Write header"

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 663
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 664
    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_9b} :catch_f0
    .catchall {:try_start_73 .. :try_end_9b} :catchall_ac

    .line 666
    :try_start_9b
    new-instance v6, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    invoke-direct {v6, v5}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;-><init>(Ljava/io/Writer;)V

    .line 667
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 668
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 669
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_ab} :catch_af
    .catchall {:try_start_9b .. :try_end_ab} :catchall_ac

    goto :goto_c2

    :catchall_ac
    move-exception p1

    goto/16 :goto_508

    :catch_af
    move-exception v6

    .line 671
    :try_start_b0
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "CityKeeper"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v7, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v8, "Save city setup"

    invoke-interface {v7, v8, v6}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 674
    :goto_c2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 675
    const-string v5, "save city"

    const-string v6, "Write header"

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v6, "Write minimap"

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 678
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 680
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 681
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getMinimapData()[I

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    .line 682
    :goto_e5
    array-length v10, v7

    if-ge v9, v10, :cond_f3

    .line 683
    aget v10, v7, v9

    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e5

    :catch_f0
    move-exception p1

    goto/16 :goto_4d7

    .line 685
    :cond_f3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 687
    const-string v6, "save city"

    const-string v7, "Write Minimap"

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v7, "Write preview"

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 691
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result v6

    if-eqz v6, :cond_146

    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object v6

    if-eqz v6, :cond_146

    .line 692
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 693
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 694
    iget-object v9, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 695
    iget-object v9, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewHeight()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 696
    iget-object v9, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object v9

    move v10, v8

    .line 697
    :goto_137
    array-length v11, v9

    if-ge v10, v11, :cond_142

    .line 698
    aget v11, v9, v10

    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_137

    .line 700
    :cond_142
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_147

    :cond_146
    const/4 v6, 0x0

    .line 702
    :goto_147
    const-string v7, "save city"

    const-string v9, "Write Preview"

    invoke-static {v7, v9}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v9, "Prepare writing"

    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 705
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_166

    .line 706
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 708
    :cond_166
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1a1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_1a1

    .line 710
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 711
    :cond_1a1
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_1ab} :catch_f0
    .catchall {:try_start_b0 .. :try_end_1ab} :catchall_ac

    .line 713
    :try_start_1ab
    iget-object v10, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v11, "Flush header"

    invoke-interface {v10, v11}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 714
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->writeHeaderSize(Ljava/io/OutputStream;I)V

    .line 715
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 716
    const-string v4, "save city"

    const-string v10, "Actually write header"

    invoke-static {v4, v10}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v4, Linfo/flowersoft/theotown/cityloader/CityKeeper$2;

    invoke-direct {v4, p0, v9, p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper$2;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/io/OutputStream;I)V

    .line 727
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v10, "Flush minimap"

    invoke-interface {p1, v10}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 728
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasCompressedMinimap()Z

    move-result p1

    if-eqz p1, :cond_1d9

    move-object p1, v4

    goto :goto_1da

    :cond_1d9
    move-object p1, v9

    :goto_1da
    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    if-eqz v6, :cond_1f1

    .line 729
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasCompressedMinimap()Z

    move-result p1

    if-eqz p1, :cond_1e9

    move-object p1, v4

    goto :goto_1ea

    :cond_1e9
    move-object p1, v9

    :goto_1ea
    invoke-virtual {v6, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1f1

    :catchall_1ee
    move-exception p1

    goto/16 :goto_4ce

    .line 731
    :cond_1f1
    :goto_1f1
    const-string p1, "save city"

    const-string v5, "Actually write minimap"

    invoke-static {p1, v5}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v5, "Setup stream"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 734
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isBinaryFormat()Z

    move-result p1

    if-eqz p1, :cond_217

    .line 735
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 737
    new-instance v4, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    invoke-direct {v4, p1}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;-><init>(Ljava/io/DataOutputStream;)V

    goto :goto_228

    .line 739
    :cond_217
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 741
    new-instance v4, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;

    invoke-direct {v4, p1}, Lio/blueflower/stapel2d/util/json/DefaultJsonWriter;-><init>(Ljava/io/Writer;)V

    .line 744
    :goto_228
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 746
    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_231
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_284

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/cityloader/ComponentLoader;
    :try_end_23d
    .catchall {:try_start_1ab .. :try_end_23d} :catchall_1ee

    .line 748
    :try_start_23d
    iget-object v10, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Write raw "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 749
    iget-object v10, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v10}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->saveRaw(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_25c} :catch_25d
    .catchall {:try_start_23d .. :try_end_25c} :catchall_1ee

    goto :goto_231

    :catch_25d
    move-exception p1

    .line 751
    :try_start_25e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save city, raw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 753
    throw p1

    .line 758
    :cond_284
    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_346

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/cityloader/ComponentLoader;

    .line 759
    move-object v10, p1

    check-cast v10, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->size()I

    move-result v10
    :try_end_29d
    .catchall {:try_start_25e .. :try_end_29d} :catchall_1ee

    .line 761
    :try_start_29d
    iget-object v11, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Write "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 762
    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 763
    iget-object v11, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v11}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V

    .line 764
    const-string v11, "save city"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Write component "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_29d .. :try_end_2e1} :catch_31f
    .catchall {:try_start_29d .. :try_end_2e1} :catchall_1ee

    add-int/lit8 v8, v8, 0x1

    .line 771
    :try_start_2e3
    iget-object v11, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    int-to-float v12, v8

    iget-object v13, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loaders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 772
    sget-object v11, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v12, "CityKeeper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " wrote "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    check-cast v6, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v12, v6}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28a

    :catch_31f
    move-exception p1

    .line 766
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save city, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 768
    throw p1

    .line 774
    :cond_346
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 775
    const-string v5, "save city"

    const-string v6, "Write json object"

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v6, "Flush"

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 778
    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->flush()V

    .line 779
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_35d
    .catchall {:try_start_2e3 .. :try_end_35d} :catchall_1ee

    .line 780
    :try_start_35d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 781
    const-string p1, "save city"

    const-string v4, "Flush write stream"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_367
    .catch Ljava/io/IOException; {:try_start_35d .. :try_end_367} :catch_f0
    .catchall {:try_start_35d .. :try_end_367} :catchall_ac

    const-wide/16 v4, 0x64

    .line 786
    :try_start_369
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36c
    .catch Ljava/lang/InterruptedException; {:try_start_369 .. :try_end_36c} :catch_36d
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_36c} :catch_f0
    .catchall {:try_start_369 .. :try_end_36c} :catchall_ac

    goto :goto_371

    :catch_36d
    move-exception p1

    .line 788
    :try_start_36e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 791
    :goto_371
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-eqz p1, :cond_4c6

    .line 793
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4be

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_4be

    .line 797
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    const-string v4, "Finalize"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 798
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40a

    .line 799
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    if-eqz p1, :cond_3cb

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3cb

    .line 800
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist therefore move previous file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_40a

    .line 803
    :cond_3cb
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3ee

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 805
    :cond_3ee
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "Citykeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to backup old city file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-interface {v4, v5, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_40a
    :goto_40a
    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_439

    .line 811
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "Citykeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "May not rename city file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_459

    .line 814
    :cond_439
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renamed written file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to target destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_459
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string p1, "save city"

    const-string v4, "Rename file"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->saveMinimap:Z

    if-eqz p1, :cond_483

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->saveBitmap()V

    .line 821
    :cond_483
    const-string p1, "save city"

    const-string v4, "write preview"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string p1, "save city"

    invoke-static {p1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 824
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savedListener:Lio/blueflower/stapel2d/util/Setter;

    if-eqz p1, :cond_496

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_496
    .catch Ljava/io/IOException; {:try_start_36e .. :try_end_496} :catch_f0
    .catchall {:try_start_36e .. :try_end_496} :catchall_ac

    .line 832
    :cond_496
    :try_start_496
    sget-object p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    monitor-enter p1
    :try_end_499
    .catchall {:try_start_496 .. :try_end_499} :catchall_4ba

    .line 833
    :try_start_499
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_49c
    .catchall {:try_start_499 .. :try_end_49c} :catchall_4a4

    .line 835
    :try_start_49c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_4a3
    .catch Ljava/lang/IllegalStateException; {:try_start_49c .. :try_end_4a3} :catch_4a6
    .catchall {:try_start_49c .. :try_end_4a3} :catchall_4a4

    goto :goto_4ae

    :catchall_4a4
    move-exception v0

    goto :goto_4bc

    :catch_4a6
    move-exception v0

    .line 837
    :try_start_4a7
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Release hook"

    invoke-interface {v1, v4, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 839
    :goto_4ae
    sget-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 840
    monitor-exit p1
    :try_end_4b4
    .catchall {:try_start_4a7 .. :try_end_4b4} :catchall_4a4

    .line 842
    :try_start_4b4
    monitor-exit v3
    :try_end_4b5
    .catchall {:try_start_4b4 .. :try_end_4b5} :catchall_4ba

    .line 843
    :try_start_4b5
    monitor-exit v2
    :try_end_4b6
    .catchall {:try_start_4b5 .. :try_end_4b6} :catchall_4b8

    .line 844
    monitor-exit p0

    return-void

    :catchall_4b8
    move-exception p1

    goto :goto_52b

    :catchall_4ba
    move-exception p1

    goto :goto_529

    .line 840
    :goto_4bc
    :try_start_4bc
    monitor-exit p1
    :try_end_4bd
    .catchall {:try_start_4bc .. :try_end_4bd} :catchall_4a4

    :try_start_4bd
    throw v0
    :try_end_4be
    .catchall {:try_start_4bd .. :try_end_4be} :catchall_4ba

    .line 794
    :cond_4be
    :try_start_4be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output file could not be created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 792
    :cond_4c6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Output file has size 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4ce
    .catch Ljava/io/IOException; {:try_start_4be .. :try_end_4ce} :catch_f0
    .catchall {:try_start_4be .. :try_end_4ce} :catchall_ac

    .line 711
    :goto_4ce
    :try_start_4ce
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4d1
    .catchall {:try_start_4ce .. :try_end_4d1} :catchall_4d2

    goto :goto_4d6

    :catchall_4d2
    move-exception v0

    :try_start_4d3
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d6
    throw p1
    :try_end_4d7
    .catch Ljava/io/IOException; {:try_start_4d3 .. :try_end_4d7} :catch_f0
    .catchall {:try_start_4d3 .. :try_end_4d7} :catchall_ac

    .line 826
    :goto_4d7
    :try_start_4d7
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "CityKeeper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Save city"

    invoke-interface {v0, v4, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 828
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->status:Lio/blueflower/stapel2d/util/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 829
    invoke-static {p1}, Lio/blueflower/stapel2d/util/SessionLogger;->logException(Ljava/lang/Throwable;)V

    .line 830
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_508
    .catchall {:try_start_4d7 .. :try_end_508} :catchall_ac

    .line 832
    :goto_508
    :try_start_508
    sget-object v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    monitor-enter v0
    :try_end_50b
    .catchall {:try_start_508 .. :try_end_50b} :catchall_4ba

    .line 833
    :try_start_50b
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_50e
    .catchall {:try_start_50b .. :try_end_50e} :catchall_516

    .line 835
    :try_start_50e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_515
    .catch Ljava/lang/IllegalStateException; {:try_start_50e .. :try_end_515} :catch_518
    .catchall {:try_start_50e .. :try_end_515} :catchall_516

    goto :goto_520

    :catchall_516
    move-exception p1

    goto :goto_527

    :catch_518
    move-exception v1

    .line 837
    :try_start_519
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v5, "Release hook"

    invoke-interface {v4, v5, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 839
    :goto_520
    sget-object v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;->SAVING_LIST:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 840
    monitor-exit v0
    :try_end_526
    .catchall {:try_start_519 .. :try_end_526} :catchall_516

    .line 841
    :try_start_526
    throw p1
    :try_end_527
    .catchall {:try_start_526 .. :try_end_527} :catchall_4ba

    .line 840
    :goto_527
    :try_start_527
    monitor-exit v0
    :try_end_528
    .catchall {:try_start_527 .. :try_end_528} :catchall_516

    :try_start_528
    throw p1

    .line 842
    :goto_529
    monitor-exit v3
    :try_end_52a
    .catchall {:try_start_528 .. :try_end_52a} :catchall_4ba

    :try_start_52a
    throw p1

    .line 843
    :goto_52b
    monitor-exit v2
    :try_end_52c
    .catchall {:try_start_52a .. :try_end_52c} :catchall_4b8

    :try_start_52c
    throw p1
    :try_end_52d
    .catchall {:try_start_52c .. :try_end_52d} :catchall_2a

    :catchall_52d
    move-exception p1

    .line 646
    :try_start_52e
    monitor-exit v2
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_52d

    :try_start_52f
    throw p1

    :goto_530
    monitor-exit p0
    :try_end_531
    .catchall {:try_start_52f .. :try_end_531} :catchall_2a

    throw p1
.end method

.method public final saveBitmap()V
    .registers 7

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 866
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->preview:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v2, :cond_2e

    .line 867
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->preview:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_2e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "mm.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getMinimapBitmap(Linfo/flowersoft/theotown/cityloader/LightCityInfo;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 874
    :goto_53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7e

    .line 876
    :try_start_59
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_72} :catch_73

    goto :goto_7b

    :catch_73
    move-exception v3

    .line 878
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v5, "Save bitmap"

    invoke-interface {v4, v5, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_7e
    return-void
.end method

.method public setBeforeCityPreparationCall(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/city/City;",
            ">;)V"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->beforeCityPreparationCall:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public declared-synchronized setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    monitor-enter p0

    .line 312
    :try_start_1
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 313
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setGetActualFileToLoadFrom(Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V
    .registers 2

    .line 159
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToLoadFrom:Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;

    return-void
.end method

.method public setGetActualFileToSaveTo(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getActualFileToSaveTo:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setLoadedListener(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadedListener:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public setOnline(ZLjava/lang/String;JZ)V
    .registers 6

    .line 203
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->online:Z

    .line 204
    iput-object p2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorName:Ljava/lang/String;

    .line 205
    iput-wide p3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->authorId:J

    .line 206
    iput-boolean p5, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->allowPlugins:Z

    return-void
.end method

.method public setPreview(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 6

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->buildCityInfo()V

    .line 277
    :cond_7
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->preview:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 280
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    .line 281
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 282
    new-array v2, v2, [I

    .line 283
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 284
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 286
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 287
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setPreviewData([III)V

    return-void
.end method

.method public setPreview([III)V
    .registers 6

    .line 291
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 292
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 293
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 295
    invoke-virtual {p2}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 296
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setPreview(Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-void
.end method

.method public setSavable(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savable:Z

    return-void
.end method

.method public setSavedListener(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->savedListener:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public final skip(Ljava/io/InputStream;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_10

    .line 438
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_10

    int-to-long v0, p2

    .line 439
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    goto :goto_0

    :cond_10
    return-void
.end method

.method public storeTempBackupFileInTheFuture()Z
    .registers 6

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->file:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_48

    :cond_c
    move v0, v1

    .line 232
    :goto_d
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStoreFile(I)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v2, 0x3

    if-lt v0, v2, :cond_46

    :goto_1f
    if-ge v1, v0, :cond_3f

    add-int/lit8 v3, v0, -0x3

    if-gt v1, v3, :cond_2d

    .line 238
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStoreFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_3c

    .line 240
    :cond_2d
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStoreFile(I)Ljava/io/File;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStoreFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3f
    const/4 v0, 0x2

    .line 243
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStoreFile(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper;->backupFile:Ljava/io/File;

    :cond_46
    const/4 v0, 0x1

    return v0

    :cond_48
    :goto_48
    return v1
.end method

.method public final writeHeaderSize(Ljava/io/OutputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_26

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 331
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 332
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 333
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 334
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_26
    shr-int/lit8 v0, p2, 0x8

    .line 337
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityloader.CityKeeper.AnonymousClass1 (info.flowersoft.theotown.cityloader.CityKeeper$1)
.class public Linfo/flowersoft/theotown/cityloader/CityKeeper$1;
.super Ljava/lang/Thread;
.source "CityKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityloader/CityKeeper;->save(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 634
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$1;->this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 637
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$1;->this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    monitor-enter v0

    .line 638
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "CityKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waited for city "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$1;->this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->access$000(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to be saved before exit."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

###### Class info.flowersoft.theotown.cityloader.CityKeeper.AnonymousClass2 (info.flowersoft.theotown.cityloader.CityKeeper$2)
.class public Linfo/flowersoft/theotown/cityloader/CityKeeper$2;
.super Ljava/util/zip/GZIPOutputStream;
.source "CityKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityloader/CityKeeper;->save(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic val$compressionLevel:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/io/OutputStream;I)V
    .registers 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$2;->this$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput p3, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$2;->val$compressionLevel:I

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 722
    iget-object p1, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p1, p3}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityloader.CityKeeper.FileProvider (info.flowersoft.theotown.cityloader.CityKeeper$FileProvider)
.class public interface abstract Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;
.super Ljava/lang/Object;
.source "CityKeeper.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/cityloader/CityKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileProvider"
.end annotation


# virtual methods
.method public abstract get()Ljava/io/File;
.end method

.method public abstract getProgress()F
.end method

###### Class info.flowersoft.theotown.cityloader.CityKeeper$$ExternalSyntheticLambda0 (info.flowersoft.theotown.cityloader.CityKeeper$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/cityloader/CityKeeper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/CityKeeper$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->$r8$lambda$SUARZm4-JghVe2LmdWoSVZgd2F4(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Float;)V

    return-void
.end method
