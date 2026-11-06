###### Class com.ironsource.adqualitysdk.sdk.i.C0406 (com.ironsource.adqualitysdk.sdk.i.จ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/จ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ܕ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/จ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/จ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->סּ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾒ(Ljava/util/Set;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    return-void
.end method

.method public final adQualitySdkInitSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/จ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->爫:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ѓ;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ѓ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ϛ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
