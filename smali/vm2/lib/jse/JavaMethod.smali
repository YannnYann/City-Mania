###### Class vm2.lib.jse.JavaMethod (vm2.lib.jse.JavaMethod)
.class Lvm2/lib/jse/JavaMethod;
.super Lvm2/lib/jse/JavaMember;
.source "JavaMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JavaMethod$Overload;
    }
.end annotation


# static fields
.field static final methods:Ljava/util/Map;


# instance fields
.field final method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/JavaMethod;->methods:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 4

    .line 64
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lvm2/lib/jse/JavaMember;-><init>([Ljava/lang/Class;I)V

    .line 65
    iput-object p1, p0, Lvm2/lib/jse/JavaMethod;->method:Ljava/lang/reflect/Method;

    .line 67
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public static forMethod(Ljava/lang/reflect/Method;)Lvm2/lib/jse/JavaMethod;
    .registers 3

    .line 51
    sget-object v0, Lvm2/lib/jse/JavaMethod;->methods:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvm2/lib/jse/JavaMethod;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lvm2/lib/jse/JavaMethod;

    invoke-direct {v1, p0}, Lvm2/lib/jse/JavaMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method

.method public static forMethods([Lvm2/lib/jse/JavaMethod;)Lvm2/LuaFunction;
    .registers 2

    .line 58
    new-instance v0, Lvm2/lib/jse/JavaMethod$Overload;

    invoke-direct {v0, p0}, Lvm2/lib/jse/JavaMethod$Overload;-><init>([Lvm2/lib/jse/JavaMethod;)V

    return-object v0
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 74
    const-string v0, "method cannot be called without instance"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 78
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, p1, v0}, Lvm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 82
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 86
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkuserdata(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lvm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 4

    .line 94
    invoke-virtual {p0, p2}, Lvm2/lib/jse/JavaMember;->convertArgs(Lvm2/Varargs;)[Ljava/lang/Object;

    move-result-object p2

    .line 96
    :try_start_4
    iget-object v0, p0, Lvm2/lib/jse/JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_e} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    goto :goto_13

    :catch_11
    move-exception p1

    goto :goto_29

    .line 100
    :goto_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "coercion error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 98
    :goto_29
    new-instance p2, Lvm2/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

###### Class vm2.lib.jse.JavaMethod.Overload (vm2.lib.jse.JavaMethod$Overload)
.class Lvm2/lib/jse/JavaMethod$Overload;
.super Lvm2/LuaFunction;
.source "JavaMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JavaMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overload"
.end annotation


# instance fields
.field final methods:[Lvm2/lib/jse/JavaMethod;


# direct methods
.method public constructor <init>([Lvm2/lib/jse/JavaMethod;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Lvm2/LuaFunction;-><init>()V

    .line 118
    iput-object p1, p0, Lvm2/lib/jse/JavaMethod$Overload;->methods:[Lvm2/lib/jse/JavaMethod;

    return-void
.end method

.method private invokeBestMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 8

    .line 143
    sget v0, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    :goto_4
    iget-object v3, p0, Lvm2/lib/jse/JavaMethod$Overload;->methods:[Lvm2/lib/jse/JavaMethod;

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 145
    aget-object v3, v3, v2

    invoke-virtual {v3, p2}, Lvm2/lib/jse/JavaMember;->score(Lvm2/Varargs;)I

    move-result v3

    if-ge v3, v0, :cond_19

    .line 148
    iget-object v0, p0, Lvm2/lib/jse/JavaMethod$Overload;->methods:[Lvm2/lib/jse/JavaMethod;

    aget-object v1, v0, v2

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    move v0, v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    :goto_1c
    if-nez v1, :cond_23

    .line 156
    const-string v0, "no coercible public method"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 159
    :cond_23
    invoke-virtual {v1, p1, p2}, Lvm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 122
    const-string v0, "method cannot be called without instance"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 126
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-direct {p0, p1, v0}, Lvm2/lib/jse/JavaMethod$Overload;->invokeBestMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 130
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JavaMethod$Overload;->invokeBestMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 134
    invoke-virtual {p1}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JavaMethod$Overload;->invokeBestMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkuserdata(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lvm2/lib/jse/JavaMethod$Overload;->invokeBestMethod(Ljava/lang/Object;Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method
