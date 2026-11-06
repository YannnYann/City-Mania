###### Class ads_mobile_sdk.fs3 (ads_mobile_sdk.fs3)
.class public final Lads_mobile_sdk/fs3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/rr3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/fs3;->a:Lads_mobile_sdk/rr3;

    return-void
.end method
