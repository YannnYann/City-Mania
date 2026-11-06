###### Class vm2.lib.jse.JavaMember (vm2.lib.jse.JavaMember)
.class abstract Lvm2/lib/jse/JavaMember;
.super Lvm2/lib/VarArgFunction;
.source "JavaMember.java"


# static fields
.field static final METHOD_MODIFIERS_VARARGS:I = 0x80


# instance fields
.field final fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

.field final varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# direct methods
.method public constructor <init>([Ljava/lang/Class;I)V
    .registers 7

    .line 48
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    and-int/lit16 p2, p2, 0x80

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_c

    :cond_b
    move p2, v0

    .line 50
    :goto_c
    array-length v2, p1

    if-eqz p2, :cond_10

    sub-int/2addr v2, v1

    :cond_10
    new-array v2, v2, [Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    iput-object v2, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    .line 51
    :goto_14
    iget-object v2, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v3, v2

    if-ge v0, v3, :cond_24

    .line 52
    aget-object v3, p1, v0

    invoke-static {v3}, Lvm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_24
    if-eqz p2, :cond_2f

    .line 53
    array-length p2, p1

    sub-int/2addr p2, v1

    aget-object p1, p1, p2

    invoke-static {p1}, Lvm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object p1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    iput-object p1, p0, Lvm2/lib/jse/JavaMember;->varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    return-void
.end method


# virtual methods
.method public convertArgs(Lvm2/Varargs;)[Ljava/lang/Object;
    .registers 8

    .line 69
    iget-object v0, p0, Lvm2/lib/jse/JavaMember;->varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 70
    iget-object v0, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_a
    if-ge v1, v0, :cond_1e

    .line 72
    iget-object v3, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-interface {v3, v5}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lvm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_a

    :cond_1e
    return-object v2

    .line 74
    :cond_1f
    iget-object v0, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v0, v0

    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    new-array v2, v0, [Ljava/lang/Object;

    .line 76
    :goto_2c
    iget-object v3, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v4, v3

    if-ge v1, v4, :cond_41

    .line 77
    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-interface {v3, v5}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lvm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_2c

    .line 78
    :cond_41
    array-length v1, v3

    :goto_42
    if-ge v1, v0, :cond_54

    .line 79
    iget-object v3, p0, Lvm2/lib/jse/JavaMember;->varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-interface {v3, v5}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lvm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_42

    :cond_54
    return-object v2
.end method

.method public score(Lvm2/Varargs;)I
    .registers 7

    .line 57
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    .line 58
    iget-object v1, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_11

    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    array-length v1, v1

    sub-int v1, v0, v1

    mul-int/2addr v2, v1

    goto :goto_12

    :cond_11
    move v2, v3

    .line 59
    :goto_12
    iget-object v1, p0, Lvm2/lib/jse/JavaMember;->fixedargs:[Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v4, v1

    if-ge v3, v4, :cond_25

    .line 60
    aget-object v1, v1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-interface {v1, v4}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lvm2/LuaValue;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_12

    .line 61
    :cond_25
    iget-object v3, p0, Lvm2/lib/jse/JavaMember;->varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    if-eqz v3, :cond_3a

    .line 62
    array-length v1, v1

    :goto_2a
    if-ge v1, v0, :cond_3a

    .line 63
    iget-object v3, p0, Lvm2/lib/jse/JavaMember;->varargs:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-interface {v3, v4}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lvm2/LuaValue;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2a

    :cond_3a
    return v2
.end method
