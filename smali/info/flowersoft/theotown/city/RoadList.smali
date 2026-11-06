###### Class info.flowersoft.theotown.city.RoadList (info.flowersoft.theotown.city.RoadList)
.class public Linfo/flowersoft/theotown/city/RoadList;
.super Linfo/flowersoft/theotown/city/AbstractConnectionList;
.source "RoadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/RoadList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/city/AbstractConnectionList<",
        "Linfo/flowersoft/theotown/city/objects/Road;",
        ">;"
    }
.end annotation


# instance fields
.field public final draftRoads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;>;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/RoadList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public maxLevel:I

.field public minLevel:I

.field public final railRoads:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final roads:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/city/RoadList$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/city/RoadList$1;-><init>(Linfo/flowersoft/theotown/city/RoadList;)V

    .line 37
    new-instance v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->draftRoads:Ljava/util/Map;

    .line 40
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 41
    iget-object v3, p0, Linfo/flowersoft/theotown/city/RoadList;->draftRoads:Ljava/util/Map;

    new-instance v4, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 44
    :cond_40
    new-instance v1, Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->railRoads:Linfo/flowersoft/theotown/util/SortedList;

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 3

    .line 67
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->registerRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    return p1
.end method

.method public addListener(Linfo/flowersoft/theotown/city/RoadList$Listener;)V
    .registers 3

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 3

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

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

    .line 17
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->get(I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    return-object p1
.end method

.method public getMaxLevel()I
    .registers 2

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/city/RoadList;->maxLevel:I

    return v0
.end method

.method public getMinLevel()I
    .registers 2

    .line 76
    iget v0, p0, Linfo/flowersoft/theotown/city/RoadList;->minLevel:I

    return v0
.end method

.method public getRailRoads()Linfo/flowersoft/theotown/util/SortedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->railRoads:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ")",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->draftRoads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/SortedList;

    return-object p1
.end method

.method public getSorted()Linfo/flowersoft/theotown/util/SortedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public hasConnection(Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 2

    .line 144
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->hasConnection()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasConnection(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->hasConnection(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    return p1
.end method

.method public final isRailRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 6

    .line 127
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/16 v2, 0x1108

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final registerRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    .line 104
    iget v0, p0, Linfo/flowersoft/theotown/city/RoadList;->minLevel:I

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/RoadList;->minLevel:I

    .line 105
    iget v0, p0, Linfo/flowersoft/theotown/city/RoadList;->maxLevel:I

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/RoadList;->maxLevel:I

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->draftRoads:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->isRailRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->railRoads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    :cond_2c
    const/4 v0, 0x0

    .line 111
    :goto_2d
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 112
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/RoadList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/RoadList$Listener;->add(Linfo/flowersoft/theotown/city/objects/Road;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_43
    return-void
.end method

.method public remove(I)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 3

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz p1, :cond_16

    .line 97
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->unregisterRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    :cond_16
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

    .line 17
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->remove(I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_1a

    .line 86
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt p1, v1, :cond_12

    goto :goto_1a

    .line 87
    :cond_12
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->remove(I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public removeListener(Linfo/flowersoft/theotown/city/RoadList$Listener;)V
    .registers 3

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 2

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final unregisterRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->draftRoads:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList;->isRailRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/city/RoadList;->railRoads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    :cond_18
    const/4 v0, 0x0

    .line 121
    :goto_19
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 122
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/RoadList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/RoadList$Listener;->remove(Linfo/flowersoft/theotown/city/objects/Road;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    return-void
.end method

###### Class info.flowersoft.theotown.city.RoadList.AnonymousClass1 (info.flowersoft.theotown.city.RoadList$1)
.class Linfo/flowersoft/theotown/city/RoadList$1;
.super Ljava/lang/Object;
.source "RoadList.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SortedList$Interpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/RoadList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
        "Linfo/flowersoft/theotown/city/objects/Road;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/RoadList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/RoadList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/city/RoadList$1;->this$0:Linfo/flowersoft/theotown/city/RoadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interprete(Linfo/flowersoft/theotown/city/objects/Road;)I
    .registers 2

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

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

    .line 30
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/RoadList$1;->interprete(Linfo/flowersoft/theotown/city/objects/Road;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.city.RoadList.Listener (info.flowersoft.theotown.city.RoadList$Listener)
.class public interface abstract Linfo/flowersoft/theotown/city/RoadList$Listener;
.super Ljava/lang/Object;
.source "RoadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/RoadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract add(Linfo/flowersoft/theotown/city/objects/Road;)V
.end method

.method public abstract remove(Linfo/flowersoft/theotown/city/objects/Road;)V
.end method
