###### Class info.flowersoft.theotown.minigame.BusCurrency (info.flowersoft.theotown.minigame.BusCurrency)
.class public Linfo/flowersoft/theotown/minigame/BusCurrency;
.super Linfo/flowersoft/theotown/minigame/ConcreteCurrency;
.source "BusCurrency.java"


# instance fields
.field public unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/minigame/ConcreteCurrency;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x36f

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusCurrency;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 25
    const-string v0, "bus currency"

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusCurrency;->unit:Ljava/lang/String;

    return-object v0
.end method
