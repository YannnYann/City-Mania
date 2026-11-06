###### Class ads_mobile_sdk.rt (ads_mobile_sdk.rt)
.class public final Lads_mobile_sdk/rt;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2492
    invoke-static {}, Lads_mobile_sdk/wt;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/wt;

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

    check-cast v0, Lads_mobile_sdk/wt;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/wt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/wt;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/wt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/wt;I)V

    .line 6
    invoke-static {v0, p1}, Lads_mobile_sdk/wt;->-$$Nest$fputadapterBehaviorBitmap_(Lads_mobile_sdk/wt;I)V

    return-void
.end method

.method public final a(J)V
    .registers 5

    .line 17
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 18
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    .line 19
    invoke-static {v0}, Lads_mobile_sdk/wt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/wt;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    .line 20
    invoke-static {v0, v1}, Lads_mobile_sdk/wt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/wt;I)V

    .line 21
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/wt;->-$$Nest$fputlatencyMs_(Lads_mobile_sdk/wt;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/tt;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wt;->a(Lads_mobile_sdk/tt;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/vt;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wt;->a(Lads_mobile_sdk/vt;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wt;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/vt;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wt;->b(Lads_mobile_sdk/vt;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wt;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 2518
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/wt;

    .line 2519
    invoke-static {v0}, Lads_mobile_sdk/wt;->-$$Nest$fgetadapterClassName_(Lads_mobile_sdk/wt;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
