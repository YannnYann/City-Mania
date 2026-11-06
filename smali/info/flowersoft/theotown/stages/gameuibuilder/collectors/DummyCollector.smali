###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.DummyCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.DummyCollector)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/DummyCollector;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "DummyCollector.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "DummyCollector"

    return-object v0
.end method
