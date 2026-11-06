###### Class com.ironsource.adqualitysdk.sdk.i.C0785 (com.ironsource.adqualitysdk.sdk.i.⁀)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/⁀;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public ﾇ:Z

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "S6zgZ4RpN8pkp/V3jmk=\n"

    const-string v1, "BcmUEOsbXIc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾇ:Z

    .line 5
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    return-void
.end method
