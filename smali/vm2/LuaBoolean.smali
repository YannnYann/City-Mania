###### Class vm2.LuaBoolean (vm2.LuaBoolean)
.class public final Lvm2/LuaBoolean;
.super Lvm2/LuaValue;
.source "LuaBoolean.java"


# static fields
.field static final _FALSE:Lvm2/LuaBoolean;

.field static final _TRUE:Lvm2/LuaBoolean;

.field public static s_metatable:Lvm2/LuaValue;


# instance fields
.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lvm2/LuaBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvm2/LuaBoolean;-><init>(Z)V

    sput-object v0, Lvm2/LuaBoolean;->_TRUE:Lvm2/LuaBoolean;

    .line 48
    new-instance v0, Lvm2/LuaBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvm2/LuaBoolean;-><init>(Z)V

    sput-object v0, Lvm2/LuaBoolean;->_FALSE:Lvm2/LuaBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 56
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 57
    iput-boolean p1, p0, Lvm2/LuaBoolean;->v:Z

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lvm2/LuaBoolean;->v:Z

    return v0
.end method

.method public checkboolean()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lvm2/LuaBoolean;->v:Z

    return v0
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 101
    sget-object v0, Lvm2/LuaBoolean;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public isboolean()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public not()Lvm2/LuaValue;
    .registers 2

    .line 73
    iget-boolean v0, p0, Lvm2/LuaBoolean;->v:Z

    if-eqz v0, :cond_7

    sget-object v0, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object v0

    :cond_7
    sget-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object v0
.end method

.method public optboolean(Z)Z
    .registers 2

    .line 93
    iget-boolean p1, p0, Lvm2/LuaBoolean;->v:Z

    return p1
.end method

.method public toboolean()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lvm2/LuaBoolean;->v:Z

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 89
    iget-boolean v0, p0, Lvm2/LuaBoolean;->v:Z

    if-eqz v0, :cond_7

    const-string v0, "true"

    return-object v0

    :cond_7
    const-string v0, "false"

    return-object v0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "boolean"

    return-object v0
.end method
