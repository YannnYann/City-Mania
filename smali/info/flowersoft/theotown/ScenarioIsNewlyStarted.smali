###### Class info.flowersoft.theotown.ScenarioIsNewlyStarted (info.flowersoft.theotown.ScenarioIsNewlyStarted)
.class public final Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;
.super Ljava/lang/Object;
.source "ScenarioIsNewlyStarted.kt"


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->INSTANCE:Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStorage()Lvm2/LuaTable;
    .registers 5

    .line 10
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    .line 13
    const-string v1, "7051adc1-2471-4828-a0ca-be335a510978"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 14
    invoke-virtual {v2}, Lvm2/LuaValue;->istable()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 15
    :cond_16
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 18
    :cond_1d
    invoke-virtual {v2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    const-string v1, "checktable(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isNewlyStarted(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->getStorage()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setNewlyStarted(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 25
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->getStorage()Lvm2/LuaTable;

    move-result-object p2

    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p2, p1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void

    .line 27
    :cond_11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->getStorage()Lvm2/LuaTable;

    move-result-object p2

    sget-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    invoke-virtual {p2, p1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method
