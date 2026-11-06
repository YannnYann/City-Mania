###### Class com.ironsource.C3460a3 (com.ironsource.a3)
.class public final Lcom/ironsource/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/a3$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/a3$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/a3$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$R1UQAkDDl2a3p4hGf6NoHCgz1WQ(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/a3;->a(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "bannerConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/ironsource/a3$a;

    invoke-direct {v0, p1}, Lcom/ironsource/a3$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/a3;->a:Lcom/ironsource/a3$a;

    .line 45
    new-instance v0, Lcom/ironsource/Y0;

    invoke-direct {v0, p1}, Lcom/ironsource/Y0;-><init>(Lorg/json/JSONObject;)V

    new-instance p1, Lcom/ironsource/a3$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/ironsource/a3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ironsource/Y0;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/a3;->b:Ljava/util/Map;

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/a3$a;

    invoke-direct {v0, p0}, Lcom/ironsource/a3$a;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/a3$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a3;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/ironsource/a3$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/a3;->a:Lcom/ironsource/a3$a;

    return-object v0
.end method

###### Class com.ironsource.C3460a3.a (com.ironsource.a3$a)
.class public final Lcom/ironsource/a3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerConfigurations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerConfigurations.kt\ncom/unity3d/sdk/internal/init/response/configurations/BannerConfigurations$BannerFeatures\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:I

.field private final c:Z

.field private final d:J

.field private final e:F

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "bannerRefreshConfig"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    move-object v1, p1

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    if-eqz v1, :cond_1a

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_1a
    iput-object v2, p0, Lcom/ironsource/a3$a;->a:Lorg/json/JSONObject;

    const/16 v0, 0x61a8

    if-eqz v2, :cond_26

    .line 8
    const-string v1, "refreshInterval"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_26
    iput v0, p0, Lcom/ironsource/a3$a;->b:I

    const/4 v1, 0x1

    if-eqz v2, :cond_31

    .line 13
    const-string v3, "enabled"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_31
    iput-boolean v1, p0, Lcom/ironsource/a3$a;->c:Z

    if-eqz v2, :cond_48

    .line 18
    const-string v1, "visibilityCheckerInterval"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 19
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 21
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_49

    :cond_48
    int-to-long v0, v0

    .line 22
    :goto_49
    iput-wide v0, p0, Lcom/ironsource/a3$a;->d:J

    .line 34
    const-string v0, "maxScreenHeightPercentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_5f

    :cond_5c
    const v0, 0x3e19999a    # 0.15f

    .line 35
    :goto_5f
    iput v0, p0, Lcom/ironsource/a3$a;->e:F

    .line 42
    const-string v0, "adaptiveFallbackSizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/pa;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_7e

    .line 44
    :cond_72
    const-string p1, "BANNER"

    const-string v0, "LEADERBOARD"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 45
    :goto_7e
    const-string v0, "let(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/a3$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a3$a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/a3$a;->e:F

    return v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/a3$a;->b:I

    return v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/a3$a;->d:J

    return-wide v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/a3$a;->c:Z

    return v0
.end method

###### Class com.ironsource.a3$$ExternalSyntheticLambda0 (com.ironsource.a3$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/a3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ironsource/a3;->$r8$lambda$R1UQAkDDl2a3p4hGf6NoHCgz1WQ(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;

    move-result-object p1

    return-object p1
.end method
