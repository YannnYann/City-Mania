###### Class vm2.lib.OneArgFunction (vm2.lib.OneArgFunction)
.class public abstract Lvm2/lib/OneArgFunction;
.super Lvm2/lib/LibFunction;
.source "OneArgFunction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lvm2/LuaValue;
    .registers 2

    .line 58
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/lib/OneArgFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public abstract call(Lvm2/LuaValue;)Lvm2/LuaValue;
.end method

.method public final call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 62
    invoke-virtual {p0, p1}, Lvm2/lib/OneArgFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 66
    invoke-virtual {p0, p1}, Lvm2/lib/OneArgFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 70
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/lib/OneArgFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method
