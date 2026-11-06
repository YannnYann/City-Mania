###### Class ads_mobile_sdk.g42 (ads_mobile_sdk.g42)
.class public final Lads_mobile_sdk/g42;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1833
    invoke-static {}, Lads_mobile_sdk/h42;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/h42;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/h42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/h42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/h42;I)V

    .line 9
    invoke-static {v0, p1}, Lads_mobile_sdk/h42;->-$$Nest$fputpreferredAdChoicesPosition_(Lads_mobile_sdk/h42;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/j42;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/h42;->a(Lads_mobile_sdk/j42;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/l42;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/h42;->a(Lads_mobile_sdk/l42;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/h42;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/h42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/h42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/h42;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputdisableImageLoading_(Lads_mobile_sdk/h42;Z)V

    return-void
.end method

.method public final i()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/h42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/h42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/h42;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputisBannerAllowed_(Lads_mobile_sdk/h42;Z)V

    return-void
.end method

.method public final j()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/h42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/h42;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/h42;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputisNativeAllowed_(Lads_mobile_sdk/h42;Z)V

    return-void
.end method

.method public final k()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/h42;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/h42;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/h42;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputbitField0_(Lads_mobile_sdk/h42;I)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lads_mobile_sdk/h42;->-$$Nest$fputuseCustomMute_(Lads_mobile_sdk/h42;Z)V

    return-void
.end method
