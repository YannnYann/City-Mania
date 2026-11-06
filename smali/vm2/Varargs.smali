###### Class vm2.Varargs (vm2.Varargs)
.class public abstract Lvm2/Varargs;
.super Ljava/lang/Object;
.source "Varargs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/Varargs$PairVarargs;,
        Lvm2/Varargs$ArrayVarargs;,
        Lvm2/Varargs$ArrayPartVarargs;,
        Lvm2/Varargs$SubVarargs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arg(I)Lvm2/LuaValue;
.end method

.method public abstract arg1()Lvm2/LuaValue;
.end method

.method public argcheck(ZILjava/lang/String;)V
    .registers 4

    if-nez p1, :cond_5

    .line 397
    invoke-static {p2, p3}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_5
    return-void
.end method

.method public checkboolean(I)Z
    .registers 2

    .line 280
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    return p1
.end method

.method public checkclosure(I)Lvm2/LuaClosure;
    .registers 2

    .line 287
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble(I)D
    .registers 4

    .line 294
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public checkfunction(I)Lvm2/LuaFunction;
    .registers 2

    .line 301
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public checkint(I)I
    .registers 2

    .line 308
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    return p1
.end method

.method public checkinteger(I)Lvm2/LuaInteger;
    .registers 2

    .line 315
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkinteger()Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public checkjstring(I)Ljava/lang/String;
    .registers 2

    .line 336
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checklong(I)J
    .registers 4

    .line 322
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checklong()J

    move-result-wide v0

    return-wide v0
.end method

