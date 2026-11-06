###### Class ads_mobile_sdk.pd2 (ads_mobile_sdk.pd2)
.class public final Lads_mobile_sdk/pd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lads_mobile_sdk/qd2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qd2;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 281
    iput-object p1, p0, Lads_mobile_sdk/pd2;->c:Lads_mobile_sdk/qd2;

    iput-object p2, p0, Lads_mobile_sdk/pd2;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lads_mobile_sdk/pd2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 284
    iget-object v0, p0, Lads_mobile_sdk/pd2;->c:Lads_mobile_sdk/qd2;

    iget-object v1, p0, Lads_mobile_sdk/pd2;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lads_mobile_sdk/pd2;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
