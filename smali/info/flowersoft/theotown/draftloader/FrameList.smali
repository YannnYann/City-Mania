###### Class info.flowersoft.theotown.draftloader.FrameList (info.flowersoft.theotown.draftloader.FrameList)
.class public Linfo/flowersoft/theotown/draftloader/FrameList;
.super Ljava/lang/Object;
.source "FrameList.java"


# instance fields
.field public final data:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method


# virtual methods
.method public add(IIIII)V
    .registers 7

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 68
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    return-void
.end method

.method public clearAndRelease()V
    .registers 2

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clearAndRelease()V

    return-void
.end method

.method public getAreaId(I)I
    .registers 3

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getHeight(I)I
    .registers 3

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getWidth(I)I
    .registers 3

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getX(I)I
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getY(I)I
    .registers 3

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public load(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->clear()V

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v1, v0, 0x4

    .line 21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 22
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    add-int/lit8 v2, v0, 0x1

    .line 23
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v5

    add-int/lit8 v2, v0, 0x2

    .line 24
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v6

    add-int/lit8 v2, v0, 0x3

    .line 25
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v7

    .line 26
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v8

    move-object v3, p0

    .line 22
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    add-int/lit8 v0, v0, 0x5

    goto :goto_4

    :cond_2d
    return-void
.end method

.method public matches(IIIIII)Z
    .registers 9

    const/4 v0, 0x0

    if-ltz p1, :cond_2a

    .line 75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->size()I

    move-result v1

    if-lt p1, v1, :cond_a

    goto :goto_2a

    .line 76
    :cond_a
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result v1

    if-ne v1, p2, :cond_2a

    .line 77
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result p2

    if-ne p2, p3, :cond_2a

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result p2

    if-ne p2, p4, :cond_2a

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result p2

    if-ne p2, p5, :cond_2a

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result p1

    if-ne p1, p6, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    :goto_2a
    return v0
.end method

.method public removeFirst()V
    .registers 4

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(II)I

    return-void
.end method

.method public save()Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 32
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/FrameList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 33
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 34
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 35
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 36
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 37
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/FrameList;->data:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method
