###### Class info.flowersoft.theotown.city.objects.CarOwner (info.flowersoft.theotown.city.objects.CarOwner)
.class public final Linfo/flowersoft/theotown/city/objects/CarOwner;
.super Ljava/lang/Object;
.source "CarOwner.java"


# instance fields
.field public final car:Linfo/flowersoft/theotown/city/objects/Car;

.field public luaRepr:Lvm2/LuaTable;

.field public ownerDraft:Linfo/flowersoft/theotown/draft/Draft;

.field public storage:Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Car;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->car:Linfo/flowersoft/theotown/city/objects/Car;

    .line 34
    :goto_5
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 35
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "stg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "draft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 47
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 37
    :cond_26
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 38
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->ownerDraft:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_35

    goto :goto_5

    .line 40
    :cond_35
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Car owner draft "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_51
    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->storage:Lvm2/LuaTable;

    goto :goto_5

    :cond_58
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/objects/Car;Lvm2/LuaTable;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->ownerDraft:Linfo/flowersoft/theotown/draft/Draft;

    .line 27
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->car:Linfo/flowersoft/theotown/city/objects/Car;

    .line 28
    iput-object p3, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->storage:Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public getCar()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 2

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->car:Linfo/flowersoft/theotown/city/objects/Car;

    return-object v0
.end method

.method public getLuaRepr()Lvm2/LuaTable;
    .registers 2

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->luaRepr:Lvm2/LuaTable;

    return-object v0
.end method

.method public getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->ownerDraft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getStorage()Lvm2/LuaTable;
    .registers 2

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->storage:Lvm2/LuaTable;

    return-object v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-string v0, "draft"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->ownerDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 62
    const-string v0, "stg"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->storage:Lvm2/LuaTable;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    return-void
.end method

.method public setupRepr(Lvm2/LuaValue;)V
    .registers 4

    .line 54
    const-string v0, "_new"

    .line 55
    invoke-static {p0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->invokemethod(Ljava/lang/String;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/CarOwner;->luaRepr:Lvm2/LuaTable;

    return-void
.end method
