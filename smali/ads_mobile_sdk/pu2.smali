###### Class ads_mobile_sdk.pu2 (ads_mobile_sdk.pu2)
.class public final Lads_mobile_sdk/pu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/by3;

.field public final b:Lads_mobile_sdk/na3;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lads_mobile_sdk/by3;

    invoke-direct {v0}, Lads_mobile_sdk/by3;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/pu2;->a:Lads_mobile_sdk/by3;

    .line 11
    new-instance v1, Lads_mobile_sdk/na3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/na3;-><init>(Lads_mobile_sdk/by3;)V

    iput-object v1, p0, Lads_mobile_sdk/pu2;->b:Lads_mobile_sdk/na3;

    return-void
.end method
