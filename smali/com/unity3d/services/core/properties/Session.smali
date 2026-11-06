###### Class com.unity3d.services.core.properties.Session (com.unity3d.services.core.properties.Session)
.class public interface abstract Lcom/unity3d/services/core/properties/Session;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/properties/Session$Default;
    }
.end annotation


# static fields
.field public static final Default:Lcom/unity3d/services/core/properties/Session$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/services/core/properties/Session$Default;->$$INSTANCE:Lcom/unity3d/services/core/properties/Session$Default;

    sput-object v0, Lcom/unity3d/services/core/properties/Session;->Default:Lcom/unity3d/services/core/properties/Session$Default;

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

###### Class com.unity3d.services.core.properties.Session.Default (com.unity3d.services.core.properties.Session$Default)
.class public final Lcom/unity3d/services/core/properties/Session$Default;
.super Ljava/lang/Object;
.source "Session.kt"

# interfaces
.implements Lcom/unity3d/services/core/properties/Session;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/properties/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/services/core/properties/Session$Default;

.field private static final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/properties/Session$Default;

    invoke-direct {v0}, Lcom/unity3d/services/core/properties/Session$Default;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/properties/Session$Default;->$$INSTANCE:Lcom/unity3d/services/core/properties/Session$Default;

    .line 7
    sget-object v0, Lcom/unity3d/services/core/properties/SessionIdReader;->INSTANCE:Lcom/unity3d/services/core/properties/SessionIdReader;

    invoke-virtual {v0}, Lcom/unity3d/services/core/properties/SessionIdReader;->getSessionId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/Session$Default;->id:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 7
    sget-object v0, Lcom/unity3d/services/core/properties/Session$Default;->id:Ljava/lang/String;

    return-object v0
.end method
