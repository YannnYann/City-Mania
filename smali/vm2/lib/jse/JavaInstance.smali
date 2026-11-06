###### Class vm2.lib.jse.JavaInstance (vm2.lib.jse.JavaInstance)
.class Lvm2/lib/jse/JavaInstance;
.super Lvm2/LuaUserdata;
.source "JavaInstance.java"


# instance fields
.field jclass:Lvm2/lib/jse/JavaClass;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lvm2/LuaUserdata;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 50
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    if-nez v0, :cond_10

    .line 51
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    .line 52
    :cond_10
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lvm2/lib/jse/JavaClass;->getField(Lvm2/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 55
    :try_start_18
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    .line 57
    new-instance v0, Lvm2/LuaError;

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 59
    :cond_2a
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lvm2/lib/jse/JavaClass;->getMethod(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_33

    return-object v0

    .line 62
    :cond_33
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lvm2/lib/jse/JavaClass;->getInnerClass(Lvm2/LuaValue;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 64
    invoke-static {v0}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p1

    return-object p1

    .line 65
    :cond_40
    invoke-super {p0, p1}, Lvm2/LuaUserdata;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    if-nez v0, :cond_10

    .line 70
    iget-object v0, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    .line 71
    :cond_10
    iget-object v0, p0, Lvm2/lib/jse/JavaInstance;->jclass:Lvm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lvm2/lib/jse/JavaClass;->getField(Lvm2/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 74
    :try_start_18
    iget-object p1, p0, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    .line 77
    new-instance p2, Lvm2/LuaError;

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 79
    :cond_2d
    invoke-super {p0, p1, p2}, Lvm2/LuaUserdata;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method
