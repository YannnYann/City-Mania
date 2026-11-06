###### Class ads_mobile_sdk.g22 (ads_mobile_sdk.g22)
.class public final Lads_mobile_sdk/g22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h22;)V
    .registers 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-object p1, p1, Lads_mobile_sdk/h22;->e:Landroid/webkit/WebView;

    iput-object p1, p0, Lads_mobile_sdk/g22;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 161
    iget-object v0, p0, Lads_mobile_sdk/g22;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
