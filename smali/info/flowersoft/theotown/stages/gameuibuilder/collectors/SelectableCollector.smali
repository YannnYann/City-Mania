###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector)
.class public abstract Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.super Ljava/lang/Object;
.source "SelectableCollector.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public collect()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->collect(Ljava/util/List;)V

    return-object v0
.end method

.method public abstract collect(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getIconId()I
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getNameId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public isVisible()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
