###### Class ads_mobile_sdk.ta3 (ads_mobile_sdk.ta3)
.class public final Lads_mobile_sdk/ta3;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 408
    invoke-static {}, Lads_mobile_sdk/ua3;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ua3;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ua3;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/ua3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ua3;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/ua3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ua3;I)V

    .line 9
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ua3;->-$$Nest$fputjseLastUpdateTimeMs_(Lads_mobile_sdk/ua3;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ua3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ua3;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ua3;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/ua3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ua3;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/ua3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ua3;I)V

    .line 9
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ua3;->-$$Nest$fputlastUpdateTimeMs_(Lads_mobile_sdk/ua3;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ua3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ua3;->c(Ljava/lang/String;)V

    return-void
.end method
