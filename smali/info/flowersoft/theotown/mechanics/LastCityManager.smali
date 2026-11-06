###### Class info.flowersoft.theotown.mechanics.LastCityManager (info.flowersoft.theotown.mechanics.LastCityManager)
.class public Linfo/flowersoft/theotown/mechanics/LastCityManager;
.super Ljava/lang/Object;
.source "LastCityManager.java"


# instance fields
.field public lastCityName:Ljava/lang/String;

.field public lastCityPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastCityPath()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityPath:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V
    .registers 4

    .line 25
    const-string v0, "last city"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityPath:Ljava/lang/String;

    .line 26
    const-string v0, "last city name"

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityName:Ljava/lang/String;

    return-void
.end method

.method public saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V
    .registers 4

    .line 30
    const-string v0, "last city"

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityPath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "last city name"

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastCity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    if-eqz p1, :cond_1e

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 36
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_1e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set last city to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameHandler"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityPath:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/LastCityManager;->lastCityName:Ljava/lang/String;

    .line 45
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    if-eqz p3, :cond_6e

    const/16 p3, 0xbea

    .line 53
    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x642

    .line 54
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_6b
    move-object v3, p1

    move-object v2, p3

    goto :goto_cb

    .line 56
    :cond_6e
    new-instance p3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 57
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/16 v1, 0x8d9

    .line 59
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0xce4

    .line 60
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0x9dd

    .line 61
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0x2de

    .line 62
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0xad8

    .line 63
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0x77a

    .line 64
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0x31f

    .line 65
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/16 v1, 0x3ef

    .line 66
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 68
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 69
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6b

    .line 73
    :goto_cb
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    const-wide/32 v6, 0x5265c00

    const/4 v8, 0x5

    const-string v1, "last city"

    const-wide/32 v4, 0x4ef6d80

    invoke-interface/range {v0 .. v8}, Linfo/flowersoft/theotown/crossplatform/Notifications;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public submitCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 8

    .line 77
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 80
    sget-object v1, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    packed-switch v1, :pswitch_data_7a

    goto :goto_61

    .line 92
    :pswitch_1a
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const/16 v3, 0x241

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/People;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v2

    int-to-long v4, v2

    .line 92
    invoke-interface {v1, v3, v4, v5}, Linfo/flowersoft/theotown/crossplatform/GamesService;->submitScore(Ljava/lang/String;J)Z

    goto :goto_61

    .line 84
    :pswitch_31
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const/16 v3, 0xfb

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/People;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v2

    int-to-long v4, v2

    .line 84
    invoke-interface {v1, v3, v4, v5}, Linfo/flowersoft/theotown/crossplatform/GamesService;->submitScore(Ljava/lang/String;J)Z

    .line 86
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const/16 v2, 0xcae

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 86
    invoke-interface {v1, v2, v3, v4}, Linfo/flowersoft/theotown/crossplatform/GamesService;->submitScore(Ljava/lang/String;J)Z

    .line 97
    :goto_61
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const/16 v2, 0xe3

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getYear()I

    move-result p1

    int-to-long v2, p1

    .line 97
    invoke-interface {v1, v0, v2, v3}, Linfo/flowersoft/theotown/crossplatform/GamesService;->submitScore(Ljava/lang/String;J)Z

    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

###### Class info.flowersoft.theotown.mechanics.LastCityManager.AnonymousClass1 (info.flowersoft.theotown.mechanics.LastCityManager$1)
.class public synthetic Linfo/flowersoft/theotown/mechanics/LastCityManager$1;
.super Ljava/lang/Object;
.source "LastCityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/mechanics/LastCityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$city$GameMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 80
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/mechanics/LastCityManager$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
