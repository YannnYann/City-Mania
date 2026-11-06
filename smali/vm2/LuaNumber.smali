###### Class vm2.LuaNumber (vm2.LuaNumber)
.class public abstract Lvm2/LuaNumber;
.super Lvm2/LuaValue;
.source "LuaNumber.java"


# static fields
.field public static s_metatable:Lvm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknumber()Lvm2/LuaNumber;
    .registers 1

    .line 0
    return-object p0
.end method

.method public checknumber(Ljava/lang/String;)Lvm2/LuaNumber;
    .registers 2

    .line 0
    return-object p0
.end method

.method public concat(Lvm2/Buffer;)Lvm2/Buffer;
    .registers 2

    .line 77
    invoke-virtual {p1, p0}, Lvm2/Buffer;->concatTo(Lvm2/LuaNumber;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 76
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->concatTo(Lvm2/LuaNumber;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaNumber;)Lvm2/LuaValue;
    .registers 3

    .line 78
    invoke-virtual {p0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaString;->concatTo(Lvm2/LuaString;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaString;)Lvm2/LuaValue;
    .registers 3

    .line 79
    invoke-virtual {p0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaString;->concatTo(Lvm2/LuaString;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 73
    sget-object v0, Lvm2/LuaNumber;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public isnumber()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 2

    .line 0
    return-object p0
.end method

.method public tonumber()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x4

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, "number"

    return-object v0
.end method
