###### Class info.flowersoft.theotown.minigame.ConcreteCurrency (info.flowersoft.theotown.minigame.ConcreteCurrency)
.class public abstract Linfo/flowersoft/theotown/minigame/ConcreteCurrency;
.super Ljava/lang/Object;
.source "ConcreteCurrency.java"

# interfaces
.implements Linfo/flowersoft/theotown/minigame/Currency;


# instance fields
.field public estate:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSpend(D)Z
    .registers 5

    .line 18
    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public getEstate()D
    .registers 3

    .line 28
    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    return-wide v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "estate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 36
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    goto :goto_0

    :cond_20
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const-string v0, "estate"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public spend(D)V
    .registers 5

    .line 23
    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;->estate:D

    return-void
.end method
