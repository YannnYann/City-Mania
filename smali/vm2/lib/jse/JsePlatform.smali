###### Class vm2.lib.jse.JsePlatform (vm2.lib.jse.JsePlatform)
.class public Lvm2/lib/jse/JsePlatform;
.super Ljava/lang/Object;
.source "JsePlatform.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugGlobals()Lvm2/Globals;
    .registers 2

    .line 120
    invoke-static {}, Lvm2/lib/jse/JsePlatform;->standardGlobals()Lvm2/Globals;

    move-result-object v0

    .line 121
    new-instance v1, Lvm2/lib/DebugLib;

    invoke-direct {v1}, Lvm2/lib/DebugLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object v0
.end method

.method public static luaMain(Lvm2/LuaValue;[Ljava/lang/String;)Lvm2/Varargs;
    .registers 7

    .line 132
    invoke-static {}, Lvm2/lib/jse/JsePlatform;->standardGlobals()Lvm2/Globals;

    move-result-object v0

    .line 133
    array-length v1, p1

    .line 134
    array-length v2, p1

    new-array v2, v2, [Lvm2/LuaValue;

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_16

    .line 136
    aget-object v4, p1, v3

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 137
    :cond_16
    invoke-static {v2}, Lvm2/LuaValue;->listOf([Lvm2/LuaValue;)Lvm2/LuaTable;

    move-result-object p1

    .line 138
    const-string v3, "n"

    invoke-virtual {p1, v3, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 139
    const-string v1, "arg"

    invoke-virtual {v0, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 140
    invoke-virtual {p0, v0}, Lvm2/LuaValue;->initupvalue1(Lvm2/LuaValue;)V

    .line 141
    invoke-static {v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static standardGlobals()Lvm2/Globals;
    .registers 2

    .line 95
    new-instance v0, Lvm2/Globals;

    invoke-direct {v0}, Lvm2/Globals;-><init>()V

    .line 96
    new-instance v1, Lvm2/lib/jse/JseBaseLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseBaseLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 97
    new-instance v1, Lvm2/lib/PackageLib;

    invoke-direct {v1}, Lvm2/lib/PackageLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 98
    new-instance v1, Lvm2/lib/Bit32Lib;

    invoke-direct {v1}, Lvm2/lib/Bit32Lib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 99
    new-instance v1, Lvm2/lib/TableLib;

    invoke-direct {v1}, Lvm2/lib/TableLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 100
    new-instance v1, Lvm2/lib/jse/JseStringLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseStringLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 101
    new-instance v1, Lvm2/lib/CoroutineLib;

    invoke-direct {v1}, Lvm2/lib/CoroutineLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 102
    new-instance v1, Lvm2/lib/jse/JseMathLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseMathLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 103
    new-instance v1, Lvm2/lib/jse/JseIoLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseIoLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 104
    new-instance v1, Lvm2/lib/jse/JseOsLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseOsLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 105
    new-instance v1, Lvm2/lib/jse/LuajavaLib;

    invoke-direct {v1}, Lvm2/lib/jse/LuajavaLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 106
    invoke-static {v0}, Lvm2/LoadState;->install(Lvm2/Globals;)V

    .line 107
    invoke-static {v0}, Lvm2/compiler/LuaC;->install(Lvm2/Globals;)V

    return-object v0
.end method
