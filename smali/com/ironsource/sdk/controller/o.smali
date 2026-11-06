###### Class com.ironsource.sdk.controller.o (com.ironsource.sdk.controller.o)
.class public Lcom/ironsource/sdk/controller/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/o$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "o"

.field private static final d:Ljava/lang/String; = "activate"

.field private static final e:Ljava/lang/String; = "startSession"

.field private static final f:Ljava/lang/String; = "finishSession"

.field private static final g:Ljava/lang/String; = "impressionOccurred"

.field private static final h:Ljava/lang/String; = "getOmidData"

.field private static final i:Ljava/lang/String; = "omidFunction"

.field private static final j:Ljava/lang/String; = "omidParams"

.field private static final k:Ljava/lang/String; = "success"

.field private static final l:Ljava/lang/String; = "fail"

.field private static final m:Ljava/lang/String; = "%s | unsupported OMID API"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ironsource/Nc;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/o;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/ironsource/Nc;

    invoke-direct {p1}, Lcom/ironsource/Nc;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/o$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/ironsource/sdk/controller/o$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/o$a;-><init>(Lcom/ironsource/sdk/controller/o-IA;)V

    .line 66
    const-string v1, "omidFunction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$a;->a:Ljava/lang/String;

    .line 67
    const-string v1, "omidParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$a;->b:Lorg/json/JSONObject;

    .line 68
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/o$a;->c:Ljava/lang/String;

    .line 69
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/o$a;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ironsource/ua;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/o;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/o$a;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/ironsource/sdk/controller/o$a;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_1e

    .line 6
    const-string v2, ""

    const-string v3, "adViewId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 8
    invoke-virtual {v0, v3, v1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 v1, 0x0

    .line 14
    :try_start_1f
    iget-object v2, p1, Lcom/ironsource/sdk/controller/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_ec

    goto :goto_62

    :sswitch_2d
    const-string v3, "startSession"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v7

    goto :goto_63

    :catch_37
    move-exception v2

    goto/16 :goto_b1

    :sswitch_3a
    const-string v3, "impressionOccurred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v6

    goto :goto_63

    :sswitch_44
    const-string v3, "finishSession"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v5

    goto :goto_63

    :sswitch_4e
    const-string v3, "getOmidData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v4

    goto :goto_63

    :sswitch_58
    const-string v3, "activate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v1

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v2, -0x1

    :goto_63
    if-eqz v2, :cond_9e

    if-eq v2, v7, :cond_96

    if-eq v2, v5, :cond_8e

    if-eq v2, v6, :cond_86

    if-ne v2, v4, :cond_74

    .line 34
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    invoke-virtual {v2}, Lcom/ironsource/Nc;->a()Lcom/ironsource/me;

    move-result-object v0

    goto :goto_ab

    .line 32
    :cond_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "%s | unsupported OMID API"

    iget-object v4, p1, Lcom/ironsource/sdk/controller/o$a;->a:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_86
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/o$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/Nc;->c(Lorg/json/JSONObject;)V

    goto :goto_ab

    .line 36
    :cond_8e
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/o$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/Nc;->b(Lorg/json/JSONObject;)V

    goto :goto_ab

    .line 37
    :cond_96
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/o$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/Nc;->d(Lorg/json/JSONObject;)V

    goto :goto_ab

    .line 38
    :cond_9e
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ironsource/Nc;->a(Landroid/content/Context;)V

    .line 39
    iget-object v2, p0, Lcom/ironsource/sdk/controller/o;->b:Lcom/ironsource/Nc;

    invoke-virtual {v2}, Lcom/ironsource/Nc;->a()Lcom/ironsource/me;

    move-result-object v0

    .line 57
    :goto_ab
    iget-object v2, p1, Lcom/ironsource/sdk/controller/o$a;->c:Ljava/lang/String;

    invoke-interface {p2, v7, v2, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_b0} :catch_37

    return-void

    .line 59
    :goto_b1
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "errMsg"

    invoke-virtual {v0, v4, v3}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v3, Lcom/ironsource/sdk/controller/o;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMIDJSAdapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/o$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p1, Lcom/ironsource/sdk/controller/o$a;->d:Ljava/lang/String;

    invoke-interface {p2, v1, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x62b42b0d -> :sswitch_58
        -0x3aada7c7 -> :sswitch_4e
        0x436d283 -> :sswitch_44
        0x48024a4e -> :sswitch_3a
        0x6e4d03d4 -> :sswitch_2d
    .end sparse-switch
.end method

###### Class com.ironsource.sdk.controller.o.a (com.ironsource.sdk.controller.o$a)
.class Lcom/ironsource/sdk/controller/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/sdk/controller/o-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/o$a;-><init>()V

    return-void
.end method
