###### Class com.ironsource.adqualitysdk.sdk.i.C0859 (com.ironsource.adqualitysdk.sdk.i.יּ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/יּ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/יִ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/יִ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/יּ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/יִ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/יּ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/יִ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/sdk/publisher/SABannerAd;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/superawesome/sdk/publisher/SAInterface;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1}, Ltv/superawesome/sdk/publisher/SABannerAd;->setListener(Ltv/superawesome/sdk/publisher/SAInterface;)V

    const/4 p1, 0x0

    return-object p1
.end method
