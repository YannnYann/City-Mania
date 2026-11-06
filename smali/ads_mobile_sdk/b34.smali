###### Class ads_mobile_sdk.b34 (ads_mobile_sdk.b34)
.class public abstract Lads_mobile_sdk/b34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/wu2;->r:Lads_mobile_sdk/wu2;

    sget-object v1, Lads_mobile_sdk/wu2;->n:Lads_mobile_sdk/wu2;

    sget-object v2, Lads_mobile_sdk/wu2;->p:Lads_mobile_sdk/wu2;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/b34;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
