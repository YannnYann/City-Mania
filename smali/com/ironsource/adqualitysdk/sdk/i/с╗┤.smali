###### Class com.ironsource.adqualitysdk.sdk.i.C0748 (com.ironsource.adqualitysdk.sdk.i.Ỵ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ỵ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ỵ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ỵ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ṫ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object p1

    .line 4
    instance-of p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ỳ;

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
