###### Class info.flowersoft.theotown.components.transition.VariableCollector (info.flowersoft.theotown.components.transition.VariableCollector)
.class public Linfo/flowersoft/theotown/components/transition/VariableCollector;
.super Ljava/lang/Object;
.source "VariableCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;
    }
.end annotation


# instance fields
.field public calendar:Ljava/util/Calendar;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public demand:Linfo/flowersoft/theotown/components/DefaultDemand;

.field public variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v0, 0xc

    .line 42
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/16 v0, 0xa

    .line 44
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDemand;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->demand:Linfo/flowersoft/theotown/components/DefaultDemand;

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->calendar:Ljava/util/Calendar;

    .line 47
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->variables:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 30
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;
    .registers 1

    .line 30
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 30
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;
    .registers 1

    .line 30
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->demand:Linfo/flowersoft/theotown/components/DefaultDemand;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;
    .registers 1

    .line 30
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->calendar:Ljava/util/Calendar;

    return-object p0
.end method


# virtual methods
.method public final addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 463
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;-><init>(Lio/blueflower/stapel2d/util/Property;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    return-void
.end method

.method public final addConstant(Ljava/lang/String;J)V
    .registers 6

    .line 475
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->variables:Ljava/util/Map;

    new-instance v1, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;

    invoke-direct {v1, p0, p2, p3, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;JLjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addConstant(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 471
    :goto_7
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V

    return-void
.end method

.method public final addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public collect()V
    .registers 4

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$1;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "roadAutoJoin"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$2;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "winter"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 75
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "localWinter"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 88
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "weatherTime"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 99
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "weatherFog"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 110
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "weatherLocked"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 122
    const-string v0, "WEATHER_NORMAL"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V

    .line 123
    const-string v0, "WEATHER_SUNNY"

    const-wide/32 v1, 0x46e45

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V

    .line 124
    const-string v0, "WEATHER_RAIN"

    const-wide/32 v1, 0xcf72f

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V

    .line 125
    const-string v0, "WEATHER_LIGHTNING"

    const-wide/32 v1, 0x98069

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V

    .line 127
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "day"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 139
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "cityRotation"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 151
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "wireCount"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 162
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "pipeCount"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "roadCount"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 184
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "buildingCount"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "gameSpeed"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 216
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "gameMode"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 232
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "disaster"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 243
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$16;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$16;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "music"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 258
    const-string v0, "isDeveloper"

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;Z)V

    .line 260
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_res0"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 268
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_res1"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 276
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_res2"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 284
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_com0"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 292
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_com1"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 300
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_com2"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 308
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_ind0"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 316
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_ind1"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 324
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "demand_ind2"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 333
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$26;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$26;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "isConnected"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 344
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_day"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 353
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_month"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 362
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_year"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 371
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_hour"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 380
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_minute"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 389
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_second"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 398
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$33;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$33;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "real_time"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 408
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$34;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$34;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "plugin_count"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 423
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$35;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$35;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "diamonds"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 434
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$36;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$36;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addLong(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    .line 445
    const-string v0, "premium"

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;Z)V

    .line 447
    new-instance v0, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;-><init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V

    const-string v1, "uberMode"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->addBoolean(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass1 (info.flowersoft.theotown.components.transition.VariableCollector$1)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$1;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$1;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 54
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 2

    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$1;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass10 (info.flowersoft.theotown.components.transition.VariableCollector$10)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$10;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$10;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass11 (info.flowersoft.theotown.components.transition.VariableCollector$11)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$11;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 173
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 173
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$11;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass12 (info.flowersoft.theotown.components.transition.VariableCollector$12)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$12;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 184
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$12;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass13 (info.flowersoft.theotown.components.transition.VariableCollector$13)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$13;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final INPUT_MAPPING:[I

.field public final OUTPUT_MAPPING:[I

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 196
    filled-new-array {v1, v2, v3, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->OUTPUT_MAPPING:[I

    .line 199
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->INPUT_MAPPING:[I

    .line 200
    :goto_15
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->OUTPUT_MAPPING:[I

    array-length v0, p1

    if-ge v3, v0, :cond_23

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->INPUT_MAPPING:[I

    aget p1, p1, v3

    aput v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->OUTPUT_MAPPING:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$200(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 195
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 4

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$200(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->INPUT_MAPPING:[I

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 195
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$13;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass14 (info.flowersoft.theotown.components.transition.VariableCollector$14)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$14;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 6

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_44

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    return-void

    .line 226
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x323d1a

    cmp-long p1, v0, v2

    if-nez p1, :cond_5a

    .line 227
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    :cond_5a
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 216
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$14;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass15 (info.flowersoft.theotown.components.transition.VariableCollector$15)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$15;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 232
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 236
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x1

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 232
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 232
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$15;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass16 (info.flowersoft.theotown.components.transition.VariableCollector$16)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$16;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$16;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 246
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->musicLevel:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 243
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$16;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 5

    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->musicLevel:I

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    if-eq v0, v1, :cond_1f

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 v2, 0x32

    :cond_16
    sput v2, Linfo/flowersoft/theotown/resources/Settings;->musicLevel:I

    .line 253
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/MusicBox;->update()V

    :cond_1f
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 243
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$16;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass17 (info.flowersoft.theotown.components.transition.VariableCollector$17)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$17;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getResidential(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 260
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 260
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$17;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass18 (info.flowersoft.theotown.components.transition.VariableCollector$18)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$18;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getResidential(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 268
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 268
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$18;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass19 (info.flowersoft.theotown.components.transition.VariableCollector$19)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$19;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getResidential(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 276
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$19;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass2 (info.flowersoft.theotown.components.transition.VariableCollector$2)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$2;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$2;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 66
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$2;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 3

    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object p1

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$2;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass20 (info.flowersoft.theotown.components.transition.VariableCollector$20)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$20;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 287
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getCommercial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 284
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 284
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$20;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass21 (info.flowersoft.theotown.components.transition.VariableCollector$21)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$21;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 295
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getCommercial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 292
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 292
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$21;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass22 (info.flowersoft.theotown.components.transition.VariableCollector$22)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$22;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getCommercial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 300
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 300
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$22;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass23 (info.flowersoft.theotown.components.transition.VariableCollector$23)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$23;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getIndustrial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 308
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 308
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$23;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass24 (info.flowersoft.theotown.components.transition.VariableCollector$24)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$24;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 316
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getIndustrial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 316
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 316
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$24;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass25 (info.flowersoft.theotown.components.transition.VariableCollector$25)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$25;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$300(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDemand;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getIndustrial(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 324
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 324
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$25;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass26 (info.flowersoft.theotown.components.transition.VariableCollector$26)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$26;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 333
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$26;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 336
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 333
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$26;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 333
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$26;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass27 (info.flowersoft.theotown.components.transition.VariableCollector$27)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$27;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 347
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 344
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 344
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$27;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass28 (info.flowersoft.theotown.components.transition.VariableCollector$28)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$28;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 353
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 353
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$28;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass29 (info.flowersoft.theotown.components.transition.VariableCollector$29)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$29;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 365
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 362
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 362
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$29;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass3 (info.flowersoft.theotown.components.transition.VariableCollector$3)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$3;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->winter:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 4

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Linfo/flowersoft/theotown/city/CityInfo;->winter:Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$3;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass30 (info.flowersoft.theotown.components.transition.VariableCollector$30)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$30;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 371
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 371
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$30;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass31 (info.flowersoft.theotown.components.transition.VariableCollector$31)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$31;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 380
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 383
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 380
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 380
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$31;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass32 (info.flowersoft.theotown.components.transition.VariableCollector$32)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$32;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 389
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 392
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$400(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 389
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 389
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$32;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass33 (info.flowersoft.theotown.components.transition.VariableCollector$33)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$33;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 398
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$33;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 398
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$33;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 398
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$33;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass34 (info.flowersoft.theotown.components.transition.VariableCollector$34)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$34;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$34;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 4

    .line 412
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 413
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    int-to-long v0, v1

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 408
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$34;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 408
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$34;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass35 (info.flowersoft.theotown.components.transition.VariableCollector$35)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$35;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 423
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$35;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 426
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 423
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$35;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 423
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$35;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass36 (info.flowersoft.theotown.components.transition.VariableCollector$36)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$36;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 434
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$36;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 437
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 434
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$36;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 434
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$36;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass37 (info.flowersoft.theotown.components.transition.VariableCollector$37)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$37;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 447
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 447
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 3

    .line 455
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 456
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    :cond_17
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 447
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$37;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass38 (info.flowersoft.theotown.components.transition.VariableCollector$38)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$38;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->addConstant(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$value:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;JLjava/lang/String;)V
    .registers 5
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

    .line 475
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    iput-wide p2, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->val$value:J

    iput-object p4, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 478
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->val$value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 475
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 4

    .line 483
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "May not set const "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VariableCollector"

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 475
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$38;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass4 (info.flowersoft.theotown.components.transition.VariableCollector$4)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$4;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 3

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$4;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass5 (info.flowersoft.theotown.components.transition.VariableCollector$5)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$5;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isFogEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 3

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setFogEnabled(Z)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$5;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass6 (info.flowersoft.theotown.components.transition.VariableCollector$6)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$6;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isTimeLocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 110
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 3

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$100(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTimeLocked(Z)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$6;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass7 (info.flowersoft.theotown.components.transition.VariableCollector$7)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$7;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$200(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 127
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 5

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$200(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultDate;->setAbsoluteDay(J)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$7;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass8 (info.flowersoft.theotown.components.transition.VariableCollector$8)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$8;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 3

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 139
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$8;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.AnonymousClass9 (info.flowersoft.theotown.components.transition.VariableCollector$9)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$9;
.super Ljava/lang/Object;
.source "VariableCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/VariableCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .registers 3

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;->this$0:Linfo/flowersoft/theotown/components/transition/VariableCollector;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->access$000(Linfo/flowersoft/theotown/components/transition/VariableCollector;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 151
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 151
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$9;->set(Ljava/lang/Long;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.VariableCollector.PropertyAdapter (info.flowersoft.theotown.components.transition.VariableCollector$PropertyAdapter)
.class Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;
.super Lio/blueflower/stapel2d/util/PropertyAdapter;
.source "VariableCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transition/VariableCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/PropertyAdapter<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Property;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/PropertyAdapter;-><init>(Lio/blueflower/stapel2d/util/Property;)V

    return-void
.end method


# virtual methods
.method public toInner(Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 6

    .line 495
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toInner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 488
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;->toInner(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public toOuter(Ljava/lang/Boolean;)Ljava/lang/Long;
    .registers 4

    .line 500
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    const-wide/16 v0, 0x1

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toOuter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 488
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transition/VariableCollector$PropertyAdapter;->toOuter(Ljava/lang/Boolean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
