###### Class com.ironsource.adqualitysdk.sdk.i.C0237 (com.ironsource.adqualitysdk.sdk.i.ѓ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ѓ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ϛ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ѓ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ѓ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->סּ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    if-eqz v1, :cond_8

    .line 5
    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitSuccess()V

    goto :goto_8

    .line 8
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ѓ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 9
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->סּ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method
