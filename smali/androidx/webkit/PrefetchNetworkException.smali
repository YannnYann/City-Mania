###### Class androidx.webkit.PrefetchNetworkException (androidx.webkit.PrefetchNetworkException)
.class public Landroidx/webkit/PrefetchNetworkException;
.super Landroidx/webkit/PrefetchException;
.source "PrefetchNetworkException.java"


# instance fields
.field public final httpResponseStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Landroidx/webkit/PrefetchException;-><init>(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Landroidx/webkit/PrefetchNetworkException;->httpResponseStatusCode:I

    return-void
.end method
