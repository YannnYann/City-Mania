###### Class vm2.LuaNil (vm2.LuaNil)
.class public Lvm2/LuaNil;
.super Lvm2/LuaValue;
.source "LuaNil.java"


# static fields
.field static final _NIL:Lvm2/LuaNil;

.field public static s_metatable:Lvm2/LuaValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lvm2/LuaNil;

    invoke-direct {v0}, Lvm2/LuaNil;-><init>()V

    sput-object v0, Lvm2/LuaNil;->_NIL:Lvm2/LuaNil;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknotnil()Lvm2/LuaValue;
    .registers 2

    .line 85
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 81
    instance-of p1, p1, Lvm2/LuaNil;

    return p1
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 77
    sget-object v0, Lvm2/LuaNil;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public isnil()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public not()Lvm2/LuaValue;
    .registers 2

    .line 65
    sget-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object v0
.end method

.method public optboolean(Z)Z
    .registers 2

    .line 0
    return p1
.end method

.method public optclosure(Lvm2/LuaClosure;)Lvm2/LuaClosure;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optdouble(D)D
    .registers 3

    .line 0
    return-wide p1
.end method

.method public optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optint(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optlong(J)J
    .registers 3

    .line 0
    return-wide p1
.end method

.method public optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optstring(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 0
    return-object p1
.end method

.method public opttable(Lvm2/LuaTable;)Lvm2/LuaTable;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optthread(Lvm2/LuaThread;)Lvm2/LuaThread;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    return-object p2
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    return-object p1
.end method

.method public optvalue(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "nil"

    return-object v0
.end method

.method public toboolean()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "nil"

    return-object v0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "nil"

    return-object v0
.end method
