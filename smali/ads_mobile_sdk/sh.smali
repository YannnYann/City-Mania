###### Class ads_mobile_sdk.sh (ads_mobile_sdk.sh)
.class public final Lads_mobile_sdk/sh;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31932
    invoke-static {}, Lads_mobile_sdk/th;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/th;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lads_mobile_sdk/sh;
    .registers 5

    .line 64235
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 64236
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    .line 64237
    invoke-static {v0}, Lads_mobile_sdk/th;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/th;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 64238
    invoke-static {v0, v1}, Lads_mobile_sdk/th;->-$$Nest$fputbitField0_(Lads_mobile_sdk/th;I)V

    .line 64239
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/th;->-$$Nest$fputevtTime_(Lads_mobile_sdk/th;J)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lads_mobile_sdk/sh;
    .registers 3

    .line 32081
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 32082
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/th;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(J)Lads_mobile_sdk/sh;
    .registers 5

    .line 64563
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 64564
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    .line 64565
    invoke-static {v0}, Lads_mobile_sdk/th;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/th;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 64566
    invoke-static {v0, v1}, Lads_mobile_sdk/th;->-$$Nest$fputbitField0_(Lads_mobile_sdk/th;I)V

    .line 64567
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/th;->-$$Nest$fputuptSignal_(Lads_mobile_sdk/th;J)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/sh;
    .registers 3

    .line 32220
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 32221
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/th;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(J)V
    .registers 5

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/th;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/th;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/th;->-$$Nest$fputbitField0_(Lads_mobile_sdk/th;I)V

    .line 9
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/th;->-$$Nest$fputvcdSignal_(Lads_mobile_sdk/th;J)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/th;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final h()Lads_mobile_sdk/sh;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/th;

    invoke-virtual {v0}, Lads_mobile_sdk/th;->w()V

    return-object p0
.end method
