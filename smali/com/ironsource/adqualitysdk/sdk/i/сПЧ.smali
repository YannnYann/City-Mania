###### Class com.ironsource.adqualitysdk.sdk.i.C0451 (com.ironsource.adqualitysdk.sdk.i.Ꮧ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ꮧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ת;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮧ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ث;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮧ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ת;

    const-class v2, Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-direct {v0, v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ث;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ת;Lcom/google/android/gms/ads/FullScreenContentCallback;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V

    return-object v0
.end method
