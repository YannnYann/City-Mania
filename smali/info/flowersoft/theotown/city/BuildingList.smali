###### Class info.flowersoft.theotown.city.BuildingList (info.flowersoft.theotown.city.BuildingList)
.class public Linfo/flowersoft/theotown/city/BuildingList;
.super Ljava/util/AbstractList;
.source "BuildingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/BuildingList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUILDING_INTERPRETER:Linfo/flowersoft/theotown/util/SortedList$Interpreter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final baseTypedBuildings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;>;"
        }
    .end annotation
.end field

.field public final buildings:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final draftBuildings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;>;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/BuildingList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public maxBuildHeight:I

.field public notifyListeners:Z

.field public final rciBuildings:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final rciCarBuildings:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final typedBuildings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/city/BuildingList$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/BuildingList$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/city/BuildingList;->BUILDING_INTERPRETER:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 47
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    sget-object v1, Linfo/flowersoft/theotown/city/BuildingList;->BUILDING_INTERPRETER:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    .line 32
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->baseTypedBuildings:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->draftBuildings:Ljava/util/Map;

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciBuildings:Linfo/flowersoft/theotown/util/SortedList;

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciCarBuildings:Linfo/flowersoft/theotown/util/SortedList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->maxBuildHeight:I

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    array-length v2, v1

    :goto_49
    if-ge v0, v2, :cond_76

    aget-object v3, v1, v0

    .line 49
    iget-object v4, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    new-instance v5, Linfo/flowersoft/theotown/util/SortedList;

    sget-object v6, Linfo/flowersoft/theotown/city/BuildingList;->BUILDING_INTERPRETER:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v4, p0, Linfo/flowersoft/theotown/city/BuildingList;->baseTypedBuildings:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 51
    iget-object v4, p0, Linfo/flowersoft/theotown/city/BuildingList;->baseTypedBuildings:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 55
    :cond_76
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 56
    iget-object v2, p0, Linfo/flowersoft/theotown/city/BuildingList;->draftBuildings:Ljava/util/Map;

    new-instance v3, Linfo/flowersoft/theotown/util/SortedList;

    sget-object v4, Linfo/flowersoft/theotown/city/BuildingList;->BUILDING_INTERPRETER:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_95
    return-void
.end method


# virtual methods
.method public add(ILinfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 88
    iget-object p1, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/BuildingList;->registerBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21
    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/BuildingList;->add(ILinfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public addListener(Linfo/flowersoft/theotown/city/BuildingList$Listener;)V
    .registers 3

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    return-object p1
.end method

.method public getBuildingsOfBaseType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            ")",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/SortedList;

    return-object p1
.end method

.method public getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ")",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->draftBuildings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/SortedList;

    return-object p1
.end method

.method public getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            ")",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/SortedList;

    return-object p1
.end method

.method public getMaxBuildHeight()I
    .registers 2

    .line 172
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->maxBuildHeight:I

    return v0
.end method

.method public getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciBuildings:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public getRciCarBuildings()Linfo/flowersoft/theotown/util/SortedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciCarBuildings:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public getSorted()Linfo/flowersoft/theotown/util/SortedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public isNotifyListeners()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    return v0
.end method

.method public onBuildingFinished(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    .line 180
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 181
    :goto_5
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 182
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BuildingList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/BuildingList$Listener;->finished(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public onBuildingUpgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 5

    .line 188
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 189
    :goto_5
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 190
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BuildingList$Listener;

    invoke-interface {v1, p1, p2}, Linfo/flowersoft/theotown/city/BuildingList$Listener;->upgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public final registerBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 117
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->baseTypedBuildings:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->draftBuildings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciBuildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3a
    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    if-eqz v0, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciCarBuildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_43
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->maxBuildHeight:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->maxBuildHeight:I

    .line 126
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    .line 127
    :goto_56
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 128
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BuildingList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/BuildingList$Listener;->add(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_6c
    return-void
.end method

.method public remove(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p1, :cond_d

    .line 97
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->unregisterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_d
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->remove(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 105
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->unregisterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return v0
.end method

.method public removeListener(Linfo/flowersoft/theotown/city/BuildingList$Listener;)V
    .registers 3

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNotifyListeners(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    return-void
.end method

.method public size()I
    .registers 2

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final unregisterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 134
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 136
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->typedBuildings:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->baseTypedBuildings:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->draftBuildings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciBuildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 141
    :cond_3a
    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    if-eqz v0, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->rciCarBuildings:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_43
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingList;->notifyListeners:Z

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    .line 144
    :goto_48
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 145
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BuildingList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BuildingList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/BuildingList$Listener;->remove(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_5e
    return-void
.end method

###### Class info.flowersoft.theotown.city.BuildingList.AnonymousClass1 (info.flowersoft.theotown.city.BuildingList$1)
.class Linfo/flowersoft/theotown/city/BuildingList$1;
.super Ljava/lang/Object;
.source "BuildingList.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SortedList$Interpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/BuildingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interprete(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p1

    return p1
.end method

.method public bridge synthetic interprete(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BuildingList$1;->interprete(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.city.BuildingList.Listener (info.flowersoft.theotown.city.BuildingList$Listener)
.class public interface abstract Linfo/flowersoft/theotown/city/BuildingList$Listener;
.super Ljava/lang/Object;
.source "BuildingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/BuildingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract add(Linfo/flowersoft/theotown/city/objects/Building;)V
.end method

.method public abstract finished(Linfo/flowersoft/theotown/city/objects/Building;)V
.end method

.method public abstract remove(Linfo/flowersoft/theotown/city/objects/Building;)V
.end method

.method public abstract upgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
.end method
