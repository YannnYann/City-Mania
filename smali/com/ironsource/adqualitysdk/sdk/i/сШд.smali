###### Class com.ironsource.adqualitysdk.sdk.i.C0620 (com.ironsource.adqualitysdk.sdk.i.ᘤ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘤ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘤ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘤ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p1, Lcom/fyber/fairbid/mediation/MediationManager;->Companion:Lcom/fyber/fairbid/mediation/MediationManager$Companion;

    invoke-virtual {p1}, Lcom/fyber/fairbid/mediation/MediationManager$Companion;->getInstance()Lcom/fyber/fairbid/mediation/MediationManager;

    move-result-object p1

    return-object p1
.end method
