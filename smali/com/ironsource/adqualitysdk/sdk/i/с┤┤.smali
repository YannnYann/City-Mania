###### Class com.ironsource.adqualitysdk.sdk.i.C0656 (com.ironsource.adqualitysdk.sdk.i.ᴴ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ｋ:Lcom/ironsource/adqualitysdk/sdk/i/t0;

.field public ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    return-void
.end method

.method public static ﾒ(II)Z
    .registers 2

    .line 0
    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
