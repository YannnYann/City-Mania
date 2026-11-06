###### Class ads_mobile_sdk.xl3 (ads_mobile_sdk.xl3)
.class public abstract Lads_mobile_sdk/xl3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method
