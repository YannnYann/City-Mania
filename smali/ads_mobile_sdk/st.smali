###### Class ads_mobile_sdk.st (ads_mobile_sdk.st)
.class public final Lads_mobile_sdk/st;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1584
    invoke-static {}, Lads_mobile_sdk/tt;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/tt;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/jt;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/tt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget p1, p1, Lads_mobile_sdk/jt;->a:I

    .line 8
    invoke-static {v0, p1}, Lads_mobile_sdk/tt;->-$$Nest$fputerrorType_(Lads_mobile_sdk/tt;I)V

    .line 9
    invoke-static {v0}, Lads_mobile_sdk/tt;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/tt;)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lads_mobile_sdk/tt;->-$$Nest$fputbitField0_(Lads_mobile_sdk/tt;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/tt;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/tt;->b(Ljava/lang/String;)V

    return-void
.end method
