###### Class com.ironsource.adqualitysdk.sdk.i.C0741 (com.ironsource.adqualitysdk.sdk.i.ẛ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ẛ;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
