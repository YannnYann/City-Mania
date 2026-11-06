###### Class com.badlogic.gdx.backends.android.AndroidApplicationConfiguration (com.badlogic.gdx.backends.android.AndroidApplicationConfiguration)
.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.super Ljava/lang/Object;
.source "AndroidApplicationConfiguration.java"


# instance fields
.field public a:I

.field public b:I

.field public coverageSampling:Z

.field public depth:I

.field public disableAudio:Z

.field public g:I

.field public getTouchEventsForLiveWallpaper:Z

.field public maxNetThreads:I

.field public maxSimultaneousSounds:I

.field public nativeLoader:Lcom/badlogic/gdx/backends/android/GdxNativeLoader;

.field public numSamples:I

.field public r:I

.field public renderUnderCutout:Z

.field public resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public sensorDelay:I

.field public stencil:I

.field public useAccelerometer:Z

.field public useCompass:Z

.field public useGL30:Z

.field public useGyroscope:Z

.field public useImmersiveMode:Z

.field public useRotationVectorSensor:Z

.field public useWakelock:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    const/16 v0, 0x10

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    .line 39
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    .line 42
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->coverageSampling:Z

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    .line 48
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    .line 56
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    .line 66
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    .line 71
    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    .line 75
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    .line 78
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    .line 82
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    .line 85
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 88
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    .line 91
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    .line 96
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    .line 102
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->renderUnderCutout:Z

    .line 105
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->nativeLoader:Lcom/badlogic/gdx/backends/android/GdxNativeLoader;

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.AndroidApplicationConfiguration.AnonymousClass1 (com.badlogic.gdx.backends.android.AndroidApplicationConfiguration$1)
.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration$1;
.super Ljava/lang/Object;
.source "AndroidApplicationConfiguration.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/GdxNativeLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()V
    .registers 1

    .line 108
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    return-void
.end method
