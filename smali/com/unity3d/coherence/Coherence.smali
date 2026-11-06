###### Class com.unity3d.coherence.Coherence (com.unity3d.coherence.Coherence)
.class final Lcom/unity3d/coherence/Coherence;
.super Ljava/lang/Object;
.source "Coherence.java"


# static fields
.field public static final SETTINGS_GETTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_ROOTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blobLock:Ljava/lang/Object;

.field public final context:Landroid/content/Context;

.field public final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 447
    const-string v1, "android.provider.Settings$Global"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v1, "android.provider.Settings$Secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v1, "android.provider.Settings$System"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_ROOTS:Ljava/util/Set;

    .line 455
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 456
    const-string v1, "getFloat"

    const-string v2, "getLong"

    const-string v3, "getInt"

    const-string v4, "getString"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 457
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/coherence/Coherence;->SETTINGS_GETTERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/coherence/Coherence;->blobLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static extractStringArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x28

    .line 1064
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 1065
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_77

    if-eq v1, v3, :cond_77

    if-ge v1, v0, :cond_15

    goto :goto_77

    :cond_15
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 1067
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1068
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_77

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1069
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_77

    .line 1070
    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1072
    :goto_48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 1073
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_6d

    add-int/lit8 v5, v1, 0x1

    .line 1074
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6d

    .line 1075
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_68

    if-ne v6, v4, :cond_6d

    .line 1077
    :cond_68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_70

    .line 1082
    :cond_6d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_70
    add-int/2addr v1, v3

    goto :goto_48

    .line 1084
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_77
    :goto_77
    return-object v2
.end method

.method public static join(Ljava/util/List;II)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_6
    if-ge v1, p2, :cond_1b

    if-le v1, p1, :cond_f

    const/16 v2, 0x2e

    .line 1090
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    :cond_f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1093
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveFieldOrZeroArgMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 542
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_c
    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move-object p0, v2

    .line 546
    :cond_10
    :try_start_10
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 547
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_18} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    return-object v2

    :catch_1a
    const/4 v0, 0x0

    .line 554
    :try_start_1b
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 555
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    return-object v2
.end method

.method public static splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 610
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_6c

    .line 611
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v4, :cond_20

    .line 613
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_69

    :cond_20
    const/16 v8, 0x22

    const/4 v9, 0x1

    if-eqz v5, :cond_32

    const/16 v10, 0x5c

    if-ne v7, v10, :cond_2b

    move v4, v9

    goto :goto_2e

    :cond_2b
    if-ne v7, v8, :cond_2e

    move v5, v2

    .line 623
    :cond_2e
    :goto_2e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_32
    if-ne v7, v8, :cond_39

    .line 628
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v9

    goto :goto_69

    :cond_39
    const/16 v8, 0x28

    if-ne v7, v8, :cond_43

    add-int/lit8 v6, v6, 0x1

    .line 633
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_43
    const/16 v8, 0x29

    if-ne v7, v8, :cond_4f

    if-lez v6, :cond_4b

    add-int/lit8 v6, v6, -0x1

    .line 638
    :cond_4b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_4f
    if-ne v7, p0, :cond_66

    if-nez v6, :cond_66

    if-nez p2, :cond_5b

    .line 642
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_62

    .line 643
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_69

    .line 648
    :cond_66
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_6c
    if-nez p2, :cond_76

    .line 650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_75

    goto :goto_76

    :cond_75
    return-object v0

    :cond_76
    :goto_76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static tokenize(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2e

    const/4 v1, 0x0

    .line 594
    invoke-static {v0, p0, v1}, Lcom/unity3d/coherence/Coherence;->splitOnTopLevel(CLjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispatchSegment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/16 v0, 0x28

    .line 531
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 533
    invoke-static {p1, p2}, Lcom/unity3d/coherence/Coherence;->resolveFieldOrZeroArgMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 v1, 0x0

    .line 535
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {p2}, Lcom/unity3d/coherence/Coherence;->extractStringArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 538
    :cond_1b
    invoke-virtual {p0, p1, v0, p2}, Lcom/unity3d/coherence/Coherence;->resolveMethodWithStringArg(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public generateUuid()Ljava/lang/String;
    .registers 2

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kvGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public kvSet(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/unity3d/coherence/Coherence;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public reflectBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 90
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 91
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public reflectInt(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 84
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 85
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_13

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public reflectString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 79
    invoke-virtual {p0, p1}, Lcom/unity3d/coherence/Coherence;->resolvePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final resolveMethodWithStringArg(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .line 564
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_8

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_c
    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move-object p1, v2

    .line 569
    :cond_10
    const-class v0, Ljava/lang/String;

    if-nez p1, :cond_42

    sget-object v3, Lcom/unity3d/coherence/Coherence;->SETTINGS_ROOTS:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    sget-object v3, Lcom/unity3d/coherence/Coherence;->SETTINGS_GETTERS:Ljava/util/Set;

    .line 570
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 572
    :try_start_28
    const-class p1, Landroid/content/ContentResolver;

    filled-new-array {p1, v0}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 573
    iget-object p2, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_40} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_40} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    return-object v2

    .line 582
    :cond_42
    :try_start_42
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 583
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_52} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_42 .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    return-object v2
.end method

.method public resolvePath(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_90

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_90

    .line 478
    :cond_b
    invoke-static {p1}, Lcom/unity3d/coherence/Coherence;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 479
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1f

    goto/16 :goto_90

    :cond_1f
    const/4 v1, 0x0

    .line 484
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    const-string v3, "context"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    .line 486
    iget-object v1, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    goto :goto_79

    .line 488
    :cond_32
    const-string v3, "stickyIntent("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 489
    invoke-static {v2}, Lcom/unity3d/coherence/Coherence;->extractStringArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    return-object v0

    .line 492
    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/unity3d/coherence/Coherence;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4e

    if-nez v1, :cond_79

    :catchall_4e
    return-object v0

    .line 507
    :cond_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_53
    const/4 v3, -0x1

    if-lt v2, v4, :cond_74

    add-int/lit8 v5, v2, -0x1

    .line 508
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_67

    goto :goto_71

    .line 509
    :cond_67
    invoke-static {p1, v1, v2}, Lcom/unity3d/coherence/Coherence;->join(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    .line 511
    :try_start_6b
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6b .. :try_end_6f} :catch_71

    move v4, v2

    goto :goto_76

    :catch_71
    :goto_71
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    :cond_74
    move-object v1, v0

    move v4, v3

    :goto_76
    if-nez v1, :cond_79

    return-object v0

    .line 523
    :cond_79
    :goto_79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8f

    if-nez v1, :cond_82

    return-object v0

    .line 525
    :cond_82
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/coherence/Coherence;->dispatchSegment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_8f
    return-object v1

    :cond_90
    :goto_90
    return-object v0
.end method
