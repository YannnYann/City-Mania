###### Class com.ironsource.adqualitysdk.sdk.i.C0970 (com.ironsource.adqualitysdk.sdk.i.ﻴ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻴ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "LcEaAG0RlL8czhgMaQQ=\n"

    const-string v1, "faB5awx28fI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "JCygkf/a9jkoKqmR6NH8Ly4tqg==\n"

    const-string v1, "R0PNv560kks=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method
