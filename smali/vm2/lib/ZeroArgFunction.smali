###### Class vm2.lib.ZeroArgFunction (vm2.lib.ZeroArgFunction)
.class public abstract Lvm2/lib/ZeroArgFunction;
.super Lvm2/lib/LibFunction;
.source "ZeroArgFunction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call()Lvm2/LuaValue;
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lvm2/lib/ZeroArgFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lvm2/lib/ZeroArgFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 64
    invoke-virtual {p0}, Lvm2/lib/ZeroArgFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lvm2/lib/ZeroArgFunction;->call()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method
