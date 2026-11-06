###### Class com.ironsource.adqualitysdk.sdk.i.C0571 (com.ironsource.adqualitysdk.sdk.i.ᔭ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ｋ:J

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

.field public final ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾒ:Ljava/lang/String;

    .line 3
    iput-wide p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ｋ:J

    .line 4
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

    invoke-direct {p1, p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

    return-void
.end method
