###### Class com.ironsource.adqualitysdk.sdk.i.C0321 (com.ironsource.adqualitysdk.sdk.i.ٲ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ٲ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ں;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ү;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    .line 5
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ں;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ה;->ﾒ:[B

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ҭ;->ﾒ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ں;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ں;

    return-void
.end method
