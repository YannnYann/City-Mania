###### Class ads_mobile_sdk.i01 (ads_mobile_sdk.i01)
.class public abstract Lads_mobile_sdk/i01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/v01;


# instance fields
.field public final b:Lads_mobile_sdk/kk1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kk1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/i01;->b:Lads_mobile_sdk/kk1;

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/kk1;I)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;)V

    return-void
.end method


# virtual methods
.method public a()Lads_mobile_sdk/kk1;
    .registers 2

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/i01;->b:Lads_mobile_sdk/kk1;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
