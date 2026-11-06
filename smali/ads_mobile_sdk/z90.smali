###### Class ads_mobile_sdk.z90 (ads_mobile_sdk.z90)
.class public final Lads_mobile_sdk/z90;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54059
    invoke-static {}, Lads_mobile_sdk/aa0;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/aa0;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/aa0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/aa0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/aa0;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/aa0;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/aa0;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/aa0;->-$$Nest$fputbitField0_(Lads_mobile_sdk/aa0;I)V

    .line 9
    invoke-static {v0, p1}, Lads_mobile_sdk/aa0;->-$$Nest$fputisInstantApps_(Lads_mobile_sdk/aa0;Z)V

    return-void
.end method
