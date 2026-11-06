###### Class ads_mobile_sdk.hl3 (ads_mobile_sdk.hl3)
.class public final Lads_mobile_sdk/hl3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lads_mobile_sdk/cl3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cl3;Ljava/util/Set;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/hl3;->b:Lads_mobile_sdk/cl3;

    return-void
.end method
