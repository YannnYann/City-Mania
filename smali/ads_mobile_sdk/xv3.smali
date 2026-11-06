###### Class ads_mobile_sdk.xv3 (ads_mobile_sdk.xv3)
.class public Lads_mobile_sdk/xv3;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tw1;)V
    .registers 2

    .line 29
    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/xv3;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lads_mobile_sdk/np1;
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/np1;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
