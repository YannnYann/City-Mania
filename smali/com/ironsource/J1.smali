###### Class com.ironsource.J1 (com.ironsource.J1)
.class public final Lcom/ironsource/J1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Lb;

.field private final b:Lcom/ironsource/Q1;

.field private final c:Z

.field private final d:Lcom/ironsource/N1;

.field private final e:Lcom/ironsource/U1;

.field private final f:Lcom/ironsource/H1;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "applicationConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/ironsource/Lb;

    const-string v1, "loggers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_17

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_17
    invoke-direct {v0, v1}, Lcom/ironsource/Lb;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/J1;->a:Lcom/ironsource/Lb;

    .line 7
    new-instance v0, Lcom/ironsource/Q1;

    const-string v1, "events"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2b
    invoke-direct {v0, v1}, Lcom/ironsource/Q1;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/J1;->b:Lcom/ironsource/Q1;

    .line 12
    const-string v0, "integration"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/J1;->c:Z

    .line 15
    new-instance v0, Lcom/ironsource/N1;

    .line 16
    const-string v1, "crashReporter"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_48

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    :cond_48
    invoke-direct {v0, v1}, Lcom/ironsource/N1;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/J1;->d:Lcom/ironsource/N1;

    .line 21
    new-instance v0, Lcom/ironsource/U1;

    .line 22
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_5c

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :cond_5c
    invoke-direct {v0, v1}, Lcom/ironsource/U1;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/J1;->e:Lcom/ironsource/U1;

    .line 28
    new-instance v0, Lcom/ironsource/H1;

    .line 29
    const-string v1, "auction"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_70

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :cond_70
    invoke-direct {v0, p1}, Lcom/ironsource/H1;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/J1;->f:Lcom/ironsource/H1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/H1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J1;->f:Lcom/ironsource/H1;

    return-object v0
.end method

.method public final b()Lcom/ironsource/N1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J1;->d:Lcom/ironsource/N1;

    return-object v0
.end method

.method public final c()Lcom/ironsource/Q1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J1;->b:Lcom/ironsource/Q1;

    return-object v0
.end method

.method public final d()Lcom/ironsource/U1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J1;->e:Lcom/ironsource/U1;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/J1;->c:Z

    return v0
.end method

.method public final f()Lcom/ironsource/Lb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J1;->a:Lcom/ironsource/Lb;

    return-object v0
.end method
