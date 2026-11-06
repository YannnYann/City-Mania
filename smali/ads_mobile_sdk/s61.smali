###### Class ads_mobile_sdk.s61 (ads_mobile_sdk.s61)
.class public final Lads_mobile_sdk/s61;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 337
    invoke-static {}, Lads_mobile_sdk/u61;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/u61;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;
    .registers 3

    .line 374
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 375
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/u61;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    invoke-virtual {p1}, Lads_mobile_sdk/t61;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/u61;->-$$Nest$fputaction_(Lads_mobile_sdk/u61;I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lads_mobile_sdk/s61;
    .registers 3

    .line 788
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 789
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/u61;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/u61;->b(Ljava/lang/String;)V

    return-object p0
.end method
