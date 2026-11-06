###### Class vm2.lib.jse.CoerceJavaToLua (vm2.lib.jse.CoerceJavaToLua)
.class public Lvm2/lib/jse/CoerceJavaToLua;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/CoerceJavaToLua$Coercion;,
        Lvm2/lib/jse/CoerceJavaToLua$BoolCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$IntCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$CharCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$DoubleCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$StringCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$BytesCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$ClassCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$InstanceCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$ArrayCoercion;,
        Lvm2/lib/jse/CoerceJavaToLua$LuaCoercion;
    }
.end annotation


# static fields
.field static final COERCIONS:Ljava/util/Map;

.field static final arrayCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

.field static final instanceCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

.field static final luaCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    .line 141
    new-instance v1, Lvm2/lib/jse/CoerceJavaToLua$BoolCoercion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lvm2/lib/jse/CoerceJavaToLua$BoolCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 142
    new-instance v3, Lvm2/lib/jse/CoerceJavaToLua$IntCoercion;

    invoke-direct {v3, v2}, Lvm2/lib/jse/CoerceJavaToLua$IntCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 143
    new-instance v4, Lvm2/lib/jse/CoerceJavaToLua$CharCoercion;

    invoke-direct {v4, v2}, Lvm2/lib/jse/CoerceJavaToLua$CharCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 144
    new-instance v5, Lvm2/lib/jse/CoerceJavaToLua$DoubleCoercion;

    invoke-direct {v5, v2}, Lvm2/lib/jse/CoerceJavaToLua$DoubleCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 145
    new-instance v6, Lvm2/lib/jse/CoerceJavaToLua$StringCoercion;

    invoke-direct {v6, v2}, Lvm2/lib/jse/CoerceJavaToLua$StringCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 146
    new-instance v7, Lvm2/lib/jse/CoerceJavaToLua$BytesCoercion;

    invoke-direct {v7, v2}, Lvm2/lib/jse/CoerceJavaToLua$BytesCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 147
    new-instance v8, Lvm2/lib/jse/CoerceJavaToLua$ClassCoercion;

    invoke-direct {v8, v2}, Lvm2/lib/jse/CoerceJavaToLua$ClassCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    .line 148
    const-class v9, Ljava/lang/Boolean;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-class v1, [B

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-class v1, Ljava/lang/Class;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Lvm2/lib/jse/CoerceJavaToLua$InstanceCoercion;

    invoke-direct {v0, v2}, Lvm2/lib/jse/CoerceJavaToLua$InstanceCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    sput-object v0, Lvm2/lib/jse/CoerceJavaToLua;->instanceCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    .line 194
    new-instance v0, Lvm2/lib/jse/CoerceJavaToLua$ArrayCoercion;

    invoke-direct {v0, v2}, Lvm2/lib/jse/CoerceJavaToLua$ArrayCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    sput-object v0, Lvm2/lib/jse/CoerceJavaToLua;->arrayCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    .line 196
    new-instance v0, Lvm2/lib/jse/CoerceJavaToLua$LuaCoercion;

    invoke-direct {v0, v2}, Lvm2/lib/jse/CoerceJavaToLua$LuaCoercion;-><init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V

    sput-object v0, Lvm2/lib/jse/CoerceJavaToLua;->luaCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 4

    if-nez p0, :cond_5

    .line 180
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    .line 181
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 182
    sget-object v1, Lvm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    if-nez v2, :cond_28

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lvm2/lib/jse/CoerceJavaToLua;->arrayCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_25

    .line 185
    :cond_1c
    instance-of v2, p0, Lvm2/LuaValue;

    if-eqz v2, :cond_23

    sget-object v2, Lvm2/lib/jse/CoerceJavaToLua;->luaCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_25

    .line 186
    :cond_23
    sget-object v2, Lvm2/lib/jse/CoerceJavaToLua;->instanceCoercion:Lvm2/lib/jse/CoerceJavaToLua$Coercion;

    .line 187
    :goto_25
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_28
    invoke-interface {v2, p0}, Lvm2/lib/jse/CoerceJavaToLua$Coercion;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.AnonymousClass1 (vm2.lib.jse.CoerceJavaToLua$1)
.class synthetic Lvm2/lib/jse/CoerceJavaToLua$1;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.lib.jse.CoerceJavaToLua.ArrayCoercion (vm2.lib.jse.CoerceJavaToLua$ArrayCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$ArrayCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$ArrayCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 3

    .line 127
    new-instance v0, Lvm2/lib/jse/JavaArray;

    invoke-direct {v0, p1}, Lvm2/lib/jse/JavaArray;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.BoolCoercion (vm2.lib.jse.CoerceJavaToLua$BoolCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$BoolCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoolCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$BoolCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_b
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.BytesCoercion (vm2.lib.jse.CoerceJavaToLua$BytesCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$BytesCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BytesCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$BytesCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 108
    check-cast p1, [B

    invoke-static {p1}, Lvm2/LuaValue;->valueOf([B)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.CharCoercion (vm2.lib.jse.CoerceJavaToLua$CharCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$CharCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$CharCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 88
    check-cast p1, Ljava/lang/Character;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.ClassCoercion (vm2.lib.jse.CoerceJavaToLua$ClassCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$ClassCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$ClassCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 114
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.Coercion (vm2.lib.jse.CoerceJavaToLua$Coercion)
.class interface abstract Lvm2/lib/jse/CoerceJavaToLua$Coercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Coercion"
.end annotation


# virtual methods
.method public abstract coerce(Ljava/lang/Object;)Lvm2/LuaValue;
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.DoubleCoercion (vm2.lib.jse.CoerceJavaToLua$DoubleCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$DoubleCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$DoubleCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 4

    .line 95
    check-cast p1, Ljava/lang/Number;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.InstanceCoercion (vm2.lib.jse.CoerceJavaToLua$InstanceCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$InstanceCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$InstanceCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 3

    .line 120
    new-instance v0, Lvm2/lib/jse/JavaInstance;

    invoke-direct {v0, p1}, Lvm2/lib/jse/JavaInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.IntCoercion (vm2.lib.jse.CoerceJavaToLua$IntCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$IntCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$IntCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 81
    check-cast p1, Ljava/lang/Number;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.LuaCoercion (vm2.lib.jse.CoerceJavaToLua$LuaCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$LuaCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LuaCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 131
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$LuaCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 133
    check-cast p1, Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.jse.CoerceJavaToLua.StringCoercion (vm2.lib.jse.CoerceJavaToLua$StringCoercion)
.class final Lvm2/lib/jse/CoerceJavaToLua$StringCoercion;
.super Ljava/lang/Object;
.source "CoerceJavaToLua.java"

# interfaces
.implements Lvm2/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceJavaToLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringCoercion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/CoerceJavaToLua$1;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Lvm2/lib/jse/CoerceJavaToLua$StringCoercion;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method
