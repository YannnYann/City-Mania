###### Class ads_mobile_sdk.ud1 (ads_mobile_sdk.ud1)
.class public final Lads_mobile_sdk/ud1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/vf1;->a:Lads_mobile_sdk/wf1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lads_mobile_sdk/ud1;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ud1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/lo;

    .line 3
    new-instance v1, Lads_mobile_sdk/td1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/td1;-><init>(Lads_mobile_sdk/lo;)V

    return-object v1
.end method
