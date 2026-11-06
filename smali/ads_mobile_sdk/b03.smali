###### Class ads_mobile_sdk.b03 (ads_mobile_sdk.b03)
.class public final Lads_mobile_sdk/b03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/he0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/b03;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/b03;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/b03;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/qn2;

    iget-object v1, p0, Lads_mobile_sdk/b03;->b:Lads_mobile_sdk/dw2;

    .line 3
    new-instance v2, Lads_mobile_sdk/a03;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/a03;-><init>(Lads_mobile_sdk/qn2;Lads_mobile_sdk/dw2;)V

    return-object v2
.end method
