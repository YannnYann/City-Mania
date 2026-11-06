###### Class com.ironsource.adqualitysdk.sdk.i.C0613 (com.ironsource.adqualitysdk.sdk.i.ᘂ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘂ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 4
    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 6
    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method
