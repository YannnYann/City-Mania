###### Class ads_mobile_sdk.tv2 (ads_mobile_sdk.tv2)
.class public final Lads_mobile_sdk/tv2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 724
    invoke-static {}, Lads_mobile_sdk/uv2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/uv2;

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

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/uv2;->-$$Nest$fputappStartProgramUpdateDelayMs_(Lads_mobile_sdk/uv2;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/uv2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 10
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    .line 11
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 12
    invoke-static {v0, p1}, Lads_mobile_sdk/uv2;->-$$Nest$fputenableRetryDownload_(Lads_mobile_sdk/uv2;Z)V

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/uv2;->-$$Nest$fputmaxRetryCount_(Lads_mobile_sdk/uv2;J)V

    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 10
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 11
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 12
    invoke-static {v0, p1}, Lads_mobile_sdk/uv2;->-$$Nest$fputupdateBeforeInitialization_(Lads_mobile_sdk/uv2;Z)V

    return-void
.end method

.method public final c(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/uv2;->-$$Nest$fputprogramAlmostExpiredMs_(Lads_mobile_sdk/uv2;J)V

    return-void
.end method

.method public final d(J)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/uv2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/uv2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/uv2;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/uv2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/uv2;I)V

    .line 6
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/uv2;->-$$Nest$fputretryBaseIntervalMs_(Lads_mobile_sdk/uv2;J)V

    return-void
.end method
