###### Class ads_mobile_sdk.wc2 (ads_mobile_sdk.wc2)
.class public final Lads_mobile_sdk/wc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/kd2;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Landroid/webkit/WebView;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wc2;->a:Lads_mobile_sdk/kd2;

    iput-object p2, p0, Lads_mobile_sdk/wc2;->b:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lads_mobile_sdk/wc2;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wc2;->a:Lads_mobile_sdk/kd2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/kd2;->j:Lads_mobile_sdk/bj2;

    .line 4
    iget-object v1, p0, Lads_mobile_sdk/wc2;->b:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lads_mobile_sdk/wc2;->c:Z

    .line 5
    new-instance v3, Lads_mobile_sdk/aq1;

    invoke-direct {v3, v0, v1, v2}, Lads_mobile_sdk/aq1;-><init>(Lads_mobile_sdk/bj2;Landroid/webkit/WebView;Z)V

    return-object v3
.end method
