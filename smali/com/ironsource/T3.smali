###### Class com.ironsource.T3 (com.ironsource.T3)
.class public final Lcom/ironsource/T3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/t;

.field private final b:Lcom/ironsource/t;

.field private final c:Lcom/ironsource/a3;

.field private final d:Lcom/ironsource/Xb;

.field private final e:Lcom/ironsource/J1;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "configurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/ironsource/t;

    const-string v1, "rewarded"

    invoke-direct {p0, p1, v1}, Lcom/ironsource/T3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/t;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/T3;->a:Lcom/ironsource/t;

    .line 7
    new-instance v1, Lcom/ironsource/t;

    const-string v2, "interstitial"

    invoke-direct {p0, p1, v2}, Lcom/ironsource/T3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/t;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/ironsource/T3;->b:Lcom/ironsource/t;

    .line 10
    new-instance v2, Lcom/ironsource/a3;

    const-string v3, "banner"

    invoke-direct {p0, p1, v3}, Lcom/ironsource/T3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/a3;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/T3;->c:Lcom/ironsource/a3;

    .line 13
    new-instance v2, Lcom/ironsource/Xb;

    const-string v3, "nativeAd"

    invoke-direct {p0, p1, v3}, Lcom/ironsource/T3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/Xb;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/T3;->d:Lcom/ironsource/Xb;

    .line 16
    new-instance v2, Lcom/ironsource/J1;

    .line 17
    const-string v3, "application"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4b

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :cond_4b
    invoke-direct {v2, p1}, Lcom/ironsource/J1;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/T3;->e:Lcom/ironsource/J1;

    .line 23
    sget-object p1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 24
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p1, v0}, [Lkotlin/Pair;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/T3;->f:Ljava/util/Map;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 2
    const-string v0, "adFormats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    return-object p1

    .line 3
    :cond_10
    :goto_10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/T3;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/ironsource/J1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/T3;->e:Lcom/ironsource/J1;

    return-object v0
.end method

.method public final c()Lcom/ironsource/a3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/T3;->c:Lcom/ironsource/a3;

    return-object v0
.end method

.method public final d()Lcom/ironsource/Xb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/T3;->d:Lcom/ironsource/Xb;

    return-object v0
.end method
