###### Class ads_mobile_sdk.qa (ads_mobile_sdk.qa)
.class public final Lads_mobile_sdk/qa;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 406
    invoke-static {}, Lads_mobile_sdk/ra;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ra;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final h()Lads_mobile_sdk/qa;
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/pa;->b:Lads_mobile_sdk/pa;

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v1, Lads_mobile_sdk/ra;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/pa;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lads_mobile_sdk/ra;->-$$Nest$fputbinaryName_(Lads_mobile_sdk/ra;I)V

    .line 5
    invoke-static {v1}, Lads_mobile_sdk/ra;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ra;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lads_mobile_sdk/ra;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ra;I)V

    return-object p0
.end method
