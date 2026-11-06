###### Class vm2.Metatable (vm2.Metatable)
.class interface abstract Lvm2/Metatable;
.super Ljava/lang/Object;
.source "Metatable.java"


# virtual methods
.method public abstract arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;
.end method

.method public abstract entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
.end method

.method public abstract toLuaValue()Lvm2/LuaValue;
.end method

.method public abstract useWeakKeys()Z
.end method

.method public abstract useWeakValues()Z
.end method

.method public abstract wrap(Lvm2/LuaValue;)Lvm2/LuaValue;
.end method
