###### Class com.ironsource.adqualitysdk.sdk.i.C0067 (com.ironsource.adqualitysdk.sdk.i.ţ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ţ;
.super Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ﻐ()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ejFcwQBA2w==\n"

    const-string v1, "P38dg0wFn3Y=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ()Ljava/util/HashMap;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final ﾒ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
