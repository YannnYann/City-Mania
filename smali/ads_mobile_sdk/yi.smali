###### Class ads_mobile_sdk.yi (ads_mobile_sdk.yi)
.class public final Lads_mobile_sdk/yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lads_mobile_sdk/yi;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/yi;->a:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v0

    .line 3
    new-instance v1, Lads_mobile_sdk/vi;

    invoke-direct {v1, v0}, Lads_mobile_sdk/vi;-><init>(Lads_mobile_sdk/ks1;)V

    return-object v1
.end method
