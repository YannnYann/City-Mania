###### Class vm2.lib.jse.JavaClass (vm2.lib.jse.JavaClass)
.class public Lvm2/lib/jse/JavaClass;
.super Lvm2/lib/jse/JavaInstance;
.source "JavaClass.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# static fields
.field static final NEW:Lvm2/LuaValue;

.field static final classes:Ljava/util/Map;


# instance fields
.field fields:Ljava/util/Map;

.field innerclasses:Ljava/util/Map;

.field methods:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/JavaClass;->classes:Ljava/util/Map;

    .line 54
    const-string v0, "new"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/JavaClass;->NEW:Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lvm2/lib/jse/JavaInstance;-><init>(Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0, p1}, Lvm2/lib/jse/JavaClass;->canAccessClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 70
    iput-object p0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    return-void

    .line 69
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private canAccessClass(Ljava/lang/Class;)Z
    .registers 3

    .line 86
    const-class v0, Lvm2/NoLuaAccess;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private canAccessField(Ljava/lang/reflect/Field;)Z
    .registers 3

    .line 78
    const-class v0, Lvm2/NoLuaAccess;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private canAccessMethod(Ljava/lang/reflect/Method;)Z
    .registers 3

    .line 82
    const-class v0, Lvm2/NoLuaAccess;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public static forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;
    .registers 3

    .line 61
    sget-object v0, Lvm2/lib/jse/JavaClass;->classes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvm2/lib/jse/JavaClass;

    if-nez v1, :cond_12

    .line 63
    new-instance v1, Lvm2/lib/jse/JavaClass;

    invoke-direct {v1, p0}, Lvm2/lib/jse/JavaClass;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public bridge synthetic get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lvm2/lib/jse/JavaInstance;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getConstructor()Lvm2/LuaValue;
    .registers 2

    .line 167
    sget-object v0, Lvm2/lib/jse/JavaClass;->NEW:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/lib/jse/JavaClass;->getMethod(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lvm2/LuaValue;)Ljava/lang/reflect/Field;
    .registers 7

    .line 90
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    if-nez v0, :cond_41

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 93
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_3f

    .line 94
    aget-object v3, v1, v2

    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-direct {p0, v3}, Lvm2/lib/jse/JavaClass;->canAccessField(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 96
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_3c

    const/4 v4, 0x1

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 104
    :cond_3f
    iput-object v0, p0, Lvm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    .line 106
    :cond_41
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    return-object p1
.end method

.method public getInnerClass(Lvm2/LuaValue;)Ljava/lang/Class;
    .registers 9

    .line 150
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->innerclasses:Ljava/util/Map;

    if-nez v0, :cond_43

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_41

    .line 154
    aget-object v3, v1, v2

    .line 155
    invoke-direct {p0, v3}, Lvm2/lib/jse/JavaClass;->canAccessClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 156
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 161
    :cond_41
    iput-object v0, p0, Lvm2/lib/jse/JavaClass;->innerclasses:Ljava/util/Map;

    .line 163
    :cond_43
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->innerclasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getMethod(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 110
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    if-nez v0, :cond_e1

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 113
    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_46

    .line 114
    aget-object v4, v1, v3

    .line 115
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-direct {p0, v4}, Lvm2/lib/jse/JavaClass;->canAccessMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 116
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_3c

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_3c
    invoke-static {v4}, Lvm2/lib/jse/JavaMethod;->forMethod(Ljava/lang/reflect/Method;)Lvm2/lib/jse/JavaMethod;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 123
    :cond_46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    iget-object v3, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 126
    :goto_59
    array-length v6, v3

    if-ge v5, v6, :cond_74

    .line 127
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 128
    aget-object v6, v3, v5

    invoke-static {v6}, Lvm2/lib/jse/JavaConstructor;->forConstructor(Ljava/lang/reflect/Constructor;)Lvm2/lib/jse/JavaConstructor;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 129
    :cond_74
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_9c

    if-eq v3, v5, :cond_93

    .line 132
    sget-object v3, Lvm2/lib/jse/JavaClass;->NEW:Lvm2/LuaValue;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lvm2/lib/jse/JavaConstructor;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvm2/lib/jse/JavaConstructor;

    invoke-static {v4}, Lvm2/lib/jse/JavaConstructor;->forConstructors([Lvm2/lib/jse/JavaConstructor;)Lvm2/LuaValue;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 131
    :cond_93
    sget-object v3, Lvm2/lib/jse/JavaClass;->NEW:Lvm2/LuaValue;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 139
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    .line 140
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_cb

    .line 141
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_db

    .line 142
    :cond_cb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lvm2/lib/jse/JavaMethod;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvm2/lib/jse/JavaMethod;

    invoke-static {v3}, Lvm2/lib/jse/JavaMethod;->forMethods([Lvm2/lib/jse/JavaMethod;)Lvm2/LuaFunction;

    move-result-object v3

    .line 139
    :goto_db
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 144
    :cond_df
    iput-object v1, p0, Lvm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    .line 146
    :cond_e1
    iget-object v0, p0, Lvm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lvm2/lib/jse/JavaInstance;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method
