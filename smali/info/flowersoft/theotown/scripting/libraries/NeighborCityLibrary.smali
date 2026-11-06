###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "NeighborCityLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
    }
.end annotation


# instance fields
.field public neighborhood:Linfo/flowersoft/theotown/components/DefaultNeighborhood;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 30
    const-string v0, "libs/NeighborCity.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x15

    .line 32
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->neighborhood:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->neighborhood:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;
    .registers 3

    .line 25
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->getLuaRepr(Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->resolveNeighbor(Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
    .registers 7

    .line 163
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$13;

    const-string v1, "Power"

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$14;

    const-string v2, "Water"

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$15;

    const-string v3, "WasteDisposal"

    invoke-direct {v2, p0, v3}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V

    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$16;

    const-string v4, "BodyDisposal"

    invoke-direct {v3, p0, v4}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    return-object v4
.end method

.method public final getLuaRepr(Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;
    .registers 5

    .line 240
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getLuaRepr()Lvm2/LuaTable;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 242
    const-string v0, "_new"

    invoke-static {p2}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->invokemethod(Ljava/lang/String;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 243
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setLuaRepr(Lvm2/LuaTable;)V

    return-object p1

    :cond_1c
    return-object v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 10

    .line 44
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V

    const-string p3, "create"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 57
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V

    const-string p3, "get"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 72
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V

    const-string v0, "getNeighbors"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 88
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V

    const-string v0, "isValid"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 96
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V

    const-string v0, "delete"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 107
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V

    const-string v0, "getId"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 114
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V

    const-string v0, "getName"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 120
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V

    const-string v0, "setName"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 129
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_56
    if-ge v1, v0, :cond_cb

    aget-object v2, p2, v1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;

    invoke-direct {v5, p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V

    invoke-virtual {p1, v3, v5}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;

    invoke-direct {v5, p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V

    invoke-virtual {p1, v3, v5}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Export"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;

    invoke-direct {v5, p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V

    invoke-virtual {p1, v3, v5}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V

    invoke-virtual {p1, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_cb
    return-void
.end method

.method public final resolveNeighbor(Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
    .registers 3

    .line 249
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    return-object p1
.end method

.method public unload(Lvm2/Globals;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->unload(Lvm2/Globals;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->neighborhood:Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;
.super Lvm2/lib/TwoArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V
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

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 47
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    .line 49
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->create(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    .line 53
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$1;->val$lib:Lvm2/LuaValue;

    invoke-static {p2, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V
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

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;
.super Lvm2/lib/TwoArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V
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

    .line 145
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checklong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V

    .line 149
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V
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

    .line 153
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$13;
.super Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 167
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getAvailablePower()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V
    .registers 4

    .line 171
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setPower(J)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$14;
.super Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 185
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getAvailableWater()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 193
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V
    .registers 4

    .line 189
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setWater(J)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$15;
.super Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 203
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getAvailableWasteDisposal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 211
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/TradingRelation;->getWasteDisposalExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V
    .registers 4

    .line 207
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setWasteDisposal(J)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$16;
.super Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->collectResourceReprs()[Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 221
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getAvailableBodyDisposal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
    .registers 4

    .line 229
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/TradingRelation;->getBodyDisposalExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V
    .registers 4

    .line 225
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setBodyDisposal(J)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V
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

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 60
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getDraftNeighborById(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$2;->val$lib:Lvm2/LuaValue;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 67
    :cond_21
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;
.super Lvm2/lib/ZeroArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)V
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

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 8

    .line 75
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 76
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 78
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->getDraftNeighbors(Linfo/flowersoft/theotown/draft/Draft;)Ljava/util/List;

    move-result-object v0

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 80
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 81
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$3;->val$lib:Lvm2/LuaValue;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    invoke-static {v4, v5, v6}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)Lvm2/LuaTable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 83
    :cond_42
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->isInvalid()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->remove(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)V

    .line 103
    :cond_19
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$6;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$7;
.super Lvm2/lib/OneArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$8;
.super Lvm2/lib/TwoArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setName(Ljava/lang/String;)V

    .line 124
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;
.super Lvm2/lib/TwoArgFunction;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

.field public final synthetic val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;)V
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

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;->val$res:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;

    move-result-object p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checklong()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V

    .line 134
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary.ResourceRepr (info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary$ResourceRepr)
.class public abstract Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;
.super Ljava/lang/Object;
.source "NeighborCityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResourceRepr"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary$ResourceRepr;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract get(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
.end method

.method public abstract getExport(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;)J
.end method

.method public abstract set(Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;J)V
.end method
