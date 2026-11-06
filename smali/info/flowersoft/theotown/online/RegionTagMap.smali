###### Class info.flowersoft.theotown.online.RegionTagMap (info.flowersoft.theotown.online.RegionTagMap)
.class public Linfo/flowersoft/theotown/online/RegionTagMap;
.super Ljava/lang/Object;
.source "RegionTagMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/online/RegionTagMap$Tag;
    }
.end annotation


# instance fields
.field public ids:Lio/blueflower/stapel2d/util/IntList;

.field public tagsById:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/online/RegionTagMap$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->ids:Lio/blueflower/stapel2d/util/IntList;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->tagsById:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public containsIds(I)Z
    .registers 3

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->tagsById:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method public getId(I)I
    .registers 3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->ids:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getNameById(I)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getTagById(I)Linfo/flowersoft/theotown/online/RegionTagMap$Tag;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 46
    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->name:Ljava/lang/String;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRawColorById(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getTagById(I)Linfo/flowersoft/theotown/online/RegionTagMap$Tag;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 51
    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1

    :cond_9
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getRegionCountById(I)I
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getTagById(I)Linfo/flowersoft/theotown/online/RegionTagMap$Tag;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 60
    iget p1, p1, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->ctr:I

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public getTagById(I)Linfo/flowersoft/theotown/online/RegionTagMap$Tag;
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->tagsById:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;

    return-object p1
.end method

.method public getThemedColorById(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 55
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getRawColorById(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public put(ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;I)V
    .registers 7

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->tagsById:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v1, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;

    invoke-direct {v1, p2, p3, p4}, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;I)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_12

    .line 32
    iget-object p2, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->ids:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_12
    return-void
.end method

.method public size()I
    .registers 2

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionTagMap;->ids:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.online.RegionTagMap.Tag (info.flowersoft.theotown.online.RegionTagMap$Tag)
.class public Linfo/flowersoft/theotown/online/RegionTagMap$Tag;
.super Ljava/lang/Object;
.source "RegionTagMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/online/RegionTagMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public ctr:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;I)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 23
    iput p3, p0, Linfo/flowersoft/theotown/online/RegionTagMap$Tag;->ctr:I

    return-void
.end method
