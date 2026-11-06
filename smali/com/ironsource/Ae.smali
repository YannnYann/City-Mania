###### Class com.ironsource.Ae (com.ironsource.Ae)
.class public final Lcom/ironsource/Ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Ue;

.field private final b:Lcom/ironsource/Kd;

.field private final c:Lcom/ironsource/Md;

.field private final d:Lcom/ironsource/T3;

.field private final e:Lcom/ironsource/R5;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ue;)V
    .registers 5

    const-string v0, "fullResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ae;->a:Lcom/ironsource/Ue;

    .line 5
    new-instance v0, Lcom/ironsource/Kd;

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "providerOrder"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :cond_1d
    invoke-direct {v0, v1}, Lcom/ironsource/Kd;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/Ae;->b:Lcom/ironsource/Kd;

    .line 15
    new-instance v0, Lcom/ironsource/Md;

    .line 16
    invoke-virtual {p1}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "providerSettings"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_35

    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :cond_35
    invoke-direct {v0, v1}, Lcom/ironsource/Md;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/Ae;->c:Lcom/ironsource/Md;

    .line 23
    new-instance v0, Lcom/ironsource/T3;

    .line 24
    invoke-virtual {p1}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configurations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :cond_4d
    invoke-direct {v0, v1}, Lcom/ironsource/T3;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/Ae;->d:Lcom/ironsource/T3;

    .line 31
    new-instance v0, Lcom/ironsource/R5;

    .line 32
    invoke-virtual {p1}, Lcom/ironsource/Ue;->j()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "experiments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_65

    .line 33
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    :cond_65
    invoke-direct {v0, p1}, Lcom/ironsource/R5;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/Ae;->e:Lcom/ironsource/R5;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/T3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ae;->d:Lcom/ironsource/T3;

    return-object v0
.end method

.method public final b()Lcom/ironsource/R5;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ae;->e:Lcom/ironsource/R5;

    return-object v0
.end method

.method public final c()Lcom/ironsource/Ue;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ae;->a:Lcom/ironsource/Ue;

    return-object v0
.end method

.method public final d()Lcom/ironsource/Kd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ae;->b:Lcom/ironsource/Kd;

    return-object v0
.end method

.method public final e()Lcom/ironsource/Md;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ae;->c:Lcom/ironsource/Md;

    return-object v0
.end method
