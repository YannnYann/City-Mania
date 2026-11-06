###### Class com.ironsource.adqualitysdk.sdk.i.C0777 (com.ironsource.adqualitysdk.sdk.i.Ῑ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ῑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ḯ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ḯ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ῑ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ḯ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ῑ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ḯ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
