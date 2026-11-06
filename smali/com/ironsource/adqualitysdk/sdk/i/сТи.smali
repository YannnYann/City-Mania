###### Class com.ironsource.adqualitysdk.sdk.i.C0497 (com.ironsource.adqualitysdk.sdk.i.ᒨ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

.field public final synthetic ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ܕ;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾒ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    const-string v1, "lmiWv8vQ\n"

    const-string v2, "5Qf50qex+GQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾒ:Ljava/lang/String;

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    if-eqz v1, :cond_1d

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ﻏ()Ljava/util/HashMap;

    move-result-object v0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;

    goto :goto_21

    .line 4
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_34

    .line 5
    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾒ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_34

    .line 6
    :cond_2a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->爫:Ljava/lang/String;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾒ(Z)V

    :cond_34
    :goto_34
    return-void
.end method
