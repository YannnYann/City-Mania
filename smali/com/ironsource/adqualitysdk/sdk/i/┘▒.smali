###### Class com.ironsource.adqualitysdk.sdk.i.C0320 (com.ironsource.adqualitysdk.sdk.i.ٱ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ٱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ن;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ن;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٱ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ن;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٱ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ن;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/five_corp/ad/FiveAd;->getSingleton()Lcom/five_corp/ad/FiveAd;

    move-result-object p1

    return-object p1
.end method
