###### Class ads_mobile_sdk.ng1 (ads_mobile_sdk.ng1)
.class public final Lads_mobile_sdk/ng1;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 637
    invoke-static {}, Lads_mobile_sdk/og1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/og1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    .line 15
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/og1;->-$$Nest$fputnetworkExtrasExpirationSecs_(Lads_mobile_sdk/og1;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/vd1;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Lads_mobile_sdk/vd1;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/og1;->-$$Nest$fputgesture_(Lads_mobile_sdk/og1;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/og1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 9
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    .line 11
    invoke-static {v0, p1}, Lads_mobile_sdk/og1;->-$$Nest$fputisGloballyAllowlisted_(Lads_mobile_sdk/og1;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/og1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    .line 7
    invoke-static {v0, p1}, Lads_mobile_sdk/og1;->-$$Nest$fputisLinkedDevice_(Lads_mobile_sdk/og1;Z)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/og1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/og1;->-$$Nest$fputisTestMode_(Lads_mobile_sdk/og1;Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/og1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/og1;->e(Ljava/lang/String;)V

    return-void
.end method
