###### Class ads_mobile_sdk.kb2 (ads_mobile_sdk.kb2)
.class public final Lads_mobile_sdk/kb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xu2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/ul3;->e:Lads_mobile_sdk/ul3;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/pr0;

    .line 2
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
