###### Class com.ironsource.adqualitysdk.sdk.i.C0333 (com.ironsource.adqualitysdk.sdk.i.ڌ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڌ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ױ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ױ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڌ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ױ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڌ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ױ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogury/ad/OguryRewardedAd;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ogury/ad/OguryRewardedAdListener;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1}, Lcom/ogury/ad/OguryRewardedAd;->setListener(Lcom/ogury/ad/OguryRewardedAdListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
