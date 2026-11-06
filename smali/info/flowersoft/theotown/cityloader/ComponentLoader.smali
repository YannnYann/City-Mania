###### Class info.flowersoft.theotown.cityloader.ComponentLoader (info.flowersoft.theotown.cityloader.ComponentLoader)
.class public abstract Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.super Ljava/lang/Object;
.source "ComponentLoader.java"


# instance fields
.field public info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

.field public missingDrafts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/resources/MissingDraftException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public afterLoad(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 41
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 42
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/MissingDraftException;

    .line 43
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Loader"

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_3e
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
.end method

.method public loadRaw(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-object p2
.end method

.method public abstract loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public saveRaw(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public abstract saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setInfo(Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
    .registers 2

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    return-void
.end method
