###### Class info.flowersoft.theotown.resources.BuildingPeopleCounter (info.flowersoft.theotown.resources.BuildingPeopleCounter)
.class public Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;
.super Ljava/lang/Object;
.source "BuildingPeopleCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;
    }
.end annotation


# instance fields
.field public peopleStatPerBasePerLevel:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/LEQCounter;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field public relevantZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->build()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->isSuitable(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final build()V
    .registers 8

    .line 41
    const-string v0, "PeopleCounter"

    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->peopleStatPerBasePerLevel:Lcom/badlogic/gdx/utils/IntMap;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->relevantZones:Ljava/util/List;

    .line 51
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 52
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v4, :cond_39

    .line 53
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->relevantZones:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 57
    :cond_4f
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 59
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->peopleStatPerBasePerLevel:Lcom/badlogic/gdx/utils/IntMap;

    iget v6, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v5, v6, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_77
    if-ge v3, v4, :cond_53

    .line 64
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->buildForZone(Linfo/flowersoft/theotown/draft/ZoneDraft;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 68
    :cond_7f
    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public final buildForZone(Linfo/flowersoft/theotown/draft/ZoneDraft;I)V
    .registers 11

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 73
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->peopleStatPerBasePerLevel:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->relevantZones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 76
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isBaseOf(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_32
    if-ge v3, v5, :cond_3f

    .line 79
    new-instance v6, Linfo/flowersoft/theotown/util/LEQCounter;

    invoke-direct {v6}, Linfo/flowersoft/theotown/util/LEQCounter;-><init>()V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 81
    :cond_3f
    iget v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 85
    :cond_45
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 86
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->isSuitable(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isBaseOf(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v5, p2, 0x1

    if-ne v4, v5, :cond_4b

    .line 87
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->relevantZones:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_71
    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 88
    iget-object v6, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 89
    iget v6, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v7, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v6, v7

    .line 90
    iget v5, v5, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getMaxSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/util/LEQCounter;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/LEQCounter;->insert(I)V

    goto :goto_71

    .line 98
    :cond_a2
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 100
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_af
    :goto_af
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 101
    iget-object v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move v4, v3

    move v5, v4

    .line 103
    :goto_c1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_d5

    .line 104
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/util/LEQCounter;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/LEQCounter;->getTotal()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    :cond_d5
    if-nez v5, :cond_dd

    .line 107
    iget v1, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_af

    .line 109
    :cond_dd
    :goto_dd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_af

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/LEQCounter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/LEQCounter;->getTotal()I

    move-result v1

    if-nez v1, :cond_af

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_dd

    .line 115
    :cond_ff
    :goto_ff
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    if-ge v3, p2, :cond_10f

    .line 116
    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_ff

    :cond_10f
    return-void
.end method

.method public getCounter(Linfo/flowersoft/theotown/draft/ZoneDraft;I)Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;
    .registers 5

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->peopleStatPerBasePerLevel:Lcom/badlogic/gdx/utils/IntMap;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;-><init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Lcom/badlogic/gdx/utils/IntMap;ILinfo/flowersoft/theotown/resources/BuildingPeopleCounter$1;)V

    return-object v0
.end method

.method public final isSuitable(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 37
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuild:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.resources.BuildingPeopleCounter.AnonymousClass1 (info.flowersoft.theotown.resources.BuildingPeopleCounter$1)
.class public synthetic Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$1;
.super Ljava/lang/Object;
.source "BuildingPeopleCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter (info.flowersoft.theotown.resources.BuildingPeopleCounter$ConcreteCounter)
.class public Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;
.super Ljava/lang/Object;
.source "BuildingPeopleCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConcreteCounter"
.end annotation


# instance fields
.field public level:I

.field public peoplePerSizePerZone:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/LEQCounter;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Lcom/badlogic/gdx/utils/IntMap;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/LEQCounter;",
            ">;>;I)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->this$0:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->peoplePerSizePerZone:Lcom/badlogic/gdx/utils/IntMap;

    .line 131
    iput p3, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->level:I

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Lcom/badlogic/gdx/utils/IntMap;ILinfo/flowersoft/theotown/resources/BuildingPeopleCounter$1;)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;-><init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Lcom/badlogic/gdx/utils/IntMap;I)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;)I
    .registers 1

    .line 124
    iget p0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->level:I

    return p0
.end method


# virtual methods
.method public contains(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 3

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->peoplePerSizePerZone:Lcom/badlogic/gdx/utils/IntMap;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method public evaluate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)I
    .registers 6

    if-lt p4, p3, :cond_19

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->peoplePerSizePerZone:Lcom/badlogic/gdx/utils/IntMap;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/LEQCounter;

    invoke-virtual {p1, p3, p4}, Linfo/flowersoft/theotown/util/LEQCounter;->countInRange(II)I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxSize(Linfo/flowersoft/theotown/draft/ZoneDraft;)I
    .registers 3

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->peoplePerSizePerZone:Lcom/badlogic/gdx/utils/IntMap;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public iterate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)Ljava/lang/Iterable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            "III)",
            "Ljava/lang/Iterable<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;-><init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter.AnonymousClass1 (info.flowersoft.theotown.resources.BuildingPeopleCounter$ConcreteCounter$1)
.class public Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;
.super Ljava/lang/Object;
.source "BuildingPeopleCounter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->iterate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Linfo/flowersoft/theotown/draft/BuildingDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

.field public final synthetic val$maxValue:I

.field public final synthetic val$minValue:I

.field public final synthetic val$size:I

.field public final synthetic val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->this$1:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput p3, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$size:I

    iput p4, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$minValue:I

    iput p5, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$maxValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;-><init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter.AnonymousClass1.C10791 (info.flowersoft.theotown.resources.BuildingPeopleCounter$ConcreteCounter$1$1)
.class public Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;
.super Ljava/lang/Object;
.source "BuildingPeopleCounter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Linfo/flowersoft/theotown/draft/BuildingDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public nextDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final synthetic this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->it:Ljava/util/Iterator;

    .line 156
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->consume()V

    return-void
.end method


# virtual methods
.method public final consume()V
    .registers 5

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->nextDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 161
    :cond_3
    :goto_3
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 164
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->this$1:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->this$0:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->access$100(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_3

    .line 165
    :cond_20
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->this$1:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->access$200(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    if-eq v1, v2, :cond_2f

    goto :goto_3

    .line 166
    :cond_2f
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_3

    .line 168
    :cond_3c
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    iget v1, v1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$size:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getMaxSize()I

    move-result v2

    if-eq v1, v2, :cond_47

    goto :goto_3

    .line 170
    :cond_47
    iget v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v1, v2

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->this$2:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;

    iget v3, v2, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$minValue:I

    if-gt v3, v1, :cond_3

    iget v2, v2, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1;->val$maxValue:I

    if-gt v1, v2, :cond_3

    .line 172
    iput-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->nextDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    :cond_58
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->nextDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 2

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->nextDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 186
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->consume()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter$1$1;->next()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No removal supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
