###### Class info.flowersoft.theotown.components.actionplace.ActionPlaceController (info.flowersoft.theotown.components.actionplace.ActionPlaceController)
.class public Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;
.super Ljava/lang/Object;
.source "ActionPlaceController.java"


# instance fields
.field public final activeSolvers:[I

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final handlersPerType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field public final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/MapArea;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "action place"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    .line 29
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    const/4 v0, 0x0

    .line 31
    :goto_20
    sget v1, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge v0, v1, :cond_3b

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3b
    return-void
.end method


# virtual methods
.method public declared-synchronized addOrRemoveActionPlace(Linfo/flowersoft/theotown/city/MapArea;I)V
    .registers 6

    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 120
    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->getClosestPlace(ILinfo/flowersoft/theotown/city/MapArea;)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 122
    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeActionPlace(ILinfo/flowersoft/theotown/city/MapArea;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 123
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto :goto_73

    .line 127
    :cond_14
    :try_start_14
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "max places at once"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    const/4 v2, 0x0

    aput v2, v1, p2

    .line 129
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2d
    iget-object p1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_47

    .line 131
    iget-object p1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    .line 133
    :cond_47
    :goto_47
    iget-object p1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_71

    .line 134
    iget-object p1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;->notifyAction(Ljava/util/List;I)V
    :try_end_6e
    .catchall {:try_start_14 .. :try_end_6e} :catchall_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 137
    :cond_71
    monitor-exit p0

    return-void

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_12

    throw p1
.end method

.method public declared-synchronized getAreas(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/MapArea;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final getClosestPlace(III)Linfo/flowersoft/theotown/city/MapArea;
    .registers 11

    const/4 v0, 0x0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    .line 177
    :goto_4
    iget-object v3, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 178
    iget-object v3, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/MapArea;

    .line 179
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MapArea;->getCenterX()F

    move-result v4

    int-to-float v5, p2

    sub-float/2addr v4, v5

    .line 180
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MapArea;->getCenterY()F

    move-result v5

    int-to-float v6, p3

    sub-float/2addr v5, v6

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    cmpg-float v5, v4, v1

    if-gez v5, :cond_35

    move-object v0, v3

    move v1, v4

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_38
    return-object v0
.end method

.method public final getClosestPlace(ILinfo/flowersoft/theotown/city/MapArea;)Linfo/flowersoft/theotown/city/MapArea;
    .registers 6

    const/4 v0, 0x0

    .line 165
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 166
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/MapArea;

    .line 167
    invoke-virtual {v1, p2}, Linfo/flowersoft/theotown/city/MapArea;->intersectsBB(Linfo/flowersoft/theotown/city/MapArea;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized isActive(I)Z
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "controllers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 41
    :cond_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 42
    :goto_25
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge v1, v0, :cond_4e

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 43
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/MapArea;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 46
    iget-object v2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 50
    :cond_4e
    :goto_4e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_4e

    .line 51
    :cond_58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    .line 54
    :cond_5c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 55
    :goto_5f
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge v1, v0, :cond_a5

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "targets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_9f

    .line 59
    :cond_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 60
    :goto_82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/MapArea;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 63
    iget-object v2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 65
    :cond_9c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 71
    :goto_9f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 73
    :cond_a5
    :goto_a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_a5

    .line 74
    :cond_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_b4
    return-void
.end method

.method public declared-synchronized registerHandler(Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;I)V
    .registers 4

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;->notifyAction(Ljava/util/List;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p1

    goto :goto_22

    .line 101
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw p1
.end method

.method public declared-synchronized registerSolver(I)V
    .registers 4

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 109
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized removeActionPlace(III)V
    .registers 5

    monitor-enter p0

    .line 140
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->getClosestPlace(III)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 142
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeActionPlace(ILinfo/flowersoft/theotown/city/MapArea;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 144
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

.method public declared-synchronized removeActionPlace(ILinfo/flowersoft/theotown/city/MapArea;)V
    .registers 5

    monitor-enter p0

    .line 147
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 148
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->getClosestPlace(ILinfo/flowersoft/theotown/city/MapArea;)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_58

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object p2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    const/4 v0, 0x0

    aput v0, p2, p1

    .line 153
    :goto_2c
    iget-object p2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_5b

    .line 154
    iget-object p2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;

    .line 155
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p2, v1, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;->notifyAction(Ljava/util/List;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :catchall_56
    move-exception p1

    goto :goto_5d

    .line 158
    :cond_58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeAllActionPlaces(I)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_56

    .line 162
    :cond_5b
    monitor-exit p0

    return-void

    :goto_5d
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_56

    throw p1
.end method

.method public declared-synchronized removeAllActionPlaces(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 191
    :goto_3
    :try_start_3
    iget-object v2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 192
    iget-object v2, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->handlersPerType:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;

    .line 193
    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;->notifyNoAction(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_25
    move-exception p1

    goto :goto_38

    .line 195
    :cond_27
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 196
    iget-object v1, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    aput v0, v1, p1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_25

    .line 197
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_25

    throw p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-string v0, "controllers"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 85
    :goto_b
    sget v2, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge v1, v2, :cond_47

    .line 86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    const-string v2, "targets"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v0

    .line 88
    :goto_1c
    iget-object v3, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 89
    iget-object v3, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->targets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/MapArea;

    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/MapArea;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 91
    :cond_3e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 94
    :cond_47
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public declared-synchronized unregisterSolver(I)V
    .registers 4

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->activeSolvers:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    if-gtz v1, :cond_11

    .line 114
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeAllActionPlaces(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 116
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method
