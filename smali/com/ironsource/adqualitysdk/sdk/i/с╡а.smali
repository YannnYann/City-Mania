###### Class com.ironsource.adqualitysdk.sdk.i.C0699 (com.ironsource.adqualitysdk.sdk.i.ᵠ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵠ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    check-cast p2, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ()I

    move-result p1

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
