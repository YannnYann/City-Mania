###### Class com.ironsource.adqualitysdk.sdk.i.C0634 (com.ironsource.adqualitysdk.sdk.i.ᴏ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴏ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴏ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴏ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/fairbid/mediation/MediationManager;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Lcom/fyber/fairbid/mediation/MediationManager;->getPlacementsHandler()Lcom/fyber/fairbid/sdk/placements/PlacementsHandler;

    move-result-object p1

    return-object p1
.end method
