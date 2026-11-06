###### Class ads_mobile_sdk.z93 (ads_mobile_sdk.z93)
.class public final Lads_mobile_sdk/z93;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 414
    invoke-static {}, Lads_mobile_sdk/ba3;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ba3;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/aa3;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ba3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lads_mobile_sdk/aa3;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/ba3;->-$$Nest$fputevictionReason_(Lads_mobile_sdk/ba3;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/x11;)V
    .registers 3

    .line 9
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ba3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Lads_mobile_sdk/x11;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/ba3;->-$$Nest$fputscarRequestType_(Lads_mobile_sdk/ba3;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ba3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ba3;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ba3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ba3;->c(Ljava/lang/String;)V

    return-void
.end method
