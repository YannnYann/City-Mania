###### Class com.ironsource.adqualitysdk.sdk.i.C0743 (com.ironsource.adqualitysdk.sdk.i.ỉ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ỉ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# static fields
.field public static final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ỉ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ỉ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ỉ;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ỉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ỉ;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sVk0XQ==\n"

    const-string v1, "3yxYMZPsXDI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 3

    .line 1
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
