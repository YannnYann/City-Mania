###### Class ads_mobile_sdk.sx0 (ads_mobile_sdk.sx0)
.class public final Lads_mobile_sdk/sx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ty3;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/tx0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lads_mobile_sdk/ty3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/ty3;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lads_mobile_sdk/sx0;->a:Lads_mobile_sdk/ty3;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/sx0;->b:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/sx0;->c:Lads_mobile_sdk/tx0;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/sx0;->d:Ljava/lang/String;

    return-void
.end method
