###### Class ads_mobile_sdk.ol0 (ads_mobile_sdk.ol0)
.class public final Lads_mobile_sdk/ol0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 65
    check-cast p0, Lads_mobile_sdk/ol0;

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/ol0;->a:Lads_mobile_sdk/dw2;

    if-nez v0, :cond_9

    .line 69
    iput-object p1, p0, Lads_mobile_sdk/ol0;->a:Lads_mobile_sdk/dw2;

    return-void

    .line 70
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/ol0;->a:Lads_mobile_sdk/dw2;

    if-eqz v0, :cond_9

    .line 39
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 40
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
