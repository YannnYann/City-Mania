###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0668 (com.ironsource.adqualitysdk.sdk.i.ᵀ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ᵀ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾒ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵀ;->ﾒ:Ljava/util/HashMap;

    return-void
.end method

.method public static ﾒ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵀ;->ﾒ:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_e

    .line 4
    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_e
    return-object v1
.end method
