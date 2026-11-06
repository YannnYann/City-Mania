###### Class vm2.lib.jse.LuajavaLib (vm2.lib.jse.LuajavaLib)
.class public Lvm2/lib/jse/LuajavaLib;
.super Lvm2/lib/VarArgFunction;
.source "LuajavaLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;
    }
.end annotation


# static fields
.field static final BINDCLASS:I = 0x1

.field static final CREATEPROXY:I = 0x4

.field static final INIT:I = 0x0

.field static final LOADLIB:I = 0x5

.field static final METHOD_MODIFIERS_VARARGS:I = 0x80

.field static final NAMES:[Ljava/lang/String;

.field static final NEW:I = 0x3

.field static final NEWINSTANCE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 93
    const-string v0, "createProxy"

    const-string v1, "loadLib"

    const-string v2, "bindClass"

    const-string v3, "newInstance"

    const-string v4, "new"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/LuajavaLib;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 178
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 108
    const-string v0, "package"

    const-string v1, "luajava"

    :try_start_4
    iget v2, p0, Lvm2/lib/LibFunction;->opcode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_ce

    if-eq v2, v4, :cond_c1

    if-eq v2, v3, :cond_97

    const/4 v0, 0x3

    if-eq v2, v0, :cond_97

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v2, v0, :cond_5a

    const/4 v0, 0x5

    if-ne v2, v0, :cond_43

    .line 153
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, v0}, Lvm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 158
    instance-of v0, p1, Lvm2/LuaValue;

    if-eqz v0, :cond_40

    .line 159
    check-cast p1, Lvm2/LuaValue;

    return-object p1

    :catch_37
    move-exception p1

    goto/16 :goto_fb

    :catch_3a
    move-exception p1

    goto/16 :goto_101

    :catch_3d
    move-exception p1

    goto/16 :goto_10b

    .line 161
    :cond_40
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 165
    :cond_43
    new-instance p1, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not yet supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_5a
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-lez v2, :cond_8f

    .line 135
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    .line 138
    new-array v3, v2, [Ljava/lang/Class;

    :goto_68
    if-ge v1, v2, :cond_78

    add-int/lit8 v4, v1, 0x1

    .line 140
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lvm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1

    move v1, v4

    goto :goto_68

    .line 143
    :cond_78
    new-instance p1, Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;-><init>(Lvm2/LuaValue;Lvm2/lib/jse/LuajavaLib$1;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v3, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lvm2/LuaValue;->userdataOf(Ljava/lang/Object;)Lvm2/LuaUserdata;

    move-result-object p1

    return-object p1

    .line 134
    :cond_8f
    new-instance p1, Lvm2/LuaError;

    const-string v0, "no interfaces"

    invoke-direct {p1, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_97
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v0

    .line 126
    iget v1, p0, Lvm2/lib/LibFunction;->opcode:I

    if-ne v1, v3, :cond_a8

    invoke-virtual {v0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_b0

    :cond_a8
    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 127
    :goto_b0
    invoke-virtual {p1, v3}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    .line 128
    invoke-static {v0}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/lib/jse/JavaClass;->getConstructor()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 119
    :cond_c1
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p1

    return-object p1

    .line 111
    :cond_ce
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    .line 112
    new-instance v2, Lvm2/LuaTable;

    invoke-direct {v2}, Lvm2/LuaTable;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lvm2/lib/jse/LuajavaLib;->NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    .line 114
    invoke-virtual {p1, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 115
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_fa

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V
    :try_end_fa
    .catch Lvm2/LuaError; {:try_start_4 .. :try_end_fa} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_fa} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_fa} :catch_37

    :cond_fa
    return-object v2

    .line 172
    :goto_fb
    new-instance v0, Lvm2/LuaError;

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 170
    :goto_101
    new-instance v0, Lvm2/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 168
    :goto_10b
    throw p1
.end method

###### Class vm2.lib.jse.LuajavaLib.AnonymousClass1 (vm2.lib.jse.LuajavaLib$1)
.class synthetic Lvm2/lib/jse/LuajavaLib$1;
.super Ljava/lang/Object;
.source "LuajavaLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/LuajavaLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.lib.jse.LuajavaLib.ProxyInvocationHandler (vm2.lib.jse.LuajavaLib$ProxyInvocationHandler)
.class final Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "LuajavaLib.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/LuajavaLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field private final lobj:Lvm2/LuaValue;


# direct methods
.method private constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;->lobj:Lvm2/LuaValue;

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/LuaValue;Lvm2/lib/jse/LuajavaLib$1;)V
    .registers 3

    .line 181
    invoke-direct {p0, p1}, Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;-><init>(Lvm2/LuaValue;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lvm2/lib/jse/LuajavaLib$ProxyInvocationHandler;->lobj:Lvm2/LuaValue;

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 193
    :cond_12
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    if-eqz p3, :cond_22

    .line 194
    array-length v2, p3

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    if-eqz v0, :cond_50

    add-int/lit8 v2, v2, -0x1

    .line 197
    aget-object v0, p3, v2

    .line 198
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    add-int v4, v2, v3

    .line 199
    new-array v4, v4, [Lvm2/LuaValue;

    move v5, v1

    :goto_32
    if-ge v5, v2, :cond_3f

    .line 201
    aget-object v6, p3, v5

    invoke-static {v6}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_3f
    :goto_3f
    if-ge v1, v3, :cond_5f

    add-int p3, v1, v2

    .line 203
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v5

    aput-object v5, v4, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 205
    :cond_50
    new-array v4, v2, [Lvm2/LuaValue;

    :goto_52
    if-ge v1, v2, :cond_5f

    .line 207
    aget-object v0, p3, v1

    invoke-static {v0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 209
    :cond_5f
    invoke-virtual {p1, v4}, Lvm2/LuaValue;->invoke([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
