###### Class info.flowersoft.theotown.components.DefaultTSComponent (info.flowersoft.theotown.components.DefaultTSComponent)
.class public Linfo/flowersoft/theotown/components/DefaultTSComponent;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultTSComponent.java"


# instance fields
.field public final systemById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            ">;"
        }
    .end annotation
.end field

.field public final systems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systemById:Ljava/util/Map;

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    .line 34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 35
    new-instance v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-direct {v2, p1, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)V

    .line 36
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systemById:Ljava/util/Map;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_45
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 44
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "systems"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 47
    :cond_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 48
    :goto_1f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systemById:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    if-eqz p2, :cond_3d

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 53
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 54
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_1f

    .line 56
    :cond_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1f

    .line 59
    :cond_41
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_3

    :cond_45
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;
    .registers 1

    .line 26
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 80
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;-><init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->addListener(Linfo/flowersoft/theotown/city/BuildingList$Listener;)V

    .line 101
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;-><init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BusStopList;->addListener(Linfo/flowersoft/theotown/city/BusStopList$Listener;)V

    .line 112
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;-><init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/RoadList;->addListener(Linfo/flowersoft/theotown/city/RoadList$Listener;)V

    return-void
.end method

.method public getSystemObjectById(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
    .registers 3

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systemById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    return-object p1
.end method

.method public getSystems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x16

    return v0
.end method

.method public nextDay()V
    .registers 3

    .line 146
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    const/4 v0, 0x0

    .line 148
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 149
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->nextDay()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public prepareTSSystems()V
    .registers 3

    const/4 v0, 0x0

    .line 130
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 131
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-string v0, "systems"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 70
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_f

    .line 75
    :cond_2c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public update()V
    .registers 3

    .line 137
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V

    const/4 v0, 0x0

    .line 139
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 140
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent;->systems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultTSComponent.AnonymousClass1 (info.flowersoft.theotown.components.DefaultTSComponent$1)
.class Linfo/flowersoft/theotown/components/DefaultTSComponent$1;
.super Ljava/lang/Object;
.source "DefaultTSComponent.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/BuildingList$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultTSComponent;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onAddBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public finished(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 0
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$1;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onRemoveBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public upgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultTSComponent.AnonymousClass2 (info.flowersoft.theotown.components.DefaultTSComponent$2)
.class Linfo/flowersoft/theotown/components/DefaultTSComponent$2;
.super Ljava/lang/Object;
.source "DefaultTSComponent.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/BusStopList$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultTSComponent;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 4

    const/4 v0, 0x0

    .line 104
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onAddBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 4

    const/4 v0, 0x0

    .line 109
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$2;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onRemoveBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultTSComponent.AnonymousClass3 (info.flowersoft.theotown.components.DefaultTSComponent$3)
.class Linfo/flowersoft/theotown/components/DefaultTSComponent$3;
.super Ljava/lang/Object;
.source "DefaultTSComponent.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/RoadList$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultTSComponent;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultTSComponent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    const/4 v0, 0x0

    .line 115
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onAddRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    const/4 v0, 0x0

    .line 120
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTSComponent$3;->this$0:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->access$000(Linfo/flowersoft/theotown/components/DefaultTSComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->onRemoveRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method
