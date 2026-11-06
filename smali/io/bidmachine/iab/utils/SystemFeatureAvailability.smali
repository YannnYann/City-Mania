###### Class io.bidmachine.iab.utils.SystemFeatureAvailability (io.bidmachine.iab.utils.SystemFeatureAvailability)
.class public Lio/bidmachine/iab/utils/SystemFeatureAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/utils/SystemFeatureAvailability;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hasTelephony()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/SystemFeatureAvailability;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
