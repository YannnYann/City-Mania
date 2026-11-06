###### Class info.flowersoft.theotown.scripting.libraries.ArrayLibrary (info.flowersoft.theotown.scripting.libraries.ArrayLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "ArrayLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public applyArray:Lvm2/LuaFunction;

.field public lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    const-string v0, "libs/Array.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;
    .registers 4

    .line 42
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvm2/LuaValue;->tableOf(II)Lvm2/LuaTable;

    move-result-object v0

    .line 43
    :goto_9
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    add-int/lit8 v2, v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lvm2/LuaTable;->rawset(ILvm2/LuaValue;)V

    move v1, v2

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public static createRawTable(Ljava/util/List;)Lvm2/LuaTable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/LuaValue;",
            ">;)",
            "Lvm2/LuaTable;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvm2/LuaValue;->tableOf(II)Lvm2/LuaTable;

    move-result-object v0

    .line 51
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 52
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/LuaValue;

    if-nez v2, :cond_19

    .line 53
    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Lvm2/LuaTable;->rawset(ILvm2/LuaValue;)V

    goto :goto_9

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public createArray(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;
    .registers 4

    .line 30
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Lio/blueflower/stapel2d/util/IntList;)Lvm2/LuaTable;

    move-result-object p1

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->applyArray:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->lib:Lvm2/LuaValue;

    invoke-virtual {v0, v1, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object p1
.end method

.method public createArray(Ljava/util/List;)Lvm2/LuaTable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/LuaValue;",
            ">;)",
            "Lvm2/LuaTable;"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->applyArray:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->lib:Lvm2/LuaValue;

    invoke-virtual {v0, v1, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object p1
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->lib:Lvm2/LuaValue;

    .line 26
    const-string p2, "new"

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->applyArray:Lvm2/LuaFunction;

    return-void
.end method
