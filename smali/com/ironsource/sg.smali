###### Class com.ironsource.C3843sg (com.ironsource.sg)
.class public final Lcom/ironsource/sg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qg;


# static fields
.field public static final a:Lcom/ironsource/sg;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$FOvl8CAPEnh-bSxcIvsjoHLsQKs()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/sg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/sg;

    invoke-direct {v0}, Lcom/ironsource/sg;-><init>()V

    sput-object v0, Lcom/ironsource/sg;->a:Lcom/ironsource/sg;

    .line 1
    new-instance v0, Lcom/ironsource/sg$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ironsource/sg$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sg;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Lcom/unity3d/ads/UnityAds;

    sget-object v2, Lcom/unity3d/ads/UnityAds;->INSTANCE:Lcom/unity3d/ads/UnityAds;

    .line 2
    const-string v2, "getVersion"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    check-cast v1, Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    return-object v1

    :catchall_16
    move-exception v1

    goto :goto_19

    :cond_18
    return-object v0

    .line 5
    :goto_19
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 6
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/sg;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.sg$$ExternalSyntheticLambda0 (com.ironsource.sg$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/sg$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/sg;->$r8$lambda$FOvl8CAPEnh-bSxcIvsjoHLsQKs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
