###### Class com.ironsource.adqualitysdk.sdk.i.C0745 (com.ironsource.adqualitysdk.sdk.i.ị)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ị;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ɨ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ị;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ị;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ɪ;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ɪ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ɨ;Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V

    return-object v1
.end method