.method public checknotnil(I)Lvm2/LuaValue;
    .registers 2

    .line 387
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checknotnil()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checknumber(I)Lvm2/LuaNumber;
    .registers 2

    .line 329
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checknumber()Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public checkstring(I)Lvm2/LuaString;
    .registers 2

    .line 343
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public checktable(I)Lvm2/LuaTable;
    .registers 2

    .line 350
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public checkthread(I)Lvm2/LuaThread;
    .registers 2

    .line 357
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkthread()Lvm2/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public checkuserdata(I)Ljava/lang/Object;
    .registers 2

    .line 364
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkuserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 373
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkvalue(I)Lvm2/LuaValue;
    .registers 3

    .line 380
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_b

    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v0, "value expected"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public copyto([Lvm2/LuaValue;II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_e

    add-int v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 704
    invoke-virtual {p0, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public dealias()Lvm2/Varargs;
    .registers 4

    .line 714
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 720
    new-array v1, v0, [Lvm2/LuaValue;

    const/4 v2, 0x0

    .line 721
    invoke-virtual {p0, v1, v2, v0}, Lvm2/Varargs;->copyto([Lvm2/LuaValue;II)V

    .line 722
    new-instance v0, Lvm2/Varargs$ArrayVarargs;

    sget-object v2, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-direct {v0, v1, v2}, Lvm2/Varargs$ArrayVarargs;-><init>([Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 718
    :cond_1a
    new-instance v0, Lvm2/Varargs$PairVarargs;

    invoke-virtual {p0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 717
    :cond_28
    invoke-virtual {p0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    return-object v0

    .line 716
    :cond_2d
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object v0
.end method

.method public eval()Lvm2/Varargs;
    .registers 1

    .line 0
    return-object p0
.end method

.method public isTailcall()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isfunction(I)Z
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isfunction()Z

    move-result p1

    return p1
.end method

.method public isnil(I)Z
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    return p1
.end method

.method public isnoneornil(I)Z
    .registers 3

    .line 404
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_13

    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public isnumber(I)Z
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isnumber()Z

    move-result p1

    return p1
.end method

.method public isstring(I)Z
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result p1

    return p1
.end method

.method public istable(I)Z
    .registers 2

    .line 146
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result p1

    return p1
.end method

.method public isthread(I)Z
    .registers 2

    .line 153
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isthread()Z

    move-result p1

    return p1
.end method

.method public isuserdata(I)Z
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isuserdata()Z

    move-result p1

    return p1
.end method

.method public isvalue(I)Z
    .registers 3

    if-lez p1, :cond_a

    .line 166
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public abstract narg()I
.end method

.method public optboolean(IZ)Z
    .registers 3

    .line 173
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1
.end method

.method public optclosure(ILvm2/LuaClosure;)Lvm2/LuaClosure;
    .registers 3

    .line 180
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optclosure(Lvm2/LuaClosure;)Lvm2/LuaClosure;

    move-result-object p1

    return-object p1
.end method

.method public optdouble(ID)D
    .registers 4

    .line 187
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public optfunction(ILvm2/LuaFunction;)Lvm2/LuaFunction;
    .registers 3

    .line 194
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public optint(II)I
    .registers 3

    .line 201
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    return p1
.end method

.method public optinteger(ILvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 3

    .line 208
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public optjstring(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 229
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(IJ)J
    .registers 4

    .line 215
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lvm2/LuaValue;->optlong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public optnumber(ILvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 3

    .line 222
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public optstring(ILvm2/LuaString;)Lvm2/LuaString;
    .registers 3

    .line 236
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optstring(Lvm2/LuaString;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public opttable(ILvm2/LuaTable;)Lvm2/LuaTable;
    .registers 3

    .line 243
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public optthread(ILvm2/LuaThread;)Lvm2/LuaThread;
    .registers 3

    .line 250
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optthread(Lvm2/LuaThread;)Lvm2/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public optuserdata(ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 266
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lvm2/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public optuserdata(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 257
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optuserdata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public optvalue(ILvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    if-lez p1, :cond_d

    .line 273
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_d

    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_d
    return-object p2
.end method

.method public abstract subargs(I)Lvm2/Varargs;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lvm2/Varargs;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toboolean(I)Z
    .registers 2

    .line 411
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public tobyte(I)B
    .registers 2

    .line 418
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tobyte()B

    move-result p1

    return p1
.end method

.method public tochar(I)C
    .registers 2

    .line 425
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tochar()C

    move-result p1

    return p1
.end method

.method public todouble(I)D
    .registers 4

    .line 431
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public tofloat(I)F
    .registers 2

    .line 438
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tofloat()F

    move-result p1

    return p1
.end method

.method public toint(I)I
    .registers 2

    .line 445
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    return p1
.end method

.method public tojstring()Ljava/lang/String;
    .registers 6

    .line 484
    new-instance v0, Lvm2/Buffer;

    invoke-direct {v0}, Lvm2/Buffer;-><init>()V

    .line 485
    const-string v1, "("

    invoke-virtual {v0, v1}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    .line 486
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_10
    if-gt v3, v1, :cond_27

    if-le v3, v2, :cond_19

    .line 487
    const-string v4, ","

    invoke-virtual {v0, v4}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    .line 488
    :cond_19
    invoke-virtual {p0, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 490
    :cond_27
    const-string v1, ")"

    invoke-virtual {v0, v1}, Lvm2/Buffer;->append(Ljava/lang/String;)Lvm2/Buffer;

    .line 491
    invoke-virtual {v0}, Lvm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring(I)Ljava/lang/String;
    .registers 2

    .line 458
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tolong(I)J
    .registers 4

    .line 452
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->tolong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toshort(I)S
    .registers 2

    .line 465
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toshort()S

    move-result p1

    return p1
.end method

.method public touserdata(I)Ljava/lang/Object;
    .registers 2

    .line 471
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public touserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 478
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->touserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public type(I)I
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result p1

    return p1
.end method

###### Class vm2.Varargs.ArrayPartVarargs (vm2.Varargs$ArrayPartVarargs)
.class final Lvm2/Varargs$ArrayPartVarargs;
.super Lvm2/Varargs;
.source "Varargs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayPartVarargs"
.end annotation


# instance fields
.field private final length:I

.field private final more:Lvm2/Varargs;

.field private final offset:I

.field private final v:[Lvm2/LuaValue;


# direct methods
.method public constructor <init>([Lvm2/LuaValue;II)V
    .registers 4

    .line 654
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 655
    iput-object p1, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    .line 656
    iput p2, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    .line 657
    iput p3, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    .line 658
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    iput-object p1, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    return-void
.end method

.method public constructor <init>([Lvm2/LuaValue;IILvm2/Varargs;)V
    .registers 5

    .line 667
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 668
    iput-object p1, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    .line 669
    iput p2, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    .line 670
    iput p3, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    .line 671
    iput-object p4, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 674
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_6
    iget v1, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    if-gt p1, v1, :cond_13

    iget-object v1, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    iget v2, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    aget-object p1, v1, v2

    return-object p1

    :cond_13
    iget-object v0, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 3

    .line 680
    iget v0, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    iget v1, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    aget-object v0, v0, v1

    return-object v0

    :cond_b
    iget-object v0, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public copyto([Lvm2/LuaValue;II)V
    .registers 7

    .line 692
    iget v0, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 693
    iget-object v1, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    iget v2, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iget-object v1, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lvm2/Varargs;->copyto([Lvm2/LuaValue;II)V

    return-void
.end method

.method public narg()I
    .registers 3

    .line 677
    iget v0, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    iget-object v1, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    invoke-virtual {v1}, Lvm2/Varargs;->narg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    if-gtz p1, :cond_8

    .line 684
    const-string v1, "start must be > 0"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_8
    if-ne p1, v0, :cond_b

    return-object p0

    .line 687
    :cond_b
    iget v1, p0, Lvm2/Varargs$ArrayPartVarargs;->length:I

    if-le p1, v1, :cond_17

    .line 688
    iget-object v0, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 689
    :cond_17
    iget-object v2, p0, Lvm2/Varargs$ArrayPartVarargs;->v:[Lvm2/LuaValue;

    iget v3, p0, Lvm2/Varargs$ArrayPartVarargs;->offset:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    iget-object p1, p0, Lvm2/Varargs$ArrayPartVarargs;->more:Lvm2/Varargs;

    invoke-static {v2, v3, v1, p1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.Varargs.ArrayVarargs (vm2.Varargs$ArrayVarargs)
.class final Lvm2/Varargs$ArrayVarargs;
.super Lvm2/Varargs;
.source "Varargs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayVarargs"
.end annotation


# instance fields
.field private final r:Lvm2/Varargs;

.field private final v:[Lvm2/LuaValue;


# direct methods
.method public constructor <init>([Lvm2/LuaValue;Lvm2/Varargs;)V
    .registers 3

    .line 607
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 608
    iput-object p1, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    .line 609
    iput-object p2, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 612
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_6
    iget-object v1, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    array-length v2, v1

    if-gt p1, v2, :cond_f

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    :cond_f
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 3

    .line 617
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_9
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public copyto([Lvm2/LuaValue;II)V
    .registers 7

    .line 628
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 629
    iget-object v1, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    iget-object v1, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lvm2/Varargs;->copyto([Lvm2/LuaValue;II)V

    return-void
.end method

.method public narg()I
    .registers 3

    .line 615
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    array-length v0, v0

    iget-object v1, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    invoke-virtual {v1}, Lvm2/Varargs;->narg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    if-gtz p1, :cond_8

    .line 620
    const-string v1, "start must be > 0"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_8
    if-ne p1, v0, :cond_b

    return-object p0

    .line 623
    :cond_b
    iget-object v1, p0, Lvm2/Varargs$ArrayVarargs;->v:[Lvm2/LuaValue;

    array-length v2, v1

    if-le p1, v2, :cond_19

    .line 624
    iget-object v0, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :cond_19
    sub-int/2addr p1, v0

    .line 625
    array-length v0, v1

    sub-int/2addr v0, p1

    iget-object v2, p0, Lvm2/Varargs$ArrayVarargs;->r:Lvm2/Varargs;

    invoke-static {v1, p1, v0, v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.Varargs.PairVarargs (vm2.Varargs$PairVarargs)
.class final Lvm2/Varargs$PairVarargs;
.super Lvm2/Varargs;
.source "Varargs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairVarargs"
.end annotation


# instance fields
.field private final v1:Lvm2/LuaValue;

.field private final v2:Lvm2/Varargs;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    .registers 3

    .line 564
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 565
    iput-object p1, p0, Lvm2/Varargs$PairVarargs;->v1:Lvm2/LuaValue;

    .line 566
    iput-object p2, p0, Lvm2/Varargs$PairVarargs;->v2:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 569
    iget-object p1, p0, Lvm2/Varargs$PairVarargs;->v1:Lvm2/LuaValue;

    return-object p1

    :cond_6
    iget-object v1, p0, Lvm2/Varargs$PairVarargs;->v2:Lvm2/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 2

    .line 575
    iget-object v0, p0, Lvm2/Varargs$PairVarargs;->v1:Lvm2/LuaValue;

    return-object v0
.end method

.method public narg()I
    .registers 2

    .line 572
    iget-object v0, p0, Lvm2/Varargs$PairVarargs;->v2:Lvm2/Varargs;

    invoke-virtual {v0}, Lvm2/Varargs;->narg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 581
    iget-object p1, p0, Lvm2/Varargs$PairVarargs;->v2:Lvm2/Varargs;

    return-object p1

    :cond_a
    if-le p1, v1, :cond_14

    .line 583
    iget-object v1, p0, Lvm2/Varargs$PairVarargs;->v2:Lvm2/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 584
    :cond_14
    const-string p1, "start must be > 0"

    invoke-static {v0, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.Varargs.SubVarargs (vm2.Varargs$SubVarargs)
.class Lvm2/Varargs$SubVarargs;
.super Lvm2/Varargs;
.source "Varargs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubVarargs"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final v:Lvm2/Varargs;


# direct methods
.method public constructor <init>(Lvm2/Varargs;II)V
    .registers 4

    .line 515
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 516
    iput-object p1, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    .line 517
    iput p2, p0, Lvm2/Varargs$SubVarargs;->start:I

    .line 518
    iput p3, p0, Lvm2/Varargs$SubVarargs;->end:I

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 4

    .line 521
    iget v0, p0, Lvm2/Varargs$SubVarargs;->start:I

    add-int/lit8 v1, v0, -0x1

    add-int/2addr p1, v1

    if-lt p1, v0, :cond_12

    .line 522
    iget v0, p0, Lvm2/Varargs$SubVarargs;->end:I

    if-gt p1, v0, :cond_12

    iget-object v0, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    invoke-virtual {v0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_12
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 3

    .line 525
    iget-object v0, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    iget v1, p0, Lvm2/Varargs$SubVarargs;->start:I

    invoke-virtual {v0, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public narg()I
    .registers 3

    .line 528
    iget v0, p0, Lvm2/Varargs$SubVarargs;->end:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lvm2/Varargs$SubVarargs;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    .line 533
    :cond_4
    iget v1, p0, Lvm2/Varargs$SubVarargs;->start:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    if-lez p1, :cond_3b

    .line 535
    iget p1, p0, Lvm2/Varargs$SubVarargs;->end:I

    if-lt v1, p1, :cond_11

    .line 536
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    :cond_11
    if-ne v1, p1, :cond_1a

    .line 538
    iget-object v0, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    invoke-virtual {v0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1a
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_33

    .line 540
    new-instance v1, Lvm2/Varargs$PairVarargs;

    iget-object v2, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    iget-object v0, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    iget v2, p0, Lvm2/Varargs$SubVarargs;->end:I

    invoke-virtual {v0, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v1

    .line 541
    :cond_33
    new-instance v0, Lvm2/Varargs$SubVarargs;

    iget-object v2, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    invoke-direct {v0, v2, v1, p1}, Lvm2/Varargs$SubVarargs;-><init>(Lvm2/Varargs;II)V

    return-object v0

    .line 543
    :cond_3b
    new-instance p1, Lvm2/Varargs$SubVarargs;

    iget-object v0, p0, Lvm2/Varargs$SubVarargs;->v:Lvm2/Varargs;

    iget v2, p0, Lvm2/Varargs$SubVarargs;->end:I

    invoke-direct {p1, v0, v1, v2}, Lvm2/Varargs$SubVarargs;-><init>(Lvm2/Varargs;II)V

    return-object p1
.end method
