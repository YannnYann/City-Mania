###### Class info.flowersoft.theotown.components.disaster.UfoDisaster (info.flowersoft.theotown.components.disaster.UfoDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/UfoDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "UfoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;,
        Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;,
        Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;
    }
.end annotation


# instance fields
.field public animationTime:I

.field public final beamAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final craterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public currentDay:Ljava/lang/Long;

.field public dayPart:F

.field public final dustAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final explosionAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final explosions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;",
            ">;"
        }
    .end annotation
.end field

.field public final lightAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final rocketAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final rockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;",
            ">;"
        }
    .end annotation
.end field

.field public timeDelta:I

.field public final ufoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final ufos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    .line 60
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$ufo00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$ufo_beam00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->beamAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 62
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationtornadodirt00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dustAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 63
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$ufo_light00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->lightAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 64
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$ufo_crater00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->craterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 65
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animexplosion00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosionAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 67
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$mlty_rocket00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rocketAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public final addExplosion(FFF)V
    .registers 5

    .line 331
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;-><init>()V

    .line 332
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2402(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F

    .line 333
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2502(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F

    .line 334
    invoke-static {v0, p3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2602(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F

    .line 335
    iget p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;I)I

    .line 336
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRocket(FFFFFFFFF)V
    .registers 11

    .line 255
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;-><init>()V

    .line 256
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1402(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 257
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1502(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 258
    invoke-static {v0, p3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1602(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 259
    invoke-static {v0, p4}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 260
    invoke-static {v0, p5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 261
    invoke-static {v0, p6}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1902(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 262
    invoke-static {v0, p7}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 263
    invoke-static {v0, p8}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 264
    invoke-static {v0, p9}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 265
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2302(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;J)J

    .line 266
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addUfo(FF)V
    .registers 10

    .line 293
    new-instance v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-direct {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;-><init>()V

    .line 294
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43800000    # 256.0f

    add-float/2addr v0, v1

    iput v0, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    .line 295
    iput p1, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 296
    iput p2, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    const/4 p1, 0x0

    .line 297
    invoke-static {v5, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 298
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide p1

    invoke-static {v5, p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    .line 299
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 302
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_UFO_AMBIENT:I

    sget-object v6, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    iget v1, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    float-to-int v3, v1

    iget v1, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    float-to-int v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;-><init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V

    invoke-virtual {p1, p2, v6, v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public final createCrater(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V
    .registers 6

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Catastrophe;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Catastrophe;->issueQuake()V

    .line 195
    iget v0, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x3

    .line 196
    iget p1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 p1, p1, -0x3

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->craterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tryToPlaceCrater(Linfo/flowersoft/theotown/draft/BuildingDraft;IILvm2/LuaValue;)V

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 6

    .line 390
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->fetchTime()V

    const/4 v0, 0x0

    move v1, v0

    .line 392
    :goto_5
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 393
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;

    .line 394
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 395
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->updateRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)V

    .line 396
    invoke-virtual {p0, v2, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->drawRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;Lio/blueflower/stapel2d/drawing/Engine;)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    move v1, v0

    .line 400
    :goto_25
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 401
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    .line 402
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 403
    invoke-virtual {p0, v2, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->drawUfo(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Lio/blueflower/stapel2d/drawing/Engine;)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 407
    :cond_41
    :goto_41
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 408
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;

    .line 409
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 410
    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->drawExplosion(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;Lio/blueflower/stapel2d/drawing/Engine;)V

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_5d
    return-void
.end method

.method public final drawExplosion(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 10

    .line 434
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 435
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 437
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F

    move-result v1

    .line 438
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F

    move-result v2

    .line 439
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    .line 440
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v3

    .line 441
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    .line 442
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v1

    .line 443
    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v2

    .line 444
    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v0

    .line 445
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F

    move-result v1

    .line 447
    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosionAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v4

    .line 448
    iget v5, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$2700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x64

    if-lt v5, v4, :cond_47

    const/4 p2, 0x1

    .line 451
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;Z)Z

    return-void

    .line 455
    :cond_47
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosionAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v1, v5

    invoke-virtual {p2, p1, v2, v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public final drawRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 9

    .line 416
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 417
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 419
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    .line 420
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    .line 421
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    .line 422
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v3

    .line 423
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    .line 424
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v1

    .line 425
    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v2

    .line 426
    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v0

    .line 427
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result p1

    .line 429
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rocketAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v3, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    array-length v4, p1

    rem-int/2addr v3, v4

    aget p1, p1, v3

    invoke-virtual {p2, v1, v2, v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public final drawUfo(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 522
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v6

    .line 524
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const v8, 0x3f666666    # 0.9f

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-ne v0, v12, :cond_d4

    .line 525
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v0

    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 526
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1300(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v2

    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 527
    iget v3, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dayPart:F

    iget-object v4, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    long-to-float v4, v13

    add-float/2addr v3, v4

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v4, v0, v0

    mul-float v13, v2, v2

    add-float/2addr v4, v13

    float-to-double v13, v4

    .line 528
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-float v4, v13

    add-float/2addr v4, v11

    div-float/2addr v3, v4

    .line 529
    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v13, v4

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v4, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v4, v13

    sub-float/2addr v13, v4

    .line 530
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v4

    mul-float/2addr v0, v13

    add-float/2addr v4, v0

    iput v4, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 531
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v0

    mul-float/2addr v13, v2

    add-float/2addr v0, v13

    iput v0, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 532
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget v2, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    float-to-int v2, v2

    iget v4, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43800000    # 256.0f

    add-float/2addr v0, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    iget v2, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    iput v0, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    cmpl-float v0, v3, v11

    if-ltz v0, :cond_d4

    .line 534
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 535
    iget-object v0, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    .line 536
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v0

    iput v0, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 537
    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1300(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F

    move-result v0

    iput v0, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 539
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 540
    sget v14, Linfo/flowersoft/theotown/resources/Resources;->SOUND_UFO_LASER:I

    sget-object v15, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;

    iget-object v2, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    iget v3, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    float-to-int v3, v3

    iget v4, v5, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    float-to-int v4, v4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;-><init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    invoke-virtual {v13, v14, v15, v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_d6

    :cond_d4
    move-object v0, v1

    move-object v1, v5

    .line 569
    :goto_d6
    iget v2, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 570
    iget v3, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 571
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v13

    .line 572
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v14

    .line 573
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    .line 574
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v2

    .line 575
    invoke-virtual {v6, v4, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v3

    .line 576
    invoke-virtual {v6, v4, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v2

    .line 577
    iget v4, v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    .line 580
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v5

    const-wide/high16 v15, 0x4089000000000000L    # 800.0

    const/high16 v17, 0x40000000    # 2.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-nez v5, :cond_140

    .line 581
    iget v5, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dayPart:F

    move/from16 v18, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v21

    move v8, v11

    sub-long v11, v19, v21

    long-to-float v11, v11

    add-float/2addr v5, v11

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float v5, v5, v17

    float-to-double v11, v4

    sub-float v4, v8, v5

    .line 582
    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-wide/from16 v20, v11

    float-to-double v10, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v15

    add-double v11, v20, v10

    double-to-float v4, v11

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_143

    .line 584
    invoke-static {v1, v9}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 585
    iget-object v5, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    goto :goto_143

    :cond_140
    move/from16 v18, v8

    move v8, v11

    .line 588
    :cond_143
    :goto_143
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_179

    .line 589
    iget v5, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dayPart:F

    iget-object v10, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v20

    sub-long v10, v10, v20

    long-to-float v10, v10

    add-float/2addr v5, v10

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float v5, v5, v17

    float-to-double v11, v4

    .line 590
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move/from16 v17, v8

    float-to-double v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v15

    add-double/2addr v11, v8

    double-to-float v4, v11

    cmpl-float v5, v5, v17

    if-ltz v5, :cond_17b

    const/4 v5, 0x1

    .line 592
    invoke-static {v1, v5}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Z)Z

    return-void

    :cond_179
    move/from16 v17, v8

    .line 596
    :cond_17b
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_1bb

    .line 597
    iget v5, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dayPart:F

    iget-object v8, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v20

    const/high16 v22, 0x40800000    # 4.0f

    sub-long v10, v15, v20

    long-to-float v8, v10

    add-float/2addr v5, v8

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float v5, v5, v22

    move/from16 v8, v17

    .line 598
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v18

    sub-float v11, v8, v6

    mul-float/2addr v4, v11

    .line 599
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float v10, v5, v6

    :goto_1b8
    move v11, v10

    move v10, v4

    goto :goto_1bf

    :cond_1bb
    const/4 v10, 0x0

    const/high16 v22, 0x40800000    # 4.0f

    goto :goto_1b8

    :goto_1bf
    mul-float v4, v10, v14

    sub-float v15, v2, v4

    .line 605
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v4

    const/high16 v16, 0x43480000    # 200.0f

    const/4 v12, 0x2

    if-ne v4, v12, :cond_281

    .line 606
    iget-object v4, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dustAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    iget v7, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    div-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 607
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 608
    iget-object v7, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dustAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v12, v7

    rem-int v12, v4, v12

    aget v12, v7, v12

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 609
    array-length v5, v7

    rem-int/2addr v4, v5

    aget v5, v7, v4

    mul-float v4, v13, v22

    mul-float v7, v14, v22

    move-object/from16 v6, p2

    .line 610
    invoke-virtual {v6, v4, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 611
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v7, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dustAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget v7, v7, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    iget v8, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float v7, v7, v16

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v7, v8

    move v8, v3

    move v3, v2

    move v2, v8

    move v8, v7

    move-object v7, v6

    move v6, v8

    move-object v8, v0

    move-object v0, v4

    move v4, v12

    const/16 v9, 0xff

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->draw(Lio/blueflower/stapel2d/drawing/Image;FFIIFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 613
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v7, v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 614
    invoke-virtual {v7, v13, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v0, 0x64

    .line 617
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 618
    iget v1, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    div-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    rem-float/2addr v0, v1

    sub-float v0, v1, v0

    :goto_230
    cmpg-float v4, v0, v10

    if-gez v4, :cond_277

    div-float v4, v0, v10

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v4

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    mul-float v4, v6, v13

    mul-float/2addr v6, v14

    .line 622
    invoke-virtual {v7, v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v0, v4

    .line 623
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 624
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v17, v0, v14

    sub-float v17, v3, v17

    move/from16 v19, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->beamAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v5, v5, v12

    invoke-virtual {v7, v4, v6, v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-float v0, v0, v19

    move/from16 v1, v19

    goto :goto_230

    .line 627
    :cond_277
    invoke-virtual {v7, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 628
    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 629
    invoke-virtual {v7, v13, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    goto :goto_288

    :cond_281
    move-object/from16 v7, p2

    move-object v8, v0

    move v2, v3

    const/16 v9, 0xff

    const/4 v12, 0x0

    .line 632
    :goto_288
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2ef

    .line 633
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v12

    invoke-virtual {v7, v0, v1, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 635
    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    move v6, v12

    :goto_2a8
    const/16 v0, 0x28

    if-ge v6, v0, :cond_2eb

    const v0, 0x40c90fdb

    int-to-float v1, v6

    mul-float/2addr v1, v0

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 638
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v13

    .line 639
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v14

    .line 640
    iget-object v1, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->lightAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    iget v4, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    div-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v6

    .line 641
    iget-object v4, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->lightAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v5, v4

    rem-int/2addr v1, v5

    aget v1, v4, v1

    .line 642
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr v3, v2

    add-float/2addr v0, v15

    invoke-virtual {v7, v4, v3, v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a8

    .line 645
    :cond_2eb
    invoke-virtual {v7, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    return-void

    .line 647
    :cond_2ef
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v0, v12

    move-object v0, v7

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImageRotated(Lio/blueflower/stapel2d/drawing/Image;FFIF)V

    return-void
.end method

.method public final explodeRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)V
    .registers 12

    .line 490
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 491
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 492
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 494
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_92

    .line 495
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    .line 497
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v6, v6, 0x8

    if-gt v2, v6, :cond_42

    .line 498
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v5, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroyBuilding(Linfo/flowersoft/theotown/city/objects/Building;ZLvm2/LuaValue;)Z

    .line 501
    :cond_42
    :goto_42
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_8c

    .line 502
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    .line 503
    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5f

    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v6

    if-ne v6, v4, :cond_89

    .line 504
    :cond_5f
    iget v6, v3, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    .line 505
    iget v7, v3, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    int-to-float v8, v1

    sub-float/2addr v7, v8

    .line 506
    iget v8, v3, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    int-to-float v9, v2

    sub-float/2addr v8, v9

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v8, v8

    add-float/2addr v6, v8

    float-to-double v6, v6

    .line 507
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_89

    .line 509
    iget-object v6, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    const/4 v6, 0x4

    .line 510
    invoke-static {v3, v6}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_8c
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 515
    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->addExplosion(FFF)V

    .line 518
    :cond_92
    invoke-static {p1, v4}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;Z)Z

    return-void
.end method

.method public final fetchTime()V
    .registers 4

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    .line 111
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->dayPart:F

    .line 112
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->animationTime:I

    .line 113
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->timeDelta:I

    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3a83126f    # 0.001f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    .line 372
    iget v1, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    goto :goto_29

    .line 374
    :cond_26
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw v0
.end method

.method public getUfoAt(FF)Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;
    .registers 12

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    const/4 v1, 0x0

    .line 272
    :goto_7
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 273
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    .line 274
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_25

    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_62

    .line 275
    :cond_25
    iget v3, v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 276
    iget v4, v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 277
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    .line 278
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v6

    .line 279
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v7

    .line 280
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v3

    .line 281
    invoke-virtual {v0, v7, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v4

    .line 282
    invoke-virtual {v0, v7, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v3

    iget v7, v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    mul-float/2addr v7, v6

    sub-float/2addr v3, v7

    sub-float v4, p1, v4

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float v3, p2, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    mul-float/2addr v4, v4

    mul-float/2addr v3, v3

    add-float/2addr v4, v3

    float-to-double v3, v4

    .line 285
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_62

    return-object v2

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_65
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getUfos(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_b

    .line 653
    :try_start_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_15

    .line 654
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 655
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_9

    .line 656
    monitor-exit p0

    return-object p1

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    throw p1
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 380
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterUfo:Z

    return v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 348
    :goto_3
    :try_start_3
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_37

    .line 349
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2c

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v2

    if-ne v2, v3, :cond_34

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_66

    .line 350
    :cond_2c
    :goto_2c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_37
    if-eqz v0, :cond_5b

    .line 355
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->fetchTime()V

    .line 356
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 357
    iget v1, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    .line 358
    iget v1, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    int-to-float p1, p1

    .line 359
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    int-to-float p1, p2

    .line 360
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1302(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    .line 361
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    goto :goto_64

    :cond_5b
    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    int-to-float p2, p2

    add-float/2addr p2, v0

    .line 363
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->addUfo(FF)V
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_2a

    .line 365
    :goto_64
    monitor-exit p0

    return v3

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_2a

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ufos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 75
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 76
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;-><init>()V

    .line 79
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 80
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_1c

    .line 83
    :cond_36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    :cond_3a
    return-void
.end method

.method public final onDestroy(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V
    .registers 11

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 224
    iget v1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 225
    iget p1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 v2, p1, -0x5

    const/4 v3, 0x0

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_19
    add-int/lit8 v5, p1, 0x5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v4, v6, :cond_56

    add-int/lit8 v5, v1, -0x5

    .line 228
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2f
    add-int/lit8 v6, v1, 0x5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v5, v6, :cond_53

    sub-int v6, v5, v1

    sub-int v7, v4, p1

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    const/16 v7, 0x9

    if-gt v6, v7, :cond_50

    .line 233
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v3, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 238
    :cond_56
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5a
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v2, v4, :cond_a9

    add-int/lit8 v4, v1, -0x5

    .line 239
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_6e
    add-int/lit8 v6, v1, 0x5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v4, v6, :cond_a6

    sub-int v6, v4, v1

    sub-int v7, v2, p1

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    .line 243
    invoke-virtual {v0, v4, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v7

    const/16 v8, 0x19

    if-gt v6, v8, :cond_a3

    if-eqz v7, :cond_a3

    .line 246
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v8, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 247
    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 248
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    :cond_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_a9
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string v0, "ufos"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 95
    :goto_a
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 97
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 100
    :cond_26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final selectTarget(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)Z
    .registers 6

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 206
    :try_start_c
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    .line 207
    iget v1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    .line 208
    iget v1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    .line 209
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F

    .line 210
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$1302(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_48

    const/4 p1, 0x1

    return p1

    :catch_48
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4c
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized update()V
    .registers 4

    monitor-enter p0

    .line 118
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->fetchTime()V

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 121
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    .line 122
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->updateUfo(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V

    .line 123
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 124
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_79

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    move v1, v0

    .line 129
    :goto_2d
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 130
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;

    .line 131
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 132
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->rockets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 137
    :cond_4d
    :goto_4d
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 138
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;

    .line 139
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->access$200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 140
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explosions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 145
    :cond_6d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->ufos:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_27

    .line 159
    monitor-exit p0

    return-void

    :goto_79
    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_27

    throw v0
.end method

.method public final updateRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)V
    .registers 8

    .line 459
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->timeDelta:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 460
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1416(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 461
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1516(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 462
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1616(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 465
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v3

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 466
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v3

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 467
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1902(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 469
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 470
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 471
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 469
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr v0, v1

    .line 473
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1740(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 474
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1840(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 475
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1940(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F

    .line 477
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 478
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$2100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v2

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_d5

    .line 479
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 480
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 479
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_d8

    .line 481
    :cond_d5
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->explodeRocket(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)V

    .line 484
    :cond_d8
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_108

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_108

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_108

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_107

    goto :goto_108

    :cond_107
    return-void

    :cond_108
    :goto_108
    const/4 v0, 0x1

    .line 485
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->access$102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;Z)Z

    return-void
.end method

.method public final updateUfo(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V
    .registers 7

    .line 162
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto :goto_72

    .line 185
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x4

    cmp-long v0, v0, v3

    if-ltz v0, :cond_72

    .line 186
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->createCrater(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V

    .line 187
    invoke-static {p1, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Z)Z

    return-void

    .line 168
    :cond_24
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x6

    cmp-long v0, v0, v3

    if-ltz v0, :cond_38

    .line 169
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->onDestroy(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V

    .line 171
    :cond_38
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7

    cmp-long v0, v0, v3

    if-ltz v0, :cond_72

    .line 172
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$908(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    .line 173
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_66

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->selectTarget(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 174
    invoke-static {p1, v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    return-void

    .line 177
    :cond_66
    invoke-static {p1, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->currentDay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J

    :cond_72
    :goto_72
    return-void
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.UfoDisaster$1)
.class Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;
.super Ljava/lang/Object;
.source "UfoDisaster.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I
    .registers 7

    .line 148
    iget v0, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 149
    iget p1, p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 150
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->access$300(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v1

    .line 151
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->access$400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result p1

    .line 152
    iget v0, p2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    .line 153
    iget p2, p2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    .line 154
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->access$500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v2

    .line 155
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->access$600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result p2

    sub-float/2addr v1, p1

    sub-float/2addr v1, v2

    add-float/2addr v1, p2

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 145
    check-cast p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    check-cast p2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$1;->compare(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.AnonymousClass2 (info.flowersoft.theotown.components.disaster.UfoDisaster$2)
.class Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;
.super Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.source "UfoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->addUfo(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

.field public final synthetic val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 302
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    iput-object p5, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public getTileX()F
    .registers 3

    .line 305
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTileY()F
    .registers 3

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$2;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.AnonymousClass3 (info.flowersoft.theotown.components.disaster.UfoDisaster$3)
.class Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;
.super Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.source "UfoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->drawUfo(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Lio/blueflower/stapel2d/drawing/Engine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

.field public final synthetic val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/UfoDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 540
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;->this$0:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    iput-object p5, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public getTileX()F
    .registers 3

    .line 543
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTileY()F
    .registers 3

    .line 548
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 563
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$3;->val$ufo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.Explosion (info.flowersoft.theotown.components.disaster.UfoDisaster$Explosion)
.class public Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;
.super Ljava/lang/Object;
.source "UfoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explosion"
.end annotation


# instance fields
.field public animationStart:I

.field public invalid:Z

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)Z
    .registers 1

    .line 659
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->invalid:Z

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;Z)Z
    .registers 2

    .line 659
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->invalid:Z

    return p1
.end method

.method public static synthetic access$2400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F
    .registers 1

    .line 659
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->x:F

    return p0
.end method

.method public static synthetic access$2402(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F
    .registers 2

    .line 659
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->x:F

    return p1
.end method

.method public static synthetic access$2500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F
    .registers 1

    .line 659
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->y:F

    return p0
.end method

.method public static synthetic access$2502(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F
    .registers 2

    .line 659
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->y:F

    return p1
.end method

.method public static synthetic access$2600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)F
    .registers 1

    .line 659
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->z:F

    return p0
.end method

.method public static synthetic access$2602(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;F)F
    .registers 2

    .line 659
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->z:F

    return p1
.end method

.method public static synthetic access$2700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;)I
    .registers 1

    .line 659
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->animationStart:I

    return p0
.end method

.method public static synthetic access$2702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;I)I
    .registers 2

    .line 659
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Explosion;->animationStart:I

    return p1
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.Rocket (info.flowersoft.theotown.components.disaster.UfoDisaster$Rocket)
.class public Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;
.super Ljava/lang/Object;
.source "UfoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rocket"
.end annotation


# instance fields
.field public invalid:Z

.field public speedX:F

.field public speedY:F

.field public speedZ:F

.field public startDay:J

.field public targetX:F

.field public targetY:F

.field public targetZ:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)Z
    .registers 1

    .line 667
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->invalid:Z

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;Z)Z
    .registers 2

    .line 667
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->invalid:Z

    return p1
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->x:F

    return p0
.end method

.method public static synthetic access$1402(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->x:F

    return p1
.end method

.method public static synthetic access$1416(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->x:F

    return v0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->y:F

    return p0
.end method

.method public static synthetic access$1502(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->y:F

    return p1
.end method

.method public static synthetic access$1516(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->y:F

    return v0
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->z:F

    return p0
.end method

.method public static synthetic access$1602(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->z:F

    return p1
.end method

.method public static synthetic access$1616(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->z:F

    return v0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedX:F

    return p0
.end method

.method public static synthetic access$1702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedX:F

    return p1
.end method

.method public static synthetic access$1740(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedX:F

    div-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedX:F

    return v0
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedY:F

    return p0
.end method

.method public static synthetic access$1802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedY:F

    return p1
.end method

.method public static synthetic access$1840(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedY:F

    div-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedY:F

    return v0
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedZ:F

    return p0
.end method

.method public static synthetic access$1902(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedZ:F

    return p1
.end method

.method public static synthetic access$1940(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 3

    .line 667
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedZ:F

    div-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->speedZ:F

    return v0
.end method

.method public static synthetic access$2000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetX:F

    return p0
.end method

.method public static synthetic access$2002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetX:F

    return p1
.end method

.method public static synthetic access$2100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetY:F

    return p0
.end method

.method public static synthetic access$2102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetY:F

    return p1
.end method

.method public static synthetic access$2200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;)F
    .registers 1

    .line 667
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetZ:F

    return p0
.end method

.method public static synthetic access$2202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;F)F
    .registers 2

    .line 667
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->targetZ:F

    return p1
.end method

.method public static synthetic access$2302(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;J)J
    .registers 3

    .line 667
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Rocket;->startDay:J

    return-wide p1
.end method

###### Class info.flowersoft.theotown.components.disaster.UfoDisaster.Ufo (info.flowersoft.theotown.components.disaster.UfoDisaster$Ufo)
.class public Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;
.super Ljava/lang/Object;
.source "UfoDisaster.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/UfoDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ufo"
.end annotation


# instance fields
.field public attacks:I

.field public height:F

.field public invalid:Z

.field public mode:I

.field public speedX:F

.field public speedY:F

.field public startDay:J

.field public startX:F

.field public startY:F

.field public targetX:F

.field public targetY:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)Z
    .registers 1

    .line 682
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->invalid:Z

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;Z)Z
    .registers 2

    .line 682
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->invalid:Z

    return p1
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startX:F

    return p0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F
    .registers 2

    .line 682
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startX:F

    return p1
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startY:F

    return p0
.end method

.method public static synthetic access$1102(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F
    .registers 2

    .line 682
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startY:F

    return p1
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetX:F

    return p0
.end method

.method public static synthetic access$1202(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F
    .registers 2

    .line 682
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetX:F

    return p1
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)F
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetY:F

    return p0
.end method

.method public static synthetic access$1302(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;F)F
    .registers 2

    .line 682
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetY:F

    return p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->mode:I

    return p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;I)I
    .registers 2

    .line 682
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->mode:I

    return p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)J
    .registers 3

    .line 682
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startDay:J

    return-wide v0
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;J)J
    .registers 3

    .line 682
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startDay:J

    return-wide p1
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I
    .registers 1

    .line 682
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->attacks:I

    return p0
.end method

.method public static synthetic access$908(Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;)I
    .registers 3

    .line 682
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->attacks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->attacks:I

    return v0
.end method


# virtual methods
.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 706
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_110

    goto/16 :goto_a6

    :sswitch_17
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_a6

    :cond_21
    const/16 v1, 0xb

    goto/16 :goto_a6

    :sswitch_25
    const-string v2, "ty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_a6

    :cond_2f
    const/16 v1, 0xa

    goto/16 :goto_a6

    :sswitch_33
    const-string v2, "tx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_a6

    :cond_3d
    const/16 v1, 0x9

    goto/16 :goto_a6

    :sswitch_41
    const-string v2, "sy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_a6

    :cond_4b
    const/16 v1, 0x8

    goto/16 :goto_a6

    :sswitch_4f
    const-string v2, "sx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_a6

    :cond_58
    const/4 v1, 0x7

    goto :goto_a6

    :sswitch_5a
    const-string v2, "sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_a6

    :cond_63
    const/4 v1, 0x6

    goto :goto_a6

    :sswitch_65
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_a6

    :cond_6e
    const/4 v1, 0x5

    goto :goto_a6

    :sswitch_70
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_a6

    :cond_79
    const/4 v1, 0x4

    goto :goto_a6

    :sswitch_7b
    const-string v2, "attacks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto :goto_a6

    :cond_84
    const/4 v1, 0x3

    goto :goto_a6

    :sswitch_86
    const-string v2, "height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_a6

    :cond_8f
    const/4 v1, 0x2

    goto :goto_a6

    :sswitch_91
    const-string v2, "start y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_a6

    :cond_9a
    const/4 v1, 0x1

    goto :goto_a6

    :sswitch_9c
    const-string v2, "start x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    packed-switch v1, :pswitch_data_142

    .line 744
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 735
    :pswitch_ae
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->mode:I

    goto/16 :goto_0

    .line 726
    :pswitch_b6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetY:F

    goto/16 :goto_0

    .line 723
    :pswitch_be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetX:F

    goto/16 :goto_0

    .line 732
    :pswitch_c6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->speedY:F

    goto/16 :goto_0

    .line 729
    :pswitch_ce
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->speedX:F

    goto/16 :goto_0

    .line 708
    :pswitch_d6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startDay:J

    goto/16 :goto_0

    .line 714
    :pswitch_de
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    goto/16 :goto_0

    .line 711
    :pswitch_e6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    goto/16 :goto_0

    .line 738
    :pswitch_ee
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->attacks:I

    goto/16 :goto_0

    .line 741
    :pswitch_f6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    goto/16 :goto_0

    .line 720
    :pswitch_fe
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startY:F

    goto/16 :goto_0

    .line 717
    :pswitch_106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startX:F

    goto/16 :goto_0

    :cond_10e
    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        -0x7114c7c6 -> :sswitch_9c
        -0x7114c7c5 -> :sswitch_91
        -0x48c76ed9 -> :sswitch_86
        -0x284124d5 -> :sswitch_7b
        0x78 -> :sswitch_70
        0x79 -> :sswitch_65
        0xe51 -> :sswitch_5a
        0xe65 -> :sswitch_4f
        0xe66 -> :sswitch_41
        0xe84 -> :sswitch_33
        0xe85 -> :sswitch_25
        0x3339a3 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
        :pswitch_ee
        :pswitch_e6
        :pswitch_de
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
        :pswitch_b6
        :pswitch_ae
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const-string v0, "sd"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 753
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 754
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 755
    const-string v0, "start x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startX:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 756
    const-string v0, "start y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->startY:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 757
    const-string v0, "tx"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetX:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 758
    const-string v0, "ty"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->targetY:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 759
    const-string v0, "sx"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->speedX:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 760
    const-string v0, "sy"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->speedY:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 761
    const-string v0, "mode"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->mode:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 762
    const-string v0, "attacks"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->attacks:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 763
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
