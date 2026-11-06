###### Class ads_mobile_sdk.i80 (ads_mobile_sdk.i80)
.class public final Lads_mobile_sdk/i80;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lads_mobile_sdk/ra0;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ra0;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/aa0;)Lads_mobile_sdk/i80;
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->a(Lads_mobile_sdk/aa0;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/k80;)Lads_mobile_sdk/i80;
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->a(Lads_mobile_sdk/k80;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/x90;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/y90;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->a(Lads_mobile_sdk/y90;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/i80;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lads_mobile_sdk/i80;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ra0;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Lads_mobile_sdk/i80;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ra0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    .line 2
    invoke-static {v0, v1}, Lads_mobile_sdk/ra0;->-$$Nest$fputtype_(Lads_mobile_sdk/ra0;I)V

    .line 3
    invoke-static {v0}, Lads_mobile_sdk/ra0;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ra0;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lads_mobile_sdk/ra0;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ra0;I)V

    return-object p0
.end method
