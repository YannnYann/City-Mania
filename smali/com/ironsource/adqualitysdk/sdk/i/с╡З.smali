###### Class com.ironsource.adqualitysdk.sdk.i.C0675 (com.ironsource.adqualitysdk.sdk.i.ᵇ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵇ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ḷ;Lcom/ironsource/adqualitysdk/sdk/i/t0;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 2
    iput-object p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

    .line 3
    iput-object p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/t0;

    .line 4
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 5
    iput-object p3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    .line 6
    iput p4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    iput-object p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    .line 9
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 10
    iget-object p3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    if-eqz p2, :cond_1b

    .line 11
    const-class p2, Lcom/ironsource/adqualitysdk/sdk/i/t0;

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    .line 12
    :goto_1c
    iput-object p2, p3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    return-object p1
.end method
