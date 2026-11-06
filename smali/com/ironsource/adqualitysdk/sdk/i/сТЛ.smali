###### Class com.ironsource.adqualitysdk.sdk.i.C0484 (com.ironsource.adqualitysdk.sdk.i.ᒋ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﾇ:I

.field public final ﾒ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾒ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒋ;->ﾇ:I

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
