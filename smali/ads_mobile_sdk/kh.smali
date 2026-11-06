###### Class ads_mobile_sdk.kh (ads_mobile_sdk.kh)
.class public final Lads_mobile_sdk/kh;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33761
    invoke-static {}, Lads_mobile_sdk/lh;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/lh;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/du;)Lads_mobile_sdk/kh;
    .registers 3

    .line 33962
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 33963
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/lh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/lh;->a(Lads_mobile_sdk/du;)V

    return-object p0
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/lh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/lh;->b(Lads_mobile_sdk/du;)V

    return-void
.end method
