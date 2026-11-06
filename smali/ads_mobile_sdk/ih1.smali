###### Class ads_mobile_sdk.ih1 (ads_mobile_sdk.ih1)
.class public final Lads_mobile_sdk/ih1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 555
    invoke-static {}, Lads_mobile_sdk/kh1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/kh1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    .line 8
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/kh1;->-$$Nest$fputinstallBeginTimestampSeconds_(Lads_mobile_sdk/kh1;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/jh1;)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p1}, Lads_mobile_sdk/jh1;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/kh1;->-$$Nest$fputinstallReferrerErrorCode_(Lads_mobile_sdk/kh1;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/kh1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/kh1;->-$$Nest$fputgooglePlayInstant_(Lads_mobile_sdk/kh1;Z)V

    return-void
.end method

.method public final b(J)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    .line 4
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/kh1;->-$$Nest$fputinstallBeginTimestampServerSeconds_(Lads_mobile_sdk/kh1;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/kh1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(J)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    .line 4
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/kh1;->-$$Nest$fputreferrerClickTimestampSeconds_(Lads_mobile_sdk/kh1;J)V

    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/kh1;

    .line 4
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/kh1;->-$$Nest$fputreferrerClickTimestampServerSeconds_(Lads_mobile_sdk/kh1;J)V

    return-void
.end method
