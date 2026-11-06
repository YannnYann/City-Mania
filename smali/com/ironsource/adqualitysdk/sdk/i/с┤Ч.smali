###### Class com.ironsource.adqualitysdk.sdk.i.C0638 (com.ironsource.adqualitysdk.sdk.i.ᴗ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﻏ:Ljava/util/HashSet;

.field public final ﻐ:Ljava/util/HashSet;

.field public ﻛ:Z

.field public final ｋ:Ljava/util/HashSet;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    .line 3
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ｋ:Ljava/util/HashSet;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻐ:Ljava/util/HashSet;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻏ:Ljava/util/HashSet;

    return-void
.end method
