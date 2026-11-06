###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary (info.flowersoft.theotown.scripting.libraries.TSLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "TSLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;,
        Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;
    }
.end annotation


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public finalized:Z

.field public stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5Kxv1DNnuS68R3khziQqENrObGQ(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getStationBuildings()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->buildingsToXYList(Ljava/util/List;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7GM3N2axS22kRV7yDRNaZLu73jI(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getDepotBuildings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    .line 286
    :cond_14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 288
    :goto_1b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getDepotBuildings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 289
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getDepotBuildings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 290
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    move v3, v0

    .line 292
    :goto_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    .line 294
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v4, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 300
    :cond_67
    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8PM-LkdSpaIiOGZN0XsghRy3neY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 415
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ag65L5Ww33Eto43k81lA4L41rzo(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 380
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/TileSet;->contains(II)Z

    move-result p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BEMxgUiR-vz9nywpdkF9cZwcmMo(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 441
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 442
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgWaiting()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaitingUsage()F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    .line 440
    invoke-static {p1, v0, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BWAt21jTMKu8UxlbohMrkOBmeuA(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getBusStops()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->busStopsToXYLList(Ljava/util/List;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C4hSO7YhHeLGy4-E2nEWp7Q1f0U(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setName(Ljava/lang/String;)V

    .line 412
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$DJDUA_X1OdO89HeOemzY31pxT2E(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    .line 360
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setWarningMessage(Ljava/lang/String;)V

    .line 361
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$EzPeNqaiaBbpjwf9rneNFvz6CL8(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Ljava/lang/Integer;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 345
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    .line 343
    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const/4 p2, 0x0

    .line 346
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 347
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_2f
    return-void
.end method

.method public static synthetic $r8$lambda$HA3kOj76a3R0HFBSxoiXYi_QnhM(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 447
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 448
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgReaching()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReachingUsage()F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    .line 446
    invoke-static {p1, v0, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HtNEiTOtVbkPe2PYRxc0-129FsE(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 408
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getNameOrUnnamed()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Il5IIZ0-k7oeZFksPVQPePQB8qA(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 477
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 478
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 480
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->deliverPassengers(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 481
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    sub-int/2addr p1, v1

    .line 484
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 485
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->takePassengers(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 489
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 490
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    .line 488
    invoke-static {p1, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JMQUDE1LauHSpX0m61DfBZJUCFM(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p2, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->getRoute(Lvm2/LuaValue;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v7

    const/4 v2, 0x2

    .line 318
    invoke-virtual {p2, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v2

    const/4 v3, 0x3

    .line 319
    invoke-virtual {p2, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v3

    const/4 v5, 0x4

    .line 320
    invoke-virtual {p2, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v5

    const/4 v6, 0x5

    .line 321
    invoke-virtual {p2, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p2

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 323
    invoke-virtual {v2}, Lvm2/LuaTable;->length()I

    move-result v6

    .line 324
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_43
    if-gt v1, v6, :cond_57

    .line 326
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v9

    invoke-virtual {v2, v9}, Lvm2/LuaTable;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {p0, v9}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->getRoute(Lvm2/LuaValue;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_57
    if-nez v3, :cond_5b

    move-object v9, v4

    goto :goto_61

    .line 330
    :cond_5b
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;

    invoke-direct {v1, v3, v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;-><init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    move-object v9, v1

    :goto_61
    if-nez v5, :cond_65

    :goto_63
    move-object v10, v4

    goto :goto_6b

    .line 341
    :cond_65
    new-instance v4, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0, v5, v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    goto :goto_63

    .line 352
    :goto_6b
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/TSRouteTool;

    move-object v6, p1

    move v5, p2

    invoke-direct/range {v3 .. v10}, Linfo/flowersoft/theotown/tools/TSRouteTool;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 355
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$JvCAEGiIuuq-YEhTqnTo80tyJEA(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 437
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCapacity()I

    move-result p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JxglCVSwZdlF-UV8xHBTTlcNcgE(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;Lio/blueflower/stapel2d/util/IntList;)V
    .registers 5

    .line 332
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 333
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 334
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p2

    .line 335
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;-><init>(Lvm2/LuaFunction;Lvm2/LuaTable;)V

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->runTaskNow(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSVN1XnxEwzXotunnVbZpRBYLV8(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 364
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWarningMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 365
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$NJUt11ZA2WjYLX_e9GOIIvE1NhU(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 434
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getStorage()Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PtPfknLhc7zY3EzLhJnnxcsYBjg(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Integer;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p3}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->runTaskNow(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wp3VDk_97EOwxVtqfbYp_V9F5lA(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getSpawnBuildings()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->buildingsToXYList(Ljava/util/List;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XjpsnAi8-YN-KIPsQHx4XOhguTI(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getSpawnBuildings()Ljava/util/List;

    move-result-object p2

    .line 427
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getBusStops()Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getRoads()Ljava/util/List;

    move-result-object p1

    .line 425
    invoke-virtual {p0, p2, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->buildingsAndBusStopsToXYLList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_x8rlAZtkm0z78PrU_MZxyHbKuE(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 393
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMinX()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMinY()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMaxX()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 398
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMaxY()I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    .line 399
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    .line 400
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    const/4 v4, 0x6

    new-array v4, v4, [Lvm2/LuaValue;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    const/4 p1, 0x4

    aput-object v3, v4, p1

    const/4 p1, 0x5

    aput-object p0, v4, p1

    .line 394
    invoke-static {v4}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gNJOhvGdzYJhWiHYeTtZKYt7gyE(Lvm2/LuaFunction;Lvm2/LuaTable;)V
    .registers 2

    .line 336
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$lb6k0PZ7LT_AxsROsj3gsiJ4lis(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 453
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTransferSinceLastDay()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 454
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgTransferPerDay()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTransferUsage()F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    .line 452
    invoke-static {p1, v0, p0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oFfx7Bw9DaCyI862U2Fxde4baEc(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 383
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p0

    .line 384
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    const/4 v0, 0x0

    .line 385
    :goto_10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 386
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/TileSet;->getX(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 387
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/TileSet;->getY(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 389
    :cond_27
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vvU43-Rvl_DKvNRjID71a21k77U(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p2, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 305
    invoke-virtual {p2, v1}, Lvm2/Varargs;->checkint(I)I

    move-result p2

    .line 306
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    .line 308
    :cond_18
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p0

    if-nez p0, :cond_27

    .line 309
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    .line 311
    :cond_27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isDepotBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wStMxJxZsgziEGWneM9OUcqmdoQ(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 405
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 67
    const-string v0, "libs/TransportationSystem.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->finalized:Z

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method


# virtual methods
.method public final buildingsAndBusStopsToXYLList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lvm2/LuaValue;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;)",
            "Lvm2/LuaValue;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 542
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 543
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 544
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3c
    move p1, v1

    .line 549
    :goto_3d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_6b

    .line 550
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 551
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget v2, v2, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    .line 556
    :cond_6b
    :goto_6b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_99

    .line 557
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 558
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result p2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result p2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 563
    :cond_99
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public final buildingsToXYList(Ljava/util/List;)Lvm2/LuaValue;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)",
            "Lvm2/LuaValue;"
        }
    .end annotation

    .line 567
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    const/4 v1, 0x0

    .line 568
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 569
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 570
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 571
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 573
    :cond_29
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public final busStopsToXYLList(Ljava/util/List;)Lvm2/LuaValue;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;)",
            "Lvm2/LuaValue;"
        }
    .end annotation

    .line 577
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    const/4 v1, 0x0

    .line 578
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 579
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 580
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v3

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 581
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v3

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 582
    iget v2, v2, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 584
    :cond_2e
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public enterCity(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->finalized:Z

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 73
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 74
    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    const/16 p2, 0x16

    .line 76
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    const/4 p1, 0x0

    .line 77
    :goto_14
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_28

    .line 78
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onEnterCity()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 80
    :cond_28
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->prepareTSSystems()V

    return-void
.end method

.method public getCityComponent()Linfo/flowersoft/theotown/components/DefaultTSComponent;
    .registers 2

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;",
            ">;"
        }
    .end annotation

    .line 625
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    return-object v0
.end method

.method public final getRoute(Lvm2/LuaValue;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;
    .registers 8

    .line 520
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 521
    :cond_8
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 523
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "color"

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->PURPLE:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v3, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    .line 526
    const-string v2, "stations"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lvm2/LuaTable;->length()I

    move-result v2

    .line 528
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3, v2}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    const/4 v4, 0x1

    :goto_41
    if-gt v4, v2, :cond_55

    .line 530
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Lvm2/LuaTable;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkint()I

    move-result v5

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 533
    :cond_55
    new-instance p1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    invoke-direct {p1, v0, v1, v3}, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;)V

    return-object p1

    .line 521
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected table or nil"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 99
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaValue;)V

    const-string p3, "createRaw"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 246
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "get"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 256
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "getAll"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 271
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "getStorage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 283
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->systemFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getDepotXYLs"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 303
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->systemFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "isDepotBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 314
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->systemFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "editRoute"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 359
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda15;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "setStationWarning"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 363
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda16;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationWarning"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 368
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "getStationIds"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 380
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda17;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "stationContainsTile"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 382
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda18;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationTiles"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 392
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationBounds"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 404
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda20;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 407
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda21;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationNameOrUnnamed"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 410
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "setStationName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 414
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "isStationCity"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 418
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationBuildings"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 421
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getSpawnBuildings"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 424
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getSpawnXYLs"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 430
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getBusStops"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 433
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationStorage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 436
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationCapacity"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 439
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationWaiting"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 445
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationReaching"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 451
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda12;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "getStationTransfer"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 460
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "getStationAtXY"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 476
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;

    move-result-object p2

    const-string p3, "meetStation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 493
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "showMapStage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 502
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V

    const-string p3, "showSystems"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 514
    const-class p2, Lcom/badlogic/gdx/Gdx;

    .line 516
    invoke-static {p2}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p2

    .line 514
    const-string p3, "_init"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public leaveCity()V
    .registers 4

    const/4 v0, 0x0

    .line 84
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onLeaveCity()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 88
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 89
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 90
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public resolveTS(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
    .registers 3

    .line 621
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->component:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystemObjectById(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;
    .registers 3

    .line 617
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    return-object p1
.end method

.method public final stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;
    .registers 3

    .line 601
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)V

    return-object v0
.end method

.method public final systemFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)Lvm2/lib/VarArgFunction;
    .registers 3

    .line 588
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.TSLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public static synthetic $r8$lambda$qfjJ093DMg_IXvthVeEoieOrzi4(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)I
    .registers 2

    .line 240
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p0

    iget p0, p0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 102
    iget-object v2, v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Z

    move-result v2

    if-nez v2, :cond_402

    .line 104
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v5

    .line 105
    const-string v2, "impl"

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v6

    .line 106
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v14

    .line 107
    const-string v2, "stationBuildings"

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v2

    .line 108
    const-string v3, "spawnBuildings"

    invoke-virtual {v1, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v3

    .line 109
    const-string v7, "depotBuildings"

    invoke-virtual {v1, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v7

    .line 110
    const-string v8, "busStops"

    invoke-virtual {v1, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v8

    .line 111
    const-string v9, "roads"

    invoke-virtual {v1, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v9

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v9

    .line 112
    const-string v10, "script"

    invoke-virtual {v1, v10}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v10

    invoke-virtual {v10}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v10

    .line 113
    const-string v11, "onEnterCity"

    invoke-static {v1, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v15

    .line 114
    const-string v11, "onLeaveCity"

    invoke-static {v1, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v16

    .line 115
    const-string v11, "onAddStation"

    invoke-static {v1, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v17

    .line 116
    const-string v11, "onRemoveStation"

    invoke-static {v1, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v18

    if-eqz v3, :cond_3e6

    .line 120
    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS_BY_ID:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3cf

    if-eqz v14, :cond_3b8

    .line 122
    invoke-virtual {v14}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v11

    if-ne v11, v10, :cond_3a1

    .line 123
    invoke-virtual {v14}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v10

    .line 124
    invoke-virtual {v10}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    .line 127
    const-string v11, "roadFlagSrc"

    invoke-virtual {v1, v11}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v11

    const-class v12, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v11, v12}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftOpt(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/CarDraft;

    .line 128
    const-string v13, "vehicles"

    invoke-virtual {v1, v13}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v13}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v13

    .line 129
    invoke-static {v13, v12}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 130
    const-string v13, "Could not construct ts "

    if-eqz v11, :cond_387

    .line 133
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_36d

    .line 136
    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_349

    move-object/from16 v19, v5

    .line 141
    iget-wide v4, v11, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    const-wide/16 v20, 0x0

    cmp-long v11, v4, v20

    if-eqz v11, :cond_32d

    const/4 v13, 0x0

    .line 148
    :goto_dd
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-ge v13, v11, :cond_f6

    .line 149
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/CarDraft;

    move-wide/from16 v21, v4

    iget-wide v4, v11, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    or-long v4, v4, v21

    iput-wide v4, v11, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v4, v21

    goto :goto_dd

    :cond_f6
    move-wide/from16 v21, v4

    .line 152
    new-instance v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-object v5, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    .line 157
    const-class v11, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v2, v11}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 158
    invoke-static {v3, v11}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 159
    invoke-static {v7, v11}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    const-class v7, Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 160
    invoke-static {v8, v7}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    const-class v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 161
    invoke-static {v9, v7}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v13

    move-object v9, v2

    move-object/from16 v23, v10

    move-wide/from16 v7, v21

    const/4 v2, 0x0

    move-object v10, v3

    move-object v3, v5

    move-object/from16 v5, v19

    invoke-direct/range {v3 .. v18}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Ljava/lang/String;Lvm2/LuaTable;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/scripting/Script;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 167
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getSpawnBuildings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_155

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getBusStops()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_139

    goto :goto_155

    .line 168
    :cond_139
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no spawn buildings or bus stops"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_155
    :goto_155
    const-string v4, "config"

    invoke-virtual {v1, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v1

    .line 173
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v4

    if-eqz v1, :cond_1f7

    .line 175
    const-string v6, "waiterDecay"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->waiterDecay:F

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->waiterDecay:F

    .line 176
    const-string v6, "reacherDecay"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->reacherDecay:F

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->reacherDecay:F

    .line 177
    const-string v6, "stationSearchRadius"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationSearchRadius:I

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationSearchRadius:I

    .line 178
    const-string v6, "stationRadius"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationRadius:I

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationRadius:I

    .line 179
    const-string v6, "stationMaxTiles"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationMaxTiles:I

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationMaxTiles:I

    .line 180
    const-string v6, "passengerFactor"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->passengerFactor:F

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->passengerFactor:F

    .line 181
    const-string v6, "freightFactor"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->freightFactor:F

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->freightFactor:F

    .line 182
    const-string v6, "supportNeighborConnections"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    iget-boolean v7, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->supportNeighborConnections:Z

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v6

    iput-boolean v6, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->supportNeighborConnections:Z

    .line 184
    const-string v6, "color"

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f7

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f7

    .line 186
    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 190
    :cond_1f7
    iget-object v1, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v1, :cond_20e

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result v1

    new-instance v6, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v6}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {v1, v6}, Lio/blueflower/stapel2d/drawing/Color;->fromRGB(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 196
    :cond_20e
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getSpawnBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_216
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_225

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 197
    iput-object v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    goto :goto_216

    .line 201
    :cond_225
    const-string v1, "budget item"

    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_29b

    .line 202
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getSpawnBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_237
    :goto_237
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 203
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v6, :cond_237

    iput-object v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_237

    .line 205
    :cond_24a
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getStationBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_252
    :goto_252
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_265

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 206
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v6, :cond_252

    iput-object v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_252

    .line 208
    :cond_265
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getDepotBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26d
    :goto_26d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_280

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 209
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v6, :cond_26d

    iput-object v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_26d

    .line 211
    :cond_280
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getRoads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_288
    :goto_288
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 212
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v6, :cond_288

    iput-object v2, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_288

    .line 217
    :cond_29b
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getSpawnBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 218
    iput-boolean v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    goto :goto_2a3

    .line 220
    :cond_2b3
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getStationBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 221
    iput-boolean v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    goto :goto_2bb

    .line 223
    :cond_2ca
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getDepotBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 224
    iput-boolean v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    goto :goto_2d2

    .line 227
    :cond_2e1
    iget v1, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_307

    .line 228
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f3

    const/4 v4, 0x0

    .line 229
    iput v4, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    goto :goto_307

    .line 231
    :cond_2f3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    add-int/2addr v1, v6

    iput v1, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 235
    :cond_307
    :goto_307
    iget-object v1, v0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->val$lib:Lvm2/LuaValue;

    const-string v2, "_new"

    invoke-static {v3}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->setLuaRepr(Lvm2/LuaValue;)V

    .line 236
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS_BY_ID:Ljava/util/Map;

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object v1

    return-object v1

    :cond_32d
    move-object/from16 v5, v19

    .line 143
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with effectively empty road flags"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_349
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to flag source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not being part of provided cars which is sus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_36d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to no cars provided"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_387
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to invalid vehicle flag source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_3a1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_3b8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine owner script of ts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_3cf
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate transportation system id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_3e6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transportation system "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lacks spawnBuildings table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_402
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too late to create ts"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.TSLibrary$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    check-cast p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$1;->$r8$lambda$qfjJ093DMg_IXvthVeEoieOrzi4(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.TSLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;
.super Lvm2/lib/VarArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->stationFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)Lvm2/lib/VarArgFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

.field public final synthetic val$stationFunction:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;->val$stationFunction:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 604
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTS(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object v0

    .line 605
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 606
    invoke-virtual {p1, v1, v2}, Lvm2/Varargs;->optint(II)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 608
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$10;->val$stationFunction:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;->call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 611
    :cond_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.TSLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$2;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 249
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "TS.get"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 251
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS_BY_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    if-eqz p1, :cond_1c

    .line 252
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.TSLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$3;
.super Lvm2/lib/ZeroArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 259
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "TS.getAll"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 261
    :goto_f
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 262
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 265
    :cond_27
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 266
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 267
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.TSLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystemObjectById(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStorage()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 278
    :cond_21
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.TSLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 368
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    .line 372
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 373
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystemObjectById(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object p1

    .line 374
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 376
    :cond_26
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.TSLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$6;
.super Lvm2/lib/ThreeArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 460
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 463
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTS(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    if-eqz p1, :cond_24

    const/4 v0, -0x1

    .line 465
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 466
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 467
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXYLenient(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 469
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 472
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.TSLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 496
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTS(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    .line 497
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Linfo/flowersoft/theotown/stages/TSMapStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 498
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.TSLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;
.super Lvm2/lib/OneArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 502
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 505
    new-instance p1, Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 506
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 507
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;-><init>()V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 508
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 510
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.TSLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;
.super Lvm2/lib/VarArgFunction;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->systemFunction(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)Lvm2/lib/VarArgFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

.field public final synthetic val$impl:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 588
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;->val$impl:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 591
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTSModel(Lvm2/LuaValue;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->resolveTS(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object v0

    .line 592
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v1

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    .line 593
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$9;->val$impl:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;->call(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 595
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl (info.flowersoft.theotown.scripting.libraries.TSLibrary$StationFunctionImpl)
.class public interface abstract Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;
.super Ljava/lang/Object;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StationFunctionImpl"
.end annotation


# virtual methods
.method public abstract call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary.TSFunctionImpl (info.flowersoft.theotown.scripting.libraries.TSLibrary$TSFunctionImpl)
.class public interface abstract Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;
.super Ljava/lang/Object;
.source "TSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TSFunctionImpl"
.end annotation


# virtual methods
.method public abstract call(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$7GM3N2axS22kRV7yDRNaZLu73jI(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$C4hSO7YhHeLGy4-E2nEWp7Q1f0U(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda10 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$HA3kOj76a3R0HFBSxoiXYi_QnhM(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda11 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$vvU43-Rvl_DKvNRjID71a21k77U(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda12 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$lb6k0PZ7LT_AxsROsj3gsiJ4lis(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda13 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$Il5IIZ0-k7oeZFksPVQPePQB8qA(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda14 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$TSFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$JMQUDE1LauHSpX0m61DfBZJUCFM(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda15 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$DJDUA_X1OdO89HeOemzY31pxT2E(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda16 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$LSVN1XnxEwzXotunnVbZpRBYLV8(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda17 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$Ag65L5Ww33Eto43k81lA4L41rzo(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda18 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$oFfx7Bw9DaCyI862U2Fxde4baEc(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda19 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$_x8rlAZtkm0z78PrU_MZxyHbKuE(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda2 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$8PM-LkdSpaIiOGZN0XsghRy3neY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda20 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$wStMxJxZsgziEGWneM9OUcqmdoQ(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda21 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$HtNEiTOtVbkPe2PYRxc0-129FsE(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda22 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;->f$1:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda22;->f$1:Linfo/flowersoft/theotown/scripting/Script;

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$JxglCVSwZdlF-UV8xHBTTlcNcgE(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;Lio/blueflower/stapel2d/util/IntList;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda23 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

.field public final synthetic f$1:Lvm2/LuaFunction;

.field public final synthetic f$2:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$1:Lvm2/LuaFunction;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$1:Lvm2/LuaFunction;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$PtPfknLhc7zY3EzLhJnnxcsYBjg(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;Ljava/lang/Integer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda24 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Lvm2/LuaTable;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Lvm2/LuaTable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;->f$1:Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda24;->f$1:Lvm2/LuaTable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$gNJOhvGdzYJhWiHYeTtZKYt7gyE(Lvm2/LuaFunction;Lvm2/LuaTable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda25 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

.field public final synthetic f$1:Lvm2/LuaFunction;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Ljava/lang/Integer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$1:Lvm2/LuaFunction;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$1:Lvm2/LuaFunction;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$EzPeNqaiaBbpjwf9rneNFvz6CL8(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Lvm2/LuaFunction;Ljava/lang/Integer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda3 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$5Kxv1DNnuS68R3khziQqENrObGQ(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda4 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$Wp3VDk_97EOwxVtqfbYp_V9F5lA(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda5 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$XjpsnAi8-YN-KIPsQHx4XOhguTI(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda6 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$BWAt21jTMKu8UxlbohMrkOBmeuA(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda7 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$NJUt11ZA2WjYLX_e9GOIIvE1NhU(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda8 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$JvCAEGiIuuq-YEhTqnTo80tyJEA(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda9 (info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/libraries/TSLibrary$StationFunctionImpl;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->$r8$lambda$BEMxgUiR-vz9nywpdkF9cZwcmMo(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
