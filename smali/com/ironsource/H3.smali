###### Class com.ironsource.H3 (com.ironsource.H3)
.class public final Lcom/ironsource/H3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCappingFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CappingFeature.kt\ncom/unity3d/sdk/internal/init/response/configurations/features/CappingFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/ironsource/M3;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    :goto_1b
    iput-object v0, p0, Lcom/ironsource/H3;->a:Ljava/lang/Boolean;

    .line 6
    const-string v0, "maxImpressions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v2

    :goto_2f
    iput-object v0, p0, Lcom/ironsource/H3;->b:Ljava/lang/Integer;

    .line 11
    const-string v0, "unit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Lcom/ironsource/M3;->c:Lcom/ironsource/M3$a;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/M3$a;->a(Ljava/lang/String;)Lcom/ironsource/M3;

    move-result-object v2

    .line 12
    :cond_43
    iput-object v2, p0, Lcom/ironsource/H3;->c:Lcom/ironsource/M3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/H3;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/H3;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Lcom/ironsource/M3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/H3;->c:Lcom/ironsource/M3;

    return-object v0
.end method
