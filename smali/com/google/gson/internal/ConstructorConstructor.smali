###### Class com.google.gson.internal.ConstructorConstructor (com.google.gson.internal.ConstructorConstructor)
.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field public final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final reflectionFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ReflectionAccessFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final useJdkUnsafe:Z


# direct methods
.method public static synthetic $r8$lambda$-4ig_VwX805Af97dyfeHkzXDZD8()Ljava/util/Map;
    .registers 1

    .line 391
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$0--pG1fdCxWNlpGZdpRUdWz3_MM()Ljava/util/Collection;
    .registers 1

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$0IvMT2hNDEKC96obEsFXrkwEu_w()Ljava/util/Map;
    .registers 1

    .line 383
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$9R-9Z0wyKZpuyVH3QjDCIVlD_60(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 157
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$G62_J7kViN-SmjGxO1pqK8pbpnY(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 407
    :try_start_0
    sget-object v0, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    invoke-virtual {v0, p0}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception v0

    .line 410
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic $r8$lambda$GYNrukL5Q1_-oQXHu0WSGJdAl_8(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    .line 205
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const-string v1, "Invalid EnumMap type: "

    if-eqz v0, :cond_35

    .line 206
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 207
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1c

    .line 209
    new-instance p0, Ljava/util/EnumMap;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p0

    .line 212
    :cond_1c
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_35
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$GZnxeCVeL-1JhJOoChlLLnf0w44(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-interface {p0, p1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H-PvxofGSRFp92SmDI3An_k9vYQ()Ljava/util/Map;
    .registers 1

    .line 395
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$JCG-FMwzpaQqjpdbQbG1BKEHsLs(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-interface {p0, p1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KkbLW1gmo_lu5N8OEzL-DAgv8dc()Ljava/util/Map;
    .registers 1

    .line 387
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$SjD6xS-YkreVGUnJqthxLuNh2RE(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 275
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$bbT35FFKvvcYnz09_xOyE8g-gww()Ljava/util/Collection;
    .registers 1

    .line 345
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$eDA-bImyjL33S0bwRqMq_NHwgZQ(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    .line 187
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const-string v1, "Invalid EnumSet type: "

    if-eqz v0, :cond_34

    .line 188
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 189
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1b

    .line 191
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1b
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_34
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$ehI23lT1x3Zzmna2iW-1opXd7a4(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 254
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$gtzdjb5MGVWzYBupOdOqGHw0ta4(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 438
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$kEdEsZbkV0Up9809dq8S2LO4FEI()Ljava/util/Map;
    .registers 1

    .line 381
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$mS9QWEgt74nhELTiBGR1qWLfo_U(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 147
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$rJkUWb5cZZPoZ_Qpsz6xNa5nAwc()Ljava/util/Collection;
    .registers 1

    .line 349
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$tMrwXvKBa7wEzN6bgJchqsDNnqc(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .registers 6

    .line 283
    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    const/4 v2, 0x0

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_b} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_b} :catch_10

    return-object p0

    :catch_c
    move-exception v2

    goto :goto_16

    :catch_e
    move-exception v2

    goto :goto_36

    :catch_10
    move-exception p0

    .line 303
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 297
    :goto_16
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 289
    :goto_36
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static synthetic $r8$lambda$vAg_ooHOEQVMzC0v47C8x5QJH_Q()Ljava/util/Collection;
    .registers 1

    .line 353
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wOH1c45BceHOZ4h6nzslsJ-p46Q(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 171
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;Z",
            "Ljava/util/List<",
            "Lcom/google/gson/ReflectionAccessFilter;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 55
    iput-boolean p2, p0, Lcom/google/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    .line 56
    iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    return-void
.end method

.method public static checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_20
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "r8-abstract-class"

    .line 86
    invoke-static {p0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasStringKeyType(Ljava/lang/reflect/Type;)Z
    .registers 4

    .line 362
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 366
    :cond_6
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 367
    array-length v0, p0

    const/4 v2, 0x0

    if-nez v0, :cond_11

    return v2

    .line 370
    :cond_11
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/gson/internal/GsonTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1c

    return v1

    :cond_1c
    return v2
.end method

.method public static newCollectionConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 340
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 341
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda5;-><init>()V

    return-object p0

    .line 344
    :cond_e
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 345
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda6;-><init>()V

    return-object p0

    .line 348
    :cond_1c
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 349
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda7;-><init>()V

    return-object p0

    .line 352
    :cond_2a
    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 353
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;-><init>()V

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newDefaultConstructor(Ljava/lang/Class;Lcom/google/gson/ReflectionAccessFilter$FilterResult;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;",
            "Lcom/google/gson/ReflectionAccessFilter$FilterResult;",
            ")",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    const/4 v0, 0x0

    .line 232
    :try_start_d
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_13} :catch_5c

    .line 237
    sget-object v2, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    if-eq p1, v2, :cond_48

    .line 239
    invoke-static {v0, v1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    if-ne p1, v1, :cond_48

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_48

    .line 246
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to invoke no-args constructor of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_48
    :goto_48
    if-ne p1, v2, :cond_56

    .line 261
    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->tryMakeAccessible(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 271
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 280
    :cond_56
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda20;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda20;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0

    :catch_5c
    return-object v1
.end method

.method public static newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 320
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 322
    invoke-static {p1}, Lcom/google/gson/internal/ConstructorConstructor;->newCollectionConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object p0

    return-object p0

    .line 326
    :cond_d
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 328
    invoke-static {p0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newMapConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newMapConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 380
    const-class v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->hasStringKeyType(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 381
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda13;-><init>()V

    return-object p0

    .line 382
    :cond_14
    const-class p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 383
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda14;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda14;-><init>()V

    return-object p0

    .line 386
    :cond_22
    const-class p0, Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 387
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda15;-><init>()V

    return-object p0

    .line 390
    :cond_30
    const-class p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 391
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda16;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda16;-><init>()V

    return-object p0

    .line 394
    :cond_3e
    const-class p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 395
    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda17;

    invoke-direct {p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda17;-><init>()V

    return-object p0

    :cond_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newSpecialCollectionConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 185
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda11;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1

    .line 203
    :cond_e
    const-class v0, Ljava/util/EnumMap;

    if-ne p1, v0, :cond_18

    .line 204
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda12;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get(Lcom/google/gson/reflect/TypeToken;Z)Lcom/google/gson/internal/ObjectConstructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;Z)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 110
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/InstanceCreator;

    if-eqz v1, :cond_18

    .line 112
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;-><init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 117
    :cond_18
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/InstanceCreator;

    if-eqz v1, :cond_28

    .line 119
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;-><init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 125
    :cond_28
    invoke-static {v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newSpecialCollectionConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    .line 130
    :cond_2f
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    .line 131
    invoke-static {v1, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    move-result-object v1

    .line 132
    invoke-static {p1, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;Lcom/google/gson/ReflectionAccessFilter$FilterResult;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v2

    if-eqz v2, :cond_3c

    return-object v2

    .line 137
    :cond_3c
    invoke-static {v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    if-eqz v0, :cond_43

    return-object v0

    .line 144
    :cond_43
    invoke-static {p1}, Lcom/google/gson/internal/ConstructorConstructor;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 146
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 151
    :cond_4f
    const-string v0, "Unable to create instance of "

    if-nez p2, :cond_6d

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; Register an InstanceCreator or a TypeAdapter for this type."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance p2, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 163
    :cond_6d
    sget-object p2, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    if-eq v1, p2, :cond_8b

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 176
    :cond_8b
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object p1

    return-object p1
.end method

.method public final newUnsafeAllocator(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 403
    iget-boolean v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    if-eqz v0, :cond_a

    .line 404
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 419
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_38

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_38
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda0 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Lcom/google/gson/InstanceCreator;

.field public final synthetic f$1:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;->f$0:Lcom/google/gson/InstanceCreator;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;->f$0:Lcom/google/gson/InstanceCreator;

    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$GZnxeCVeL-1JhJOoChlLLnf0w44(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda1 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Lcom/google/gson/InstanceCreator;

.field public final synthetic f$1:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;->f$0:Lcom/google/gson/InstanceCreator;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;->f$0:Lcom/google/gson/InstanceCreator;

    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$JCG-FMwzpaQqjpdbQbG1BKEHsLs(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda10 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$gtzdjb5MGVWzYBupOdOqGHw0ta4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda11 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda11;->f$0:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda11;->f$0:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$eDA-bImyjL33S0bwRqMq_NHwgZQ(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda12 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda12;->f$0:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda12;->f$0:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$GYNrukL5Q1_-oQXHu0WSGJdAl_8(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda13 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$kEdEsZbkV0Up9809dq8S2LO4FEI()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda14 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$0IvMT2hNDEKC96obEsFXrkwEu_w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda15 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$KkbLW1gmo_lu5N8OEzL-DAgv8dc()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda16 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$-4ig_VwX805Af97dyfeHkzXDZD8()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda17 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$H-PvxofGSRFp92SmDI3An_k9vYQ()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda18 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda18;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda18;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$ehI23lT1x3Zzmna2iW-1opXd7a4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda19 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$SjD6xS-YkreVGUnJqthxLuNh2RE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda2 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$mS9QWEgt74nhELTiBGR1qWLfo_U(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda20 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Constructor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda20;->f$0:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda20;->f$0:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$tMrwXvKBa7wEzN6bgJchqsDNnqc(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda3 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$9R-9Z0wyKZpuyVH3QjDCIVlD_60(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda4 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$wOH1c45BceHOZ4h6nzslsJ-p46Q(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda5 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$0--pG1fdCxWNlpGZdpRUdWz3_MM()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda6 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$bbT35FFKvvcYnz09_xOyE8g-gww()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda7 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$rJkUWb5cZZPoZ_Qpsz6xNa5nAwc()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda8 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$vAg_ooHOEQVMzC0v47C8x5QJH_Q()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda9 (com.google.gson.internal.ConstructorConstructor$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/gson/internal/ConstructorConstructor;->$r8$lambda$G62_J7kViN-SmjGxO1pqK8pbpnY(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
