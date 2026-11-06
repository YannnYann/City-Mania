###### Class ads_mobile_sdk.mx (ads_mobile_sdk.mx)
.class public final Lads_mobile_sdk/mx;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 559
    invoke-static {}, Lads_mobile_sdk/nx;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/nx;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final h()V
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/lx;->b:Lads_mobile_sdk/lx;

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v1, Lads_mobile_sdk/nx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/lx;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lads_mobile_sdk/nx;->-$$Nest$fputbinaryName_(Lads_mobile_sdk/nx;I)V

    return-void
.end method
