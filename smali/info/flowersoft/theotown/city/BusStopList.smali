###### Class info.flowersoft.theotown.city.BusStopList (info.flowersoft.theotown.city.BusStopList)
.class public Linfo/flowersoft/theotown/city/BusStopList;
.super Ljava/util/AbstractList;
.source "BusStopList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/BusStopList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Linfo/flowersoft/theotown/city/objects/BusStop;",
        ">;"
    }
.end annotation


# instance fields
.field public list:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/BusStopList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final listsByDraft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    new-instance v1, Linfo/flowersoft/theotown/city/BusStopList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/BusStopList$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listsByDraft:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    .line 28
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUSSTOPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 29
    iget-object v2, p0, Linfo/flowersoft/theotown/city/BusStopList;->listsByDraft:Ljava/util/Map;

    new-instance v3, Linfo/flowersoft/theotown/util/SortedList;

    new-instance v4, Linfo/flowersoft/theotown/city/BusStopList$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Linfo/flowersoft/theotown/city/BusStopList$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_45
    return-void
.end method


# virtual methods
.method public add(ILinfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 3

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot add to bus stop list by index"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 19
    check-cast p2, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/BusStopList;->add(ILinfo/flowersoft/theotown/city/objects/BusStop;)V

    return-void
.end method

.method public add(Linfo/flowersoft/theotown/city/objects/BusStop;)Z
    .registers 3

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->register(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    return v0
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

    .line 19
    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->add(Linfo/flowersoft/theotown/city/objects/BusStop;)Z

    move-result p1

    return p1
.end method

.method public addListener(Linfo/flowersoft/theotown/city/BusStopList$Listener;)V
    .registers 3

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

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

    .line 19
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->get(I)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    return-object p1
.end method

.method public getOfDraft(Linfo/flowersoft/theotown/draft/BusStopDraft;)Linfo/flowersoft/theotown/util/SortedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ")",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listsByDraft:Ljava/util/Map;

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
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public final register(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 4

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listsByDraft:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 91
    :goto_10
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 92
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BusStopList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/BusStopList$Listener;->add(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-void
.end method

.method public remove(I)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 3

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->unregister(Linfo/flowersoft/theotown/city/objects/BusStop;)V

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

    .line 19
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->remove(I)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/BusStopList;->unregister(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    :cond_d
    return v0
.end method

.method public removeListener(Linfo/flowersoft/theotown/city/BusStopList$Listener;)V
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 2

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->list:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final unregister(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 4

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BusStopList;->listsByDraft:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 99
    :goto_10
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 100
    iget-object v1, p0, Linfo/flowersoft/theotown/city/BusStopList;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/BusStopList$Listener;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/city/BusStopList$Listener;->remove(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.city.BusStopList.Listener (info.flowersoft.theotown.city.BusStopList$Listener)
.class public interface abstract Linfo/flowersoft/theotown/city/BusStopList$Listener;
.super Ljava/lang/Object;
.source "BusStopList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/BusStopList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract add(Linfo/flowersoft/theotown/city/objects/BusStop;)V
.end method

.method public abstract remove(Linfo/flowersoft/theotown/city/objects/BusStop;)V
.end method

###### Class info.flowersoft.theotown.city.BusStopList$$ExternalSyntheticLambda0 (info.flowersoft.theotown.city.BusStopList$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/city/BusStopList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/SortedList$Interpreter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interprete(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result p1

    return p1
.end method
