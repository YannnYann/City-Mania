###### Class ads_mobile_sdk.ut (ads_mobile_sdk.ut)
.class public final Lads_mobile_sdk/ut;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1166
    invoke-static {}, Lads_mobile_sdk/vt;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vt;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vt;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/vt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/vt;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/vt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/vt;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/vt;->-$$Nest$fputmajor_(Lads_mobile_sdk/vt;J)V

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vt;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/vt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/vt;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/vt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/vt;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/vt;->-$$Nest$fputmicro_(Lads_mobile_sdk/vt;J)V

    return-void
.end method

.method public final c(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vt;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/vt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/vt;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/vt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/vt;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/vt;->-$$Nest$fputminor_(Lads_mobile_sdk/vt;J)V

    return-void
.end method
