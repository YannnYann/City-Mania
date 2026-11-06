###### Class com.ironsource.C3896vd (com.ironsource.vd)
.class public final Lcom/ironsource/vd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnrDetectionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnrDetectionService.kt\ncom/ironsource/services/anr/PlatformAnrExitInfoSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n774#2:270\n865#2,2:271\n1563#2:273\n1634#2,3:274\n1#3:277\n*S KotlinDebug\n*F\n+ 1 AnrDetectionService.kt\ncom/ironsource/services/anr/PlatformAnrExitInfoSource\n*L\n219#1:270\n219#1:271,2\n220#1:273\n220#1:274,3\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/vd;

.field private static final b:I

.field private static final c:I


# direct methods
.method public static synthetic $r8$lambda$ghKcN1FDWuHPobkzW3kVXdWAqdk(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/vd;->c(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/vd;

    invoke-direct {v0}, Lcom/ironsource/vd;-><init>()V

    sput-object v0, Lcom/ironsource/vd;->a:Lcom/ironsource/vd;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/A1;",
            ">;"
        }
    .end annotation

    .line 4
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/ActivityManager;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/ActivityManager;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_15

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    const-string v0, "getHistoricalProcessExitReasons(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    .line 113
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :catchall_45
    move-exception p1

    goto :goto_72

    .line 115
    :cond_47
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/ironsource/vd;->a:Lcom/ironsource/vd;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lcom/ironsource/vd;->b(Landroid/app/ApplicationExitInfo;)Lcom/ironsource/A1;

    move-result-object v1

    .line 173
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catchall {:try_start_15 .. :try_end_70} :catchall_45

    goto :goto_56

    :cond_71
    return-object p1

    .line 174
    :goto_72
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anr reporter: failed to read exit reasons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final a(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;
    .registers 6

    const/4 v0, 0x0

    .line 176
    :try_start_1
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_13

    sget-object v1, Lcom/ironsource/E1;->a:Lcom/ironsource/E1;

    invoke-virtual {v1, p1}, Lcom/ironsource/E1;->a(Ljava/io/InputStream;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_13

    :cond_10
    return-object p1

    :catchall_11
    move-exception p1

    goto :goto_16

    :cond_13
    :goto_13
    new-array p1, v0, [Ljava/lang/StackTraceElement;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_11

    return-object p1

    .line 178
    :goto_16
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr reporter: failed to read trace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 179
    new-array p1, v0, [Ljava/lang/StackTraceElement;

    return-object p1
.end method

.method private final b(Landroid/app/ApplicationExitInfo;)Lcom/ironsource/A1;
    .registers 11

    .line 1
    new-instance v0, Lcom/ironsource/A1;

    .line 2
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    .line 4
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    const-string v4, ""

    .line 5
    :cond_12
    invoke-static {p1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v5

    .line 6
    invoke-static {p1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 7
    :goto_20
    invoke-static {p1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getProcessName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v8, Lcom/ironsource/vd$$ExternalSyntheticLambda4;

    invoke-direct {v8, p1}, Lcom/ironsource/vd$$ExternalSyntheticLambda4;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/ironsource/A1;-><init>(JILjava/lang/String;IZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final c(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/vd;->a:Lcom/ironsource/vd;

    invoke-direct {v0, p0}, Lcom/ironsource/vd;->a(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/A1;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_b
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1a
    invoke-direct {p0, v0}, Lcom/ironsource/vd;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.vd$$ExternalSyntheticLambda4 (com.ironsource.vd$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/ironsource/vd$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/app/ApplicationExitInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ApplicationExitInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/vd$$ExternalSyntheticLambda4;->f$0:Landroid/app/ApplicationExitInfo;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/vd$$ExternalSyntheticLambda4;->f$0:Landroid/app/ApplicationExitInfo;

    invoke-static {v0}, Lcom/ironsource/vd;->$r8$lambda$ghKcN1FDWuHPobkzW3kVXdWAqdk(Landroid/app/ApplicationExitInfo;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method
