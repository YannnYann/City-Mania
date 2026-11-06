###### Class com.ironsource.adqualitysdk.sdk.i.C0775 (com.ironsource.adqualitysdk.sdk.i.ῗ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ῗ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->isWebViewEnabled()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
