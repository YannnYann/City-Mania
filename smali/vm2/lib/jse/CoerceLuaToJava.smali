###### Class vm2.lib.jse.CoerceLuaToJava (vm2.lib.jse.CoerceLuaToJava)
.class public Lvm2/lib/jse/CoerceLuaToJava;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/CoerceLuaToJava$Coercion;,
        Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;,
        Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;,
        Lvm2/lib/jse/CoerceLuaToJava$BoolCoercion;,
        Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;,
        Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;
    }
.end annotation


# static fields
.field static final COERCIONS:Ljava/util/Map;

.field static SCORE_NULL_VALUE:I = 0x10

.field static SCORE_UNCOERCIBLE:I = 0x10000

.field static SCORE_WRONG_TYPE:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    .line 327
    new-instance v1, Lvm2/lib/jse/CoerceLuaToJava$BoolCoercion;

    invoke-direct {v1}, Lvm2/lib/jse/CoerceLuaToJava$BoolCoercion;-><init>()V

    .line 328
    new-instance v2, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 329
    new-instance v4, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 330
    new-instance v6, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 331
    new-instance v7, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 332
    new-instance v8, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 333
    new-instance v9, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v10, 0x5

    invoke-direct {v9, v10}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 334
    new-instance v10, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    .line 335
    new-instance v11, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;

    invoke-direct {v11, v3}, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;-><init>(I)V

    .line 336
    new-instance v3, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;

    invoke-direct {v3, v5}, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;-><init>(I)V

    .line 338
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-class v5, Ljava/lang/Boolean;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-class v1, [B

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-static {p1}, Lvm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object p1

    invoke-interface {p1, p0}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lvm2/LuaValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCoercion(Ljava/lang/Class;)Lvm2/lib/jse/CoerceLuaToJava$Coercion;
    .registers 4

    .line 359
    sget-object v0, Lvm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    if-eqz v1, :cond_b

    return-object v1

    .line 363
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 364
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 365
    new-instance v1, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;-><init>(Ljava/lang/Class;)V

    goto :goto_23

    .line 367
    :cond_1e
    new-instance v1, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;

    invoke-direct {v1, p0}, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;-><init>(Ljava/lang/Class;)V

    .line 369
    :goto_23
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 5

    if-nez p1, :cond_5

    .line 274
    sget p0, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    return p0

    :cond_5
    const/4 v0, 0x0

    if-ne p0, p1, :cond_9

    return v0

    .line 277
    :cond_9
    sget v1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    .line 279
    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 280
    aget-object v2, p1, v0

    invoke-static {p0, v2}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2f
    return v1
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.ArrayCoercion (vm2.lib.jse.CoerceLuaToJava$ArrayCoercion)
.class final Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"

# interfaces
.implements Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayCoercion"
.end annotation


# instance fields
.field final componentCoercion:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

.field final componentType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    .line 228
    invoke-static {p1}, Lvm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    return-void
.end method


# virtual methods
.method public coerce(Lvm2/LuaValue;)Ljava/lang/Object;
    .registers 8

    .line 246
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 255
    :cond_c
    invoke-virtual {p1}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 248
    :cond_11
    invoke-virtual {p1}, Lvm2/LuaValue;->length()I

    move-result v0

    .line 249
    iget-object v1, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_2f

    .line 251
    iget-object v3, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-interface {v3, v5}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lvm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v4

    goto :goto_1c

    :cond_2f
    return-object v1
.end method

.method public score(Lvm2/LuaValue;)I
    .registers 5

    .line 234
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    .line 242
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    return p1

    .line 238
    :cond_10
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-virtual {p1}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 236
    :cond_23
    invoke-virtual {p1}, Lvm2/LuaValue;->length()I

    move-result v0

    if-nez v0, :cond_2b

    const/4 p1, 0x0

    return p1

    :cond_2b
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lvm2/lib/jse/CoerceLuaToJava$Coercion;

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-interface {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lvm2/LuaValue;)I

    move-result p1

    return p1

    .line 240
    :cond_36
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.BoolCoercion (vm2.lib.jse.CoerceLuaToJava$BoolCoercion)
.class final Lvm2/lib/jse/CoerceLuaToJava$BoolCoercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"

# interfaces
.implements Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoolCoercion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public coerce(Lvm2/LuaValue;)Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public score(Lvm2/LuaValue;)I
    .registers 3

    .line 88
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 85
    const-string v0, "BoolCoercion()"

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.Coercion (vm2.lib.jse.CoerceLuaToJava$Coercion)
.class interface abstract Lvm2/lib/jse/CoerceLuaToJava$Coercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Coercion"
.end annotation


# virtual methods
.method public abstract coerce(Lvm2/LuaValue;)Ljava/lang/Object;
.end method

.method public abstract score(Lvm2/LuaValue;)I
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.NumericCoercion (vm2.lib.jse.CoerceLuaToJava$NumericCoercion)
.class final Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"

# interfaces
.implements Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumericCoercion"
.end annotation


# static fields
.field static final TARGET_TYPE_BYTE:I = 0x0

.field static final TARGET_TYPE_CHAR:I = 0x1

.field static final TARGET_TYPE_DOUBLE:I = 0x6

.field static final TARGET_TYPE_FLOAT:I = 0x5

.field static final TARGET_TYPE_INT:I = 0x3

.field static final TARGET_TYPE_LONG:I = 0x4

.field static final TARGET_TYPE_SHORT:I = 0x2

.field static final TYPE_NAMES:[Ljava/lang/String;


# instance fields
.field final targetType:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 108
    const-string v5, "float"

    const-string v6, "double"

    const-string v0, "byte"

    const-string v1, "char"

    const-string v2, "short"

    const-string v3, "int"

    const-string v4, "long"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    return-void
.end method


# virtual methods
.method public coerce(Lvm2/LuaValue;)Ljava/lang/Object;
    .registers 4

    .line 176
    iget v0, p0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    packed-switch v0, :pswitch_data_4c

    const/4 p1, 0x0

    return-object p1

    .line 183
    :pswitch_7
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_10
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_1a
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_24
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 179
    :pswitch_2d
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_37
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_41
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_24
        :pswitch_1a
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method

.method public score(Lvm2/LuaValue;)I
    .registers 10

    .line 118
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 119
    invoke-virtual {p1}, Lvm2/LuaValue;->tonumber()Lvm2/LuaValue;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    return p1

    :cond_15
    const/4 v0, 0x4

    goto :goto_18

    :cond_17
    move v0, v2

    .line 125
    :goto_18
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6e

    .line 126
    iget v1, p0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_bc

    .line 148
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    :pswitch_28
    add-int/2addr v0, v4

    return v0

    :pswitch_2a
    add-int/2addr v0, v3

    return v0

    :pswitch_2c
    add-int/2addr v0, v3

    return v0

    .line 141
    :pswitch_2e
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-byte v1, p1

    if-ne p1, v1, :cond_37

    move v2, v4

    goto :goto_3e

    :cond_37
    int-to-char v1, p1

    if-eq p1, v1, :cond_3d

    int-to-short v1, p1

    if-ne p1, v1, :cond_3e

    :cond_3d
    move v2, v3

    :cond_3e
    :goto_3e
    add-int/2addr v0, v2

    return v0

    .line 136
    :pswitch_40
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-byte v1, p1

    if-ne p1, v1, :cond_49

    move v2, v3

    goto :goto_4f

    :cond_49
    int-to-short v1, p1

    if-ne p1, v1, :cond_4d

    goto :goto_4f

    .line 138
    :cond_4d
    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :goto_4f
    add-int/2addr v0, v2

    return v0

    .line 132
    :pswitch_51
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-byte v1, p1

    if-ne p1, v1, :cond_5a

    move v2, v3

    goto :goto_60

    :cond_5a
    int-to-char v1, p1

    if-ne p1, v1, :cond_5e

    goto :goto_60

    .line 133
    :cond_5e
    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :goto_60
    add-int/2addr v0, v2

    return v0

    .line 128
    :pswitch_62
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-byte v1, p1

    if-ne p1, v1, :cond_6a

    goto :goto_6c

    .line 129
    :cond_6a
    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :goto_6c
    add-int/2addr v0, v2

    return v0

    .line 150
    :cond_6e
    invoke-virtual {p1}, Lvm2/LuaValue;->isnumber()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 151
    iget v1, p0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    packed-switch v1, :pswitch_data_ce

    .line 168
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 165
    :pswitch_7c
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v4

    double-to-long v6, v4

    long-to-double v6, v6

    cmpl-double p1, v4, v6

    if-eqz p1, :cond_8c

    double-to-float p1, v4

    float-to-double v6, p1

    cmpl-double p1, v4, v6

    if-nez p1, :cond_8d

    :cond_8c
    move v2, v3

    :cond_8d
    add-int/2addr v0, v2

    return v0

    .line 161
    :pswitch_8f
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v3

    double-to-float p1, v3

    float-to-double v5, p1

    cmpl-double p1, v3, v5

    if-nez p1, :cond_9a

    goto :goto_9c

    .line 162
    :cond_9a
    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :goto_9c
    add-int/2addr v0, v2

    return v0

    .line 157
    :pswitch_9e
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v3

    double-to-long v5, v3

    long-to-double v5, v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_a9

    goto :goto_ab

    .line 158
    :cond_a9
    sget v2, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :goto_ab
    add-int/2addr v0, v2

    return v0

    .line 155
    :pswitch_ad
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 154
    :pswitch_b0
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 153
    :pswitch_b3
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 152
    :pswitch_b6
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 171
    :cond_b9
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    return p1

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_62
        :pswitch_51
        :pswitch_40
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_9e
        :pswitch_8f
        :pswitch_7c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumericCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->TYPE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lvm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.ObjectCoercion (vm2.lib.jse.CoerceLuaToJava$ObjectCoercion)
.class final Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"

# interfaces
.implements Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectCoercion"
.end annotation


# instance fields
.field final targetType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public coerce(Lvm2/LuaValue;)Ljava/lang/Object;
    .registers 5

    .line 309
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    return-object p1

    .line 317
    :cond_15
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Lvm2/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1c
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 311
    :cond_21
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    int-to-double v0, p1

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    :goto_31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 313
    :cond_36
    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    if-eqz p1, :cond_3f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_42
    return-object v2
.end method

.method public score(Lvm2/LuaValue;)I
    .registers 4

    .line 293
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_36

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e

    .line 305
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 301
    :cond_1e
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 299
    :cond_2d
    iget-object p1, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 295
    :cond_36
    iget-object v0, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result p1

    if-eqz p1, :cond_41

    const-class p1, Ljava/lang/Integer;

    goto :goto_43

    :cond_41
    const-class p1, Ljava/lang/Double;

    :goto_43
    invoke-static {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 297
    :cond_48
    iget-object p1, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    .line 303
    :cond_51
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.lib.jse.CoerceLuaToJava.StringCoercion (vm2.lib.jse.CoerceLuaToJava$StringCoercion)
.class final Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;
.super Ljava/lang/Object;
.source "CoerceLuaToJava.java"

# interfaces
.implements Lvm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringCoercion"
.end annotation


# static fields
.field public static final TARGET_TYPE_BYTES:I = 0x1

.field public static final TARGET_TYPE_STRING:I


# instance fields
.field final targetType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    return-void
.end method


# virtual methods
.method public coerce(Lvm2/LuaValue;)Ljava/lang/Object;
    .registers 5

    .line 212
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_8
    iget v0, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez v0, :cond_11

    .line 215
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :cond_11
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    .line 217
    iget v0, p1, Lvm2/LuaString;->m_length:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 218
    invoke-virtual {p1, v2, v1, v2, v0}, Lvm2/LuaString;->copyInto(I[BII)V

    return-object v1
.end method

.method public score(Lvm2/LuaValue;)I
    .registers 5

    .line 200
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_14

    .line 208
    iget p1, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez p1, :cond_11

    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    :cond_11
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    return p1

    .line 202
    :cond_14
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaString;->isValidUtf8()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 203
    iget p1, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez p1, :cond_24

    return v0

    :cond_24
    return v1

    .line 204
    :cond_25
    iget p1, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-ne p1, v1, :cond_2a

    return v0

    :cond_2a
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    return p1

    .line 206
    :cond_2d
    sget p1, Lvm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez v1, :cond_11

    const-string v1, "String"

    goto :goto_13

    :cond_11
    const-string v1, "byte[]"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
