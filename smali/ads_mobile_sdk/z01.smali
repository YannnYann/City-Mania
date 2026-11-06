###### Class ads_mobile_sdk.z01 (ads_mobile_sdk.z01)
.class public final Lads_mobile_sdk/z01;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1192
    invoke-static {}, Lads_mobile_sdk/a11;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/a11;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/a11;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/a11;->-$$Nest$fputcount_(Lads_mobile_sdk/a11;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/nt1;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/a11;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Lads_mobile_sdk/nt1;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/a11;->-$$Nest$fputformat_(Lads_mobile_sdk/a11;I)V

    return-void
.end method
