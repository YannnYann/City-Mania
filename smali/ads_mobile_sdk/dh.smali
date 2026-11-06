###### Class ads_mobile_sdk.dh (ads_mobile_sdk.dh)
.class public final Lads_mobile_sdk/dh;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12709
    invoke-static {}, Lads_mobile_sdk/eh;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/eh;

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

    check-cast v0, Lads_mobile_sdk/eh;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/eh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/eh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/eh;->-$$Nest$fputdisplayDensity_(Lads_mobile_sdk/eh;J)V

    return-void
.end method

.method public final b(J)Lads_mobile_sdk/dh;
    .registers 5

    .line 12857
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12858
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/eh;

    .line 12859
    invoke-static {v0}, Lads_mobile_sdk/eh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 12860
    invoke-static {v0, v1}, Lads_mobile_sdk/eh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V

    .line 12861
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/eh;->-$$Nest$fputminAlphaSignal_(Lads_mobile_sdk/eh;J)V

    return-object p0
.end method

.method public final c(J)Lads_mobile_sdk/dh;
    .registers 5

    .line 12747
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12748
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/eh;

    .line 12749
    invoke-static {v0}, Lads_mobile_sdk/eh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 12750
    invoke-static {v0, v1}, Lads_mobile_sdk/eh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V

    .line 12751
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/eh;->-$$Nest$fputpercentAdOnScreen_(Lads_mobile_sdk/eh;J)V

    return-object p0
.end method

.method public final d(J)Lads_mobile_sdk/dh;
    .registers 5

    .line 12911
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12912
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/eh;

    .line 12913
    invoke-static {v0}, Lads_mobile_sdk/eh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 12914
    invoke-static {v0, v1}, Lads_mobile_sdk/eh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V

    .line 12915
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/eh;->-$$Nest$fputviewHeight_(Lads_mobile_sdk/eh;J)V

    return-object p0
.end method

.method public final e(J)Lads_mobile_sdk/dh;
    .registers 5

    .line 12963
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12964
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/eh;

    .line 12965
    invoke-static {v0}, Lads_mobile_sdk/eh;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/eh;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 12966
    invoke-static {v0, v1}, Lads_mobile_sdk/eh;->-$$Nest$fputbitField0_(Lads_mobile_sdk/eh;I)V

    .line 12967
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/eh;->-$$Nest$fputviewWidth_(Lads_mobile_sdk/eh;J)V

    return-object p0
.end method
