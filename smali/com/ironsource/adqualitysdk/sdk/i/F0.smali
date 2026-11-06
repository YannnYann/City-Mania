###### Class com.ironsource.adqualitysdk.sdk.i.F0 (com.ironsource.adqualitysdk.sdk.i.F0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Q0;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Q0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/F0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/F0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Q0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {p1}, Lcom/yandex/mobile/ads/video/playback/model/VideoAd;->getInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
