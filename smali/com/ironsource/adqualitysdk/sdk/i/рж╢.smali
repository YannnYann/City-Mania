###### Class com.ironsource.adqualitysdk.sdk.i.C0393 (com.ironsource.adqualitysdk.sdk.i.শ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/শ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/শ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    const-string p2, "Xsj8novy6gs=\n"

    const-string v0, "Krij+/mAhXk=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/শ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method
