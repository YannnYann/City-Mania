###### Class com.ironsource.adqualitysdk.sdk.i.C0839 (com.ironsource.adqualitysdk.sdk.i.冖)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/冖;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ẗ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ẗ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/冖;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ẗ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/冖;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ẗ;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string p1, "OrflWLFovpoOs/FcoWO0lQq/4li8Qr+VH7f0WZ5mo5oppg==\n"

    const-string p2, "XNaGPdMH0fE=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
