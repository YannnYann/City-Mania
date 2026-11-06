###### Class com.unity3d.services.store.gpbl.bridges.billingclient.FallbackException (com.unity3d.services.store.gpbl.bridges.billingclient.FallbackException)
.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/FallbackException;
.super Ljava/lang/Exception;
.source "FallbackException.kt"


# instance fields
.field private final detectedVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/FallbackException;->detectedVersion:I

    return-void
.end method


# virtual methods
.method public final getDetectedVersion()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/FallbackException;->detectedVersion:I

    return v0
.end method
