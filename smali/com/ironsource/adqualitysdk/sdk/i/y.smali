###### Class com.ironsource.adqualitysdk.sdk.i.C3512y (com.ironsource.adqualitysdk.sdk.i.y)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/y;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

.field public final synthetic ｋ:Landroid/view/View;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/B;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ:Landroid/view/View;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮉ:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾇ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ:Landroid/view/View;

    .line 5
    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮐ:Ljava/lang/Class;

    .line 6
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 7
    iget-boolean v6, v4, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﱡ:Z

    .line 8
    iget-object v7, v4, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 9
    iget-object v8, v4, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    .line 10
    iget-object v9, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮉ:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 11
    invoke-static/range {v2 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾇ(Landroid/view/View;Ljava/lang/Class;Ljava/lang/String;ZZLjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_28

    :cond_21
    move-object v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    invoke-static/range {v1 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾒ(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;ZZLjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 13
    :goto_28
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ:Landroid/view/View;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 14
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮐ:Ljava/lang/Class;

    .line 15
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 16
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮉ:Ljava/util/List;

    .line 17
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﭴ:Ljava/util/List;

    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v2, v4, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾒ(Landroid/view/View;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 20
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮉ:Ljava/util/ArrayList;

    .line 21
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 24
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮉ:Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 28
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/A;

    .line 29
    iget-boolean v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/A;->ﮌ:Z

    if-eqz v2, :cond_5e

    .line 30
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/x;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/x;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/y;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    .line 37
    :cond_5e
    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/B;Ljava/util/ArrayList;)V

    return-void
.end method
