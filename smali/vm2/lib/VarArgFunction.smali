###### Class vm2.lib.VarArgFunction (vm2.lib.VarArgFunction)
.class public abstract Lvm2/lib/VarArgFunction;
.super Lvm2/lib/LibFunction;
.source "VarArgFunction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 54
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/lib/VarArgFunction;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lvm2/lib/VarArgFunction;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 62
    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/lib/VarArgFunction;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 66
    invoke-static {p1, p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/lib/VarArgFunction;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lvm2/lib/VarArgFunction;->onInvoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->eval()Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public onInvoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lvm2/lib/VarArgFunction;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
