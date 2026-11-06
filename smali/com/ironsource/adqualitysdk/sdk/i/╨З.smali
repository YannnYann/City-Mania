###### Class com.ironsource.adqualitysdk.sdk.i.C0216 (com.ironsource.adqualitysdk.sdk.i.Ї)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ї;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ɨ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ї;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ї;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ɨ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_c
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->toJson()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    const/4 p1, 0x0

    return-object p1
.end method
