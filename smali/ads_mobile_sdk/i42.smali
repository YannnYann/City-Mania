###### Class ads_mobile_sdk.i42 (ads_mobile_sdk.i42)
.class public final Lads_mobile_sdk/i42;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3265
    invoke-static {}, Lads_mobile_sdk/j42;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/j42;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/j42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/j42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/j42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/j42;I)V

    .line 6
    invoke-static {v0, p1}, Lads_mobile_sdk/j42;->-$$Nest$fputsccgDir_(Lads_mobile_sdk/j42;I)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/j42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/j42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/j42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/j42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/j42;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/j42;->-$$Nest$fputsccgTap_(Lads_mobile_sdk/j42;Z)V

    return-void
.end method
