###### Class vm2.LuaFunction (vm2.LuaFunction)
.class public abstract Lvm2/LuaFunction;
.super Lvm2/LuaValue;
.source "LuaFunction.java"


# static fields
.field public static s_metatable:Lvm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checkfunction()Lvm2/LuaFunction;
    .registers 1

    .line 0
    return-object p0
.end method

.method public classnamestub()Ljava/lang/String;
    .registers 6

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_24

    add-int/lit8 v2, v1, 0x2

    .line 85
    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 66
    sget-object v0, Lvm2/LuaFunction;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public isfunction()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lvm2/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;
    .registers 2

    .line 0
    return-object p0
.end method

.method public strvalue()Lvm2/LuaString;
    .registers 2

    .line 74
    invoke-virtual {p0}, Lvm2/LuaFunction;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x7

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "function"

    return-object v0
.end method
