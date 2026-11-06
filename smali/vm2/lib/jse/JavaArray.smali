###### Class vm2.lib.jse.JavaArray (vm2.lib.jse.JavaArray)
.class Lvm2/lib/jse/JavaArray;
.super Lvm2/LuaUserdata;
.source "JavaArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JavaArray$LenFunction;
    }
.end annotation


# static fields
.field static final LENGTH:Lvm2/LuaValue;

.field static final array_metatable:Lvm2/LuaTable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    const-string v0, "length"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/JavaArray;->LENGTH:Lvm2/LuaValue;

    .line 54
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0}, Lvm2/LuaTable;-><init>()V

    sput-object v0, Lvm2/lib/jse/JavaArray;->array_metatable:Lvm2/LuaTable;

    .line 55
    sget-object v1, Lvm2/LuaValue;->LEN:Lvm2/LuaString;

    new-instance v2, Lvm2/lib/jse/JavaArray$LenFunction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lvm2/lib/jse/JavaArray$LenFunction;-><init>(Lvm2/lib/jse/JavaArray$1;)V

    invoke-virtual {v0, v1, v2}, Lvm2/LuaTable;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lvm2/LuaUserdata;-><init>(Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lvm2/lib/jse/JavaArray;->array_metatable:Lvm2/LuaTable;

    invoke-virtual {p0, p1}, Lvm2/LuaUserdata;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 64
    sget-object v0, Lvm2/lib/jse/JavaArray;->LENGTH:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 66
    :cond_13
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 67
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3a

    .line 68
    iget-object v1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 69
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 72
    :cond_3d
    invoke-super {p0, p1}, Lvm2/LuaUserdata;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 5

    .line 76
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 77
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_28

    .line 78
    iget-object v1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 79
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 80
    :cond_28
    iget-object v0, p0, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    if-eqz v0, :cond_34

    invoke-static {p0, p1, p2}, Lvm2/LuaValue;->settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    return-void

    .line 81
    :cond_34
    :goto_34
    const-string p1, "array index out of bounds"

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return-void

    .line 84
    :cond_3a
    invoke-super {p0, p1, p2}, Lvm2/LuaUserdata;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

###### Class vm2.lib.jse.JavaArray.AnonymousClass1 (vm2.lib.jse.JavaArray$1)
.class synthetic Lvm2/lib/jse/JavaArray$1;
.super Ljava/lang/Object;
.source "JavaArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JavaArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.lib.jse.JavaArray.LenFunction (vm2.lib.jse.JavaArray$LenFunction)
.class final Lvm2/lib/jse/JavaArray$LenFunction;
.super Lvm2/lib/OneArgFunction;
.source "JavaArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JavaArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LenFunction"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JavaArray$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lvm2/lib/jse/JavaArray$LenFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 46
    check-cast p1, Lvm2/LuaUserdata;

    iget-object p1, p1, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method
