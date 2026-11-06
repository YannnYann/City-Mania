###### Class com.ironsource.C3613g4 (com.ironsource.g4)
.class public Lcom/ironsource/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SSA_CORE.SDKController.runFunction"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/ironsource/h4;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/h4;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/h4;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/g4;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/ironsource/g4;->b(Lcom/ironsource/h4;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "SSA_CORE.SDKController.runFunction"

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4
    const-string v0, "%1$s(\'%2$s%3$s\'%4$s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_e

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 9
    :cond_9
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_e
    :goto_e
    const-string p0, ""

    return-object p0
.end method

.method private static b(Lcom/ironsource/h4;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/h4;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/ironsource/h4;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/h4;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/h4;->a()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4
    const-string v0, ", \'%1$s\', \'%2$s\'"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1f
    const-string p0, ""

    return-object p0
.end method
