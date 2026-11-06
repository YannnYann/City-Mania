###### Class com.ironsource.adqualitysdk.sdk.i.C0528 (com.ironsource.adqualitysdk.sdk.i.ᓙ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;->ﾇ:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ:Z

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;

    if-eqz v0, :cond_e

    .line 4
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;->ﾇ:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;->ﾒ(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method
