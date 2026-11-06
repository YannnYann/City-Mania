###### Class ads_mobile_sdk.ot3 (ads_mobile_sdk.ot3)
.class public final Lads_mobile_sdk/ot3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/rt3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rt3;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lads_mobile_sdk/ot3;->a:Lads_mobile_sdk/rt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 86
    iget-object v0, p0, Lads_mobile_sdk/ot3;->a:Lads_mobile_sdk/rt3;

    iget-object v0, v0, Lads_mobile_sdk/rt3;->e:Lads_mobile_sdk/gl3;

    .line 87
    iget-object v1, v0, Lads_mobile_sdk/gl3;->b:Lads_mobile_sdk/od2;

    .line 88
    new-instance v2, Lads_mobile_sdk/rd2;

    invoke-direct {v2, v0}, Lads_mobile_sdk/rd2;-><init>(Lads_mobile_sdk/gl3;)V

    invoke-virtual {v1, v2}, Lads_mobile_sdk/od2;->a(Lads_mobile_sdk/nd2;)V

    return-void
.end method
