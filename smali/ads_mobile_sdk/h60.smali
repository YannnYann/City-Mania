###### Class ads_mobile_sdk.h60 (ads_mobile_sdk.h60)
.class public final Lads_mobile_sdk/h60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/h60;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/h60;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/h60;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/i2;

    iget-object v1, p0, Lads_mobile_sdk/h60;->b:Lads_mobile_sdk/dw2;

    .line 3
    const-string v2, "adConfiguration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clearLocalStorageGmsgHandler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v2, Lads_mobile_sdk/v40;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/v40;-><init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/dw2;)V

    return-object v2
.end method
