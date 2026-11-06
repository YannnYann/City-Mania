###### Class ads_mobile_sdk.gt (ads_mobile_sdk.gt)
.class public final Lads_mobile_sdk/gt;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5286
    invoke-static {}, Lads_mobile_sdk/xt;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/xt;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/wt;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/xt;->a(Lads_mobile_sdk/wt;)V

    return-void
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .line 5295
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/xt;

    .line 5296
    invoke-static {v0}, Lads_mobile_sdk/xt;->-$$Nest$fgetthirdPartySdk_(Lads_mobile_sdk/xt;)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 5297
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
