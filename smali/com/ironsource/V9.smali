###### Class com.ironsource.V9 (com.ironsource.V9)
.class public final Lcom/ironsource/V9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/V9;

.field private static final b:Lcom/ironsource/r9;


# direct methods
.method public static synthetic $r8$lambda$65p6yj3EckA485JnXiC7tPtjMQU(Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/V9;->a(Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PIGR_ILTxs1YID5yTRVkreikra8(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/V9;->a(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dX9QGVisjfoKG_h8Ca1vq18TP-I(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/V9;->a(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/V9;

    invoke-direct {v0}, Lcom/ironsource/V9;-><init>()V

    sput-object v0, Lcom/ironsource/V9;->a:Lcom/ironsource/V9;

    .line 1
    new-instance v0, Lcom/ironsource/r9;

    invoke-direct {v0}, Lcom/ironsource/r9;-><init>()V

    sput-object v0, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 10

    .line 29
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->n()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p2}, Lcom/ironsource/Ue;->g()Lcom/ironsource/f9;

    move-result-object v1

    const-string v2, "getInitialConfiguration(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v2

    const-string v3, "IronSource"

    invoke-virtual {v2, v3}, Lcom/ironsource/Nd;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    const-string v3, "getProviderSettings(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v3, Lcom/ironsource/W$a;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "getInterstitialSettings(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v4}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v4

    invoke-interface {v4}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/ironsource/W$a;-><init>(Lorg/json/JSONObject;Lcom/ironsource/D7;)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/ironsource/f9;->a(Lcom/ironsource/W;)V

    .line 39
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/f9;->a(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/ironsource/f9;->b(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/ironsource/Y;

    new-instance v2, Lcom/ironsource/wc;

    invoke-direct {v2}, Lcom/ironsource/wc;-><init>()V

    invoke-direct {v0, v2}, Lcom/ironsource/Y;-><init>(Lcom/ironsource/vc;)V

    .line 45
    new-instance v2, Lcom/ironsource/V9$a;

    invoke-direct {v2}, Lcom/ironsource/V9$a;-><init>()V

    .line 46
    invoke-interface {v0, p1, v1, v2}, Lcom/ironsource/X;->a(Landroid/content/Context;Lcom/ironsource/f9;Lcom/unity3d/ironsourceads/InitListener;)V

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/ironsource/V9;->a(Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method private final a(Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 7

    .line 55
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 56
    invoke-virtual {v0}, Lcom/ironsource/K1;->e()Lcom/ironsource/T1;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 57
    invoke-virtual {v0}, Lcom/ironsource/T1;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 59
    :goto_16
    new-instance v1, Lcom/ironsource/Qb;

    invoke-direct {v1}, Lcom/ironsource/Qb;-><init>()V

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/ironsource/Qb;->a(Ljava/util/Map;Z)V

    .line 61
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->n()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    invoke-virtual {v1}, Lcom/ironsource/pc$a;->a()Lcom/ironsource/pc;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/ironsource/Ue;->l()Lcom/ironsource/Nd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/pc;->a(Lcom/ironsource/Nd;)V

    .line 64
    invoke-virtual {p1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/pc;->a(Lcom/ironsource/S3;)V

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/pc;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/ironsource/pc;->g()V

    .line 68
    invoke-static {p2}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v0

    .line 69
    sget-object p2, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    invoke-virtual {p1}, Lcom/ironsource/Ue;->i()Lcom/ironsource/Ue$a;

    move-result-object p1

    const-string v2, "getOrigin(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/ironsource/r9;->a(JLcom/ironsource/Ue$a;)V

    .line 70
    new-instance p1, Lcom/ironsource/V9$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/ironsource/V9$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/r9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/V9;Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/V9;->a(Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/V9;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/l5;Lcom/ironsource/se;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/V9;->a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/l5;Lcom/ironsource/se;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V
    .registers 6

    .line 77
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitListener.onInitFailed() error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_21

    .line 78
    sget-object p0, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    invoke-virtual {p0, p2}, Lcom/ironsource/r9;->a(Lcom/ironsource/se;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/InitListener;->onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_21
    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 3

    .line 71
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "InitListener.onInitSuccess()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    .line 72
    invoke-interface {p0}, Lcom/unity3d/ironsourceads/InitListener;->onInitSuccess()V

    :cond_c
    return-void
.end method

.method private final a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/l5;Lcom/ironsource/se;)V
    .registers 7

    .line 73
    invoke-static {p2}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v0

    .line 74
    sget-object p2, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    invoke-virtual {p2, p3}, Lcom/ironsource/r9;->b(Lcom/ironsource/se;)Lcom/ironsource/se;

    move-result-object v2

    .line 75
    invoke-virtual {p2, v2, v0, v1}, Lcom/ironsource/r9;->a(Lcom/ironsource/se;J)V

    .line 76
    new-instance v0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1, v2}, Lcom/ironsource/V9$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/r9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 10

    .line 14
    new-instance v0, Lcom/ironsource/l5;

    invoke-direct {v0}, Lcom/ironsource/l5;-><init>()V

    .line 16
    new-instance v1, Lcom/ironsource/ze;

    .line 17
    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/InitRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 19
    sget-object v3, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/InitRequest;->getLegacyAdFormats()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ironsource/r9;->a(Ljava/util/List;)[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/ze;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    sget-object p0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    .line 27
    new-instance v2, Lcom/ironsource/V9$b;

    invoke-direct {v2, p1, v0, p2}, Lcom/ironsource/V9$b;-><init>(Landroid/content/Context;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V

    .line 28
    invoke-virtual {p0, p1, v1, v2}, Lcom/ironsource/Ge;->c(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;)V

    return-void
.end method

.method private final a(Z)V
    .registers 4

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ext1"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance p1, Lcom/ironsource/C5;

    sget-object v1, Lcom/ironsource/D5;->f:Lcom/ironsource/D5;

    invoke-direct {p1, v1, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 82
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/unity3d/ironsourceads/InitRequest;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 5
    invoke-virtual {p2}, Lcom/unity3d/ironsourceads/InitRequest;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lcom/unity3d/ironsourceads/InitRequest;->getLegacyAdFormats()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IronSourceAds.init() appkey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legacyAdFormats: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/ironsource/V9;->b:Lcom/ironsource/r9;

    new-instance v1, Lcom/ironsource/V9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1, p3}, Lcom/ironsource/V9$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/r9;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/V9;->a(Z)V

    .line 2
    new-instance v0, Lcom/ironsource/uc;

    invoke-direct {v0}, Lcom/ironsource/uc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ironsource/uc;->a(Z)V

    return-void
.end method

###### Class com.ironsource.V9.a (com.ironsource.V9$a)
.class public final Lcom/ironsource/V9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ironsourceads/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/V9;->a(Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.ironsource.V9.b (com.ironsource.V9$b)
.class public final Lcom/ironsource/V9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/xe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/V9;->a(Landroid/content/Context;Lcom/unity3d/ironsourceads/InitRequest;Lcom/unity3d/ironsourceads/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/l5;

.field final synthetic c:Lcom/unity3d/ironsourceads/InitListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/V9$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    iput-object p3, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/qe;)V
    .registers 6

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/V9;->a:Lcom/ironsource/V9;

    .line 2
    iget-object v1, p0, Lcom/ironsource/V9$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    iget-object v3, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    .line 3
    invoke-static {v0, v1, p1, v2, v3}, Lcom/ironsource/V9;->a(Lcom/ironsource/V9;Landroid/content/Context;Lcom/ironsource/Ue;Lcom/ironsource/l5;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public a(Lcom/ironsource/se;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/V9;->a:Lcom/ironsource/V9;

    iget-object v1, p0, Lcom/ironsource/V9$b;->c:Lcom/unity3d/ironsourceads/InitListener;

    iget-object v2, p0, Lcom/ironsource/V9$b;->b:Lcom/ironsource/l5;

    invoke-static {v0, v1, v2, p1}, Lcom/ironsource/V9;->a(Lcom/ironsource/V9;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/l5;Lcom/ironsource/se;)V

    return-void
.end method

###### Class com.ironsource.V9$$ExternalSyntheticLambda0 (com.ironsource.V9$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/V9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/se;

.field public final synthetic f$1:Lcom/unity3d/ironsourceads/InitListener;

.field public final synthetic f$2:Lcom/ironsource/se;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/se;

    iput-object p2, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/ironsourceads/InitListener;

    iput-object p3, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/se;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/se;

    iget-object v1, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/ironsourceads/InitListener;

    iget-object v2, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/se;

    invoke-static {v0, v1, v2}, Lcom/ironsource/V9;->$r8$lambda$dX9QGVisjfoKG_h8Ca1vq18TP-I(Lcom/ironsource/se;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/se;)V

    return-void
.end method

###### Class com.ironsource.V9$$ExternalSyntheticLambda1 (com.ironsource.V9$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/V9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/InitRequest;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/unity3d/ironsourceads/InitListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ironsourceads/InitRequest;

    iput-object p2, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$2:Lcom/unity3d/ironsourceads/InitListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ironsourceads/InitRequest;

    iget-object v1, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda1;->f$2:Lcom/unity3d/ironsourceads/InitListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/V9;->$r8$lambda$PIGR_ILTxs1YID5yTRVkreikra8(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

###### Class com.ironsource.V9$$ExternalSyntheticLambda2 (com.ironsource.V9$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/V9$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/InitListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ironsourceads/InitListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/V9$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ironsourceads/InitListener;

    invoke-static {v0}, Lcom/ironsource/V9;->$r8$lambda$65p6yj3EckA485JnXiC7tPtjMQU(Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method
