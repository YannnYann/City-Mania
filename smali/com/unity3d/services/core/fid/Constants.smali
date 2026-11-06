###### Class com.unity3d.services.core.fid.Constants (com.unity3d.services.core.fid.Constants)
.class public final Lcom/unity3d/services/core/fid/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/fid/Constants$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/services/core/fid/Constants$Companion;

.field public static final FID_CLASS:Ljava/lang/String; = "com.google.firebase.analytics.FirebaseAnalytics"

.field public static final GET_APP_INSTANCE_ID:Ljava/lang/String; = "getAppInstanceId"

.field public static final GET_INSTANCE:Ljava/lang/String; = "getInstance"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/services/core/fid/Constants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/fid/Constants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/services/core/fid/Constants;->Companion:Lcom/unity3d/services/core/fid/Constants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.core.fid.Constants.Companion (com.unity3d.services.core.fid.Constants$Companion)
.class public final Lcom/unity3d/services/core/fid/Constants$Companion;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/fid/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/services/core/fid/Constants$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    .line 6
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    return-object v0
.end method
