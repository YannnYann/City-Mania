###### Class com.ironsource.adqualitysdk.sdk.i.u0 (com.ironsource.adqualitysdk.sdk.i.u0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ḷ;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵖ;->ﾒ:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
