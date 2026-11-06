###### Class vm2.lib.jse.JavaConstructor (vm2.lib.jse.JavaConstructor)
.class Lvm2/lib/jse/JavaConstructor;
.super Lvm2/lib/jse/JavaMember;
.source "JavaConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JavaConstructor$Overload;
    }
.end annotation


# static fields
.field static final constructors:Ljava/util/Map;


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/JavaConstructor;->constructors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 4

    .line 65
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lvm2/lib/jse/JavaMember;-><init>([Ljava/lang/Class;I)V

    .line 66
    iput-object p1, p0, Lvm2/lib/jse/JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;)Lvm2/lib/jse/JavaConstructor;
    .registers 3

    .line 52
    sget-object v0, Lvm2/lib/jse/JavaConstructor;->constructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvm2/lib/jse/JavaConstructor;

    if-nez v1, :cond_12

    .line 54
    new-instance v1, Lvm2/lib/jse/JavaConstructor;

    invoke-direct {v1, p0}, Lvm2/lib/jse/JavaConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method

.method public static forConstructors([Lvm2/lib/jse/JavaConstructor;)Lvm2/LuaValue;
    .registers 2

    .line 59
    new-instance v0, Lvm2/lib/jse/JavaConstructor$Overload;

    invoke-direct {v0, p0}, Lvm2/lib/jse/JavaConstructor$Overload;-><init>([Lvm2/lib/jse/JavaConstructor;)V

    return-object v0
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 70
    invoke-virtual {p0, p1}, Lvm2/lib/jse/JavaMember;->convertArgs(Lvm2/Varargs;)[Ljava/lang/Object;

    move-result-object p1

    .line 72
    :try_start_4
    iget-object v0, p0, Lvm2/lib/jse/JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 76
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coercion error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 74
    :goto_29
    new-instance v0, Lvm2/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class vm2.lib.jse.JavaConstructor.Overload (vm2.lib.jse.JavaConstructor$Overload)
.class Lvm2/lib/jse/JavaConstructor$Overload;
.super Lvm2/lib/VarArgFunction;
.source "JavaConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JavaConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overload"
.end annotation


# instance fields
.field final constructors:[Lvm2/lib/jse/JavaConstructor;


# direct methods
.method public constructor <init>([Lvm2/lib/jse/JavaConstructor;)V
    .registers 2

    .line 91
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    .line 92
    iput-object p1, p0, Lvm2/lib/jse/JavaConstructor$Overload;->constructors:[Lvm2/lib/jse/JavaConstructor;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 97
    sget v0, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    :goto_4
    iget-object v3, p0, Lvm2/lib/jse/JavaConstructor$Overload;->constructors:[Lvm2/lib/jse/JavaConstructor;

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 99
    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lvm2/lib/jse/JavaMember;->score(Lvm2/Varargs;)I

    move-result v3

    if-ge v3, v0, :cond_19

    .line 102
    iget-object v0, p0, Lvm2/lib/jse/JavaConstructor$Overload;->constructors:[Lvm2/lib/jse/JavaConstructor;

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

    .line 110
    const-string v0, "no coercible public method"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 113
    :cond_23
    invoke-virtual {v1, p1}, Lvm2/lib/jse/JavaConstructor;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
