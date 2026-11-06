###### Class io.bidmachine.utils.data.MapDataRetriever (io.bidmachine.utils.data.MapDataRetriever)
.class public Lio/bidmachine/utils/data/MapDataRetriever;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/data/DataRetriever;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/utils/data/DataRetriever<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final dataConverter:Lio/bidmachine/utils/data/DataConverter;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lio/bidmachine/utils/data/SmartDataConverter;

    invoke-direct {v1}, Lio/bidmachine/utils/data/SmartDataConverter;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/bidmachine/utils/data/MapDataRetriever;-><init>(Ljava/util/Map;Lio/bidmachine/utils/data/DataConverter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lio/bidmachine/utils/data/DataConverter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/bidmachine/utils/data/DataConverter;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/utils/data/MapDataRetriever;->params:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/utils/data/MapDataRetriever;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/utils/data/MapDataRetriever;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/Object;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public getDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/Object;F)F
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    return p1
.end method

.method public getFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Ljava/lang/Object;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toInteger(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/data/MapDataRetriever;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/utils/data/MapDataRetriever;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    return-object p2
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/data/MapDataRetriever;->dataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/utils/data/MapDataRetriever;->getObjectOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/utils/data/MapDataRetriever;->clear()V

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/utils/data/MapDataRetriever;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    return-void
.end method
