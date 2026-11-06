###### Class com.ironsource.adqualitysdk.sdk.i.C0842 (com.ironsource.adqualitysdk.sdk.i.忄)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/忄;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/忄;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/忄;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/chartboost/sdk/ChartboostDelegate;

    .line 5
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Ỳ;

    invoke-direct {v1, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ỳ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;Lcom/chartboost/sdk/ChartboostDelegate;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V

    .line 6
    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    const/4 p1, 0x0

    return-object p1
.end method
