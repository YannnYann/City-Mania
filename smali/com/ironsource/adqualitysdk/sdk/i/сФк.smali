###### Class com.ironsource.adqualitysdk.sdk.i.C0568 (com.ironsource.adqualitysdk.sdk.i.ᔪ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔪ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔪ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔪ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/fyber/FairBid;->assertStarted()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
