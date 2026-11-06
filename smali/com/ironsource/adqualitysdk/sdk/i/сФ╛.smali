###### Class com.ironsource.adqualitysdk.sdk.i.C0578 (com.ironsource.adqualitysdk.sdk.i.ᔾ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔾ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᕐ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᕐ;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᕐ;->ﾒ:Ljava/lang/Class;

    .line 2
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
