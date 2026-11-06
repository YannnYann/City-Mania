###### Class com.ironsource.Ad (com.ironsource.Ad)
.class public final Lcom/ironsource/Ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Bd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreloadAdUnitsFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreloadAdUnitsFactory.kt\ncom/ironsource/services/preload/PreloadAdUnitsFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1617#2,9:114\n1869#2:123\n1870#2:125\n1626#2:126\n1#3:124\n*S KotlinDebug\n*F\n+ 1 PreloadAdUnitsFactory.kt\ncom/ironsource/services/preload/PreloadAdUnitsFactory\n*L\n28#1:114,9\n28#1:123\n28#1:125\n28#1:126\n28#1:124\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/unity3d/mediation/LevelPlay$AdFormat;


# direct methods
.method public constructor <init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;)V
    .registers 3

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    return-void
.end method

.method private final a(Lcom/ironsource/g0;Lcom/ironsource/ab;)Lcom/ironsource/x0;
    .registers 7

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v1, Lcom/ironsource/Ad$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 47
    sget-object v0, Lcom/ironsource/ge;->A:Lcom/ironsource/ge$a;

    invoke-virtual {v0, p1, p2, v2}, Lcom/ironsource/ge$a;->a(Lcom/ironsource/g0;Lcom/ironsource/ab;Z)Lcom/ironsource/ge;

    move-result-object p1

    return-object p1

    :catch_18
    move-exception p1

    goto :goto_3a

    .line 48
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ad format for preload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_33
    sget-object v0, Lcom/ironsource/J9;->A:Lcom/ironsource/J9$a;

    invoke-virtual {v0, p1, p2, v2}, Lcom/ironsource/J9$a;->a(Lcom/ironsource/g0;Lcom/ironsource/ab;Z)Lcom/ironsource/J9;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_18

    return-object p1

    .line 56
    :goto_3a
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 57
    iget-object v0, p0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create AdUnitData for ad format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Lcom/ironsource/Kd$c;ILcom/ironsource/ab;)Lcom/ironsource/yd;
    .registers 23
    .annotation build Lcom/ironsource/xb;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/Kd$c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_11

    .line 3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "invalid adUnitId"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v10

    .line 8
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/Kd$c;->d()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_1f

    .line 10
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "invalid instances"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v10

    .line 15
    :cond_1f
    new-instance v1, Lcom/ironsource/g0;

    .line 16
    iget-object v3, v0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v3}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    .line 17
    sget-object v4, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    invoke-virtual {v4}, Lcom/ironsource/z7;->a()Ljava/util/UUID;

    move-result-object v4

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v18, v4

    move-object v4, v2

    move-object v2, v3

    move-object/from16 v3, v18

    .line 18
    invoke-direct/range {v1 .. v9}, Lcom/ironsource/g0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/ironsource/Tf;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v1

    move-object v2, v4

    move-object/from16 v1, p3

    .line 25
    invoke-direct {v0, v5, v1}, Lcom/ironsource/Ad;->a(Lcom/ironsource/g0;Lcom/ironsource/ab;)Lcom/ironsource/x0;

    move-result-object v14

    if-nez v14, :cond_4e

    .line 27
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "adunit data is null"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v10

    .line 31
    :cond_4e
    new-instance v1, Lcom/ironsource/p0;

    iget-object v3, v0, Lcom/ironsource/Ad;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v3}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    sget-object v4, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {v1, v3, v4}, Lcom/ironsource/p0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;)V

    .line 32
    new-instance v13, Lcom/ironsource/T0;

    invoke-direct {v13, v1, v14, v4}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/E0$b;)V

    .line 33
    invoke-virtual {v13}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    new-instance v3, Lcom/ironsource/C0;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v13

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/C0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/g0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/E5;->a(Lcom/ironsource/D0;)V

    .line 36
    new-instance v12, Lcom/ironsource/Ed;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/ironsource/Ed;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    new-instance v1, Lcom/ironsource/yd;

    move/from16 v4, p2

    move-object v3, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/yd;-><init>(Ljava/lang/String;Ljava/util/List;ILcom/ironsource/Fd;Lcom/ironsource/T0;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/List;ILcom/ironsource/ab;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/Kd$c;",
            ">;I",
            "Lcom/ironsource/ab;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/zd;",
            ">;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "levelPlayConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 69
    check-cast v1, Lcom/ironsource/Kd$c;

    .line 70
    invoke-direct {p0, v1, p2, p3}, Lcom/ironsource/Ad;->a(Lcom/ironsource/Kd$c;ILcom/ironsource/ab;)Lcom/ironsource/yd;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    return-object v0
.end method

###### Class com.ironsource.Ad.a (com.ironsource.Ad$a)
.class public final synthetic Lcom/ironsource/Ad$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay$AdFormat;->values()[Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/ironsource/Ad$a;->a:[I

    return-void
.end method
