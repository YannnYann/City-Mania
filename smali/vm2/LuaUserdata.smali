###### Class vm2.LuaUserdata (vm2.LuaUserdata)
.class public Lvm2/LuaUserdata;
.super Lvm2/LuaValue;
.source "LuaUserdata.java"


# instance fields
.field public m_instance:Ljava/lang/Object;

.field public m_metatable:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 31
    iput-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lvm2/LuaValue;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 35
    iput-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public checkuserdata()Ljava/lang/Object;
    .registers 2

    .line 80
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object v0
.end method

.method public checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 84
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object p1

    .line 86
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lvm2/LuaUserdata;->eq_b(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 6

    .line 110
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->raweq(Lvm2/LuaUserdata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 111
    :cond_8
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lvm2/LuaValue;->isuserdata()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_23

    .line 112
    :cond_14
    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 113
    iget-object v3, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    invoke-static {p0, v3, p1, v0}, Lvm2/LuaValue;->eqmtcall(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v1

    :cond_23
    :goto_23
    return v2
.end method

.method public eqmt(Lvm2/LuaValue;)Z
    .registers 4

    .line 124
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lvm2/LuaValue;->isuserdata()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lvm2/LuaValue;->eqmtcall(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_4
    instance-of v0, p1, Lvm2/LuaUserdata;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_a
    check-cast p1, Lvm2/LuaUserdata;

    .line 104
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    iget-object p1, p1, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 90
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Lvm2/LuaValue;->gettable(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 71
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 52
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isuserdata()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isuserdata(Ljava/lang/Class;)Z
    .registers 3

    .line 60
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 65
    iget-object p2, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    .line 67
    :cond_13
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 63
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object p1
.end method

.method public raweq(Lvm2/LuaUserdata;)Z
    .registers 4

    if-eq p0, p1, :cond_15

    .line 119
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    iget-object v1, p1, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    iget-object p1, p1, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public raweq(Lvm2/LuaValue;)Z
    .registers 2

    .line 117
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->raweq(Lvm2/LuaUserdata;)Z

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    if-eqz v0, :cond_c

    invoke-static {p0, p1, p2}, Lvm2/LuaValue;->settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 95
    :cond_c
    :goto_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot set "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for userdata"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return-void
.end method

.method public setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 75
    iput-object p1, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    return-object p0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touserdata()Ljava/lang/Object;
    .registers 2

    .line 61
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object v0
.end method

.method public touserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 62
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "userdata"

    return-object v0
.end method

.method public userdata()Ljava/lang/Object;
    .registers 2

    .line 56
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    return-object v0
.end method
