###### Class com.ironsource.adqualitysdk.sdk.i.C0527 (com.ironsource.adqualitysdk.sdk.i.ᓘ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᓘ;
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
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
