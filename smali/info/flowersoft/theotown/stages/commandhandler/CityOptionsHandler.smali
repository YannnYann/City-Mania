###### Class info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler (info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler)
.class public final Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;
.super Ljava/lang/Object;
.source "CityOptionsHandler.kt"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCityOptionsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CityOptionsHandler.kt\ninfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Im3oCpzXRzAmTEUh2mkx5vBXUE(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->_init_$lambda$0(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4jaF8znC266AR04aRy1os3Ucwp4(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->add$lambda$0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    const-string v0, "city"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->city:Linfo/flowersoft/theotown/city/City;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->commands:Ljava/util/Map;

    .line 16
    new-instance p1, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;)V

    const-string v0, "leftSideTraffic"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->addBoolean(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final _init_$lambda$0(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_2f

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v0

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/City;->setLeftSideTraffic(Z)V

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; You have to reload the city to see an effect"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2f
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final add$lambda$0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    .line 46
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 47
    :cond_13
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2a

    .line 48
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 50
    :cond_2a
    const-string p0, "Expected boolean parameter `true` or `false`"

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 38
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addBoolean(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_25

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->$r8$lambda$1Im3oCpzXRzAmTEUh2mkx5vBXUE(Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;->$r8$lambda$4jaF8znC266AR04aRy1os3Ucwp4(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
