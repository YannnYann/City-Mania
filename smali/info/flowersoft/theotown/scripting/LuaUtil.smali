###### Class info.flowersoft.theotown.scripting.LuaUtil (info.flowersoft.theotown.scripting.LuaUtil)
.class public final Linfo/flowersoft/theotown/scripting/LuaUtil;
.super Ljava/lang/Object;
.source "LuaUtil.java"


# direct methods
.method public static getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;
    .registers 4

    .line 36
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 37
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v1

    .line 39
    const-string v2, "__index"

    invoke-virtual {v1, v2, p0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 40
    const-string v2, "__newindex"

    invoke-virtual {v1, v2, p0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 41
    const-string p0, "__metatable"

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 43
    invoke-virtual {v0, v1}, Lvm2/LuaTable;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object v0
.end method

.method public static toString(Lvm2/Globals;Lvm2/Varargs;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    .line 23
    :goto_7
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v3

    if-gt v2, v3, :cond_30

    .line 24
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    if-le v2, v1, :cond_16

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_16
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 29
    :cond_20
    const-string v4, "tostring"

    invoke-virtual {p0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 32
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
