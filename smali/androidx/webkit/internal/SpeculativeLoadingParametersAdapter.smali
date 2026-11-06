###### Class androidx.webkit.internal.SpeculativeLoadingParametersAdapter (androidx.webkit.internal.SpeculativeLoadingParametersAdapter)
.class public Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;
.super Ljava/lang/Object;
.source "SpeculativeLoadingParametersAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/SpeculativeLoadingParametersBoundaryInterface;


# direct methods
.method public constructor <init>(Landroidx/webkit/SpeculativeLoadingParameters;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getNoVarySearchData()Ljava/lang/reflect/InvocationHandler;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isJavaScriptEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
