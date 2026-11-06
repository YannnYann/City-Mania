###### Class com.ironsource.adqualitysdk.sdk.i.C0797 (com.ironsource.adqualitysdk.sdk.i.Ⅴ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ⅴ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/ChartboostDelegate;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Ỳ;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ỳ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;Lcom/chartboost/sdk/ChartboostDelegate;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V

    return-object v1
.end method
