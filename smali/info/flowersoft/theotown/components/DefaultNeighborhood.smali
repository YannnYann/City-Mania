###### Class info.flowersoft.theotown.components.DefaultNeighborhood (info.flowersoft.theotown.components.DefaultNeighborhood)
.class public Linfo/flowersoft/theotown/components/DefaultNeighborhood;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultNeighborhood.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 28
    :goto_3
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 29
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "neighbors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 41
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 31
    :cond_1c
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 32
    :goto_1f
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 33
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 35
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->addNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V

    .line 36
    :cond_36
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_1f

    .line 38
    :cond_3a
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_3

    :cond_3e
    return-void
.end method


# virtual methods
.method public create(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
    .registers 5

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-direct {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;-><init>(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->addNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V

    return-object v0
.end method

.method public getDraftNeighborById(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
    .registers 4

    .line 98
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;-><init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getNeighbors(Lio/blueflower/stapel2d/util/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    const/4 p2, 0x0

    .line 107
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    return-object p1
.end method

.method public getDraftNeighbors(Linfo/flowersoft/theotown/draft/Draft;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;-><init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;Linfo/flowersoft/theotown/draft/Draft;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getNeighbors(Lio/blueflower/stapel2d/util/Predicate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNeighbors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$1;-><init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getNeighbors(Lio/blueflower/stapel2d/util/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbors(Lio/blueflower/stapel2d/util/Predicate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 78
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 79
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v2

    .line 80
    instance-of v3, v2, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    if-eqz v3, :cond_23

    .line 81
    check-cast v2, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    .line 82
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x15

    return v0
.end method

.method public remove(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)V
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->removeNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const-string v0, "neighbors"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getNeighbors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    .line 50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 51
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_10

    .line 54
    :cond_26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultNeighborhood.AnonymousClass1 (info.flowersoft.theotown.components.DefaultNeighborhood$1)
.class Linfo/flowersoft/theotown/components/DefaultNeighborhood$1;
.super Ljava/lang/Object;
.source "DefaultNeighborhood.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getNeighbors()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Predicate<",
        "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$1;->this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$1;->apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.components.DefaultNeighborhood.AnonymousClass2 (info.flowersoft.theotown.components.DefaultNeighborhood$2)
.class Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;
.super Ljava/lang/Object;
.source "DefaultNeighborhood.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getDraftNeighbors(Linfo/flowersoft/theotown/draft/Draft;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Predicate<",
        "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;Linfo/flowersoft/theotown/draft/Draft;)V
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

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;->this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z
    .registers 3

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getOwner()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$2;->apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.components.DefaultNeighborhood.AnonymousClass3 (info.flowersoft.theotown.components.DefaultNeighborhood$3)
.class Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;
.super Ljava/lang/Object;
.source "DefaultNeighborhood.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getDraftNeighborById(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Predicate<",
        "Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/Draft;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultNeighborhood;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 98
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->this$0:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z
    .registers 4

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getOwner()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->val$id:Ljava/lang/String;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 98
    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood$3;->apply(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Z

    move-result p1

    return p1
.end method
