###### Class ads_mobile_sdk.hd0 (ads_mobile_sdk.hd0)
.class public final Lads_mobile_sdk/hd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dw2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/id0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/id0;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lads_mobile_sdk/hd0;->a:Lads_mobile_sdk/id0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/qd0;

    iget-object v1, p0, Lads_mobile_sdk/hd0;->a:Lads_mobile_sdk/id0;

    iget-object v1, v1, Lads_mobile_sdk/id0;->a:Lads_mobile_sdk/id0;

    invoke-direct {v0, v1}, Lads_mobile_sdk/qd0;-><init>(Lads_mobile_sdk/id0;)V

    return-object v0
.end method
