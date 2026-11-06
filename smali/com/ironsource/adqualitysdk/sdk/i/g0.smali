###### Class com.ironsource.adqualitysdk.sdk.i.C3484g0 (com.ironsource.adqualitysdk.sdk.i.g0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻛ:Ljava/lang/String;


# instance fields
.field public ｋ:Z

.field public ﾇ:Ljava/lang/ref/WeakReference;

.field public final ﾒ:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ZKHRfrIZmQhLsNZGqBWBIw==\n"

    const-string v1, "M8SzKNt87k0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﻛ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾒ:Ljava/lang/ref/WeakReference;

    return-void
.end method
