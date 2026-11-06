###### Class vm2.NonTableMetatable (vm2.NonTableMetatable)
.class Lvm2/NonTableMetatable;
.super Ljava/lang/Object;
.source "NonTableMetatable.java"

# interfaces
.implements Lvm2/Metatable;


# instance fields
.field private final value:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lvm2/NonTableMetatable;->value:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;
    .registers 3

    .line 34
    aget-object p1, p1, p2

    return-object p1
.end method

.method public entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 26
    invoke-static {p1, p2}, Lvm2/LuaTable;->defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public toLuaValue()Lvm2/LuaValue;
    .registers 2

    .line 22
    iget-object v0, p0, Lvm2/NonTableMetatable;->value:Lvm2/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 0
    return-object p1
.end method
