###### Class com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource (com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;
.super Ljava/lang/Object;
.source "AndroidAdQualityVersionDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/AdQualityVersionDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAdQualityVersionDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAdQualityVersionDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# instance fields
.field private final cachedVersion$delegate:Lkotlin/Lazy;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;


# direct methods
.method public static synthetic $r8$lambda$02iUUhi2T8ysqjlXgJJGtnNATnU(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$1(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gH6kzcinAENbj3_NTMJA2s2RTz8(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$2(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vN61vRs1MDkHNkmp8-AsMaphOnw(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w18M6l4ARX9bO4fMkoVsPfEPTzE(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion_delegate$lambda$4$lambda$3(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/log/Logger;)V
    .registers 3

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 10
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final cachedVersion_delegate$lambda$4(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 12
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 13
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_b} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b} :catch_13
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    if-nez p0, :cond_e

    return-object v1

    :cond_e
    return-object v0

    :catchall_f
    move-exception v1

    goto :goto_18

    :catch_11
    move-exception v1

    goto :goto_20

    :catch_13
    move-exception v1

    goto :goto_2b

    :catch_15
    move-exception v1

    goto :goto_36

    :cond_17
    return-object v0

    .line 24
    :goto_18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Failed to get Ad Quality version"

    invoke-interface {p0, v2, v1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 21
    :goto_20
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;-><init>(Ljava/lang/NoSuchMethodError;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    goto :goto_40

    .line 18
    :goto_2b
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ClassNotFoundException;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    goto :goto_40

    .line 15
    :goto_36
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;-><init>(Ljava/lang/NoClassDefFoundError;)V

    invoke-interface {p0, v2}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    :goto_40
    return-object v0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$1(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;
    .registers 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality SDK not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$2(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;
    .registers 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality SDK not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final cachedVersion_delegate$lambda$4$lambda$3(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Quality SDK not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCachedVersion()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->cachedVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->getCachedVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/NoClassDefFoundError;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/NoClassDefFoundError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;->f$0:Ljava/lang/NoClassDefFoundError;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0;->f$0:Ljava/lang/NoClassDefFoundError;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->$r8$lambda$02iUUhi2T8ysqjlXgJJGtnNATnU(Ljava/lang/NoClassDefFoundError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1 (com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassNotFoundException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassNotFoundException;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ClassNotFoundException;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ClassNotFoundException;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->$r8$lambda$gH6kzcinAENbj3_NTMJA2s2RTz8(Ljava/lang/ClassNotFoundException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2 (com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/NoSuchMethodError;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/NoSuchMethodError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;->f$0:Ljava/lang/NoSuchMethodError;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2;->f$0:Ljava/lang/NoSuchMethodError;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->$r8$lambda$w18M6l4ARX9bO4fMkoVsPfEPTzE(Ljava/lang/NoSuchMethodError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3 (com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;->$r8$lambda$vN61vRs1MDkHNkmp8-AsMaphOnw(Lcom/unity3d/ads/core/data/datasource/AndroidAdQualityVersionDataSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
