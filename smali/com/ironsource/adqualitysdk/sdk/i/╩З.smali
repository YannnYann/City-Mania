###### Class com.ironsource.adqualitysdk.sdk.i.C0124 (com.ironsource.adqualitysdk.sdk.i.ʇ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʇ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v1, -0x416f639a

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2b

    const v1, 0x5caad8c4

    if-eq p2, v1, :cond_1c

    goto :goto_3b

    :cond_1c
    const-string p2, "eapjSfYaJGp9uXZT4xI+bWeqa0T2\n"

    const-string v1, "KeYiCrNXYSQ=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_2b
    const-string p2, "JW7jfOmSK7MhffZm/JoxuyBu7mzvjSu4Ow==\n"

    const-string v0, "dSKiP6zfbv0=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    if-eqz v0, :cond_45

    if-eq v0, v2, :cond_42

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_42
    sget-object p1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object p1

    .line 8
    :cond_45
    sget-object p1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object p1
.end method
