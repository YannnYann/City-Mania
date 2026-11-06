###### Class org.chromium.support_lib_boundary.ProcessGlobalConfigConstants (org.chromium.support_lib_boundary.ProcessGlobalConfigConstants)
.class public final Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants;
.super Ljava/lang/Object;
.source "ProcessGlobalConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey;
    }
.end annotation


# static fields
.field public static final CACHE_DIRECTORY_BASE_PATH:Ljava/lang/String; = "CACHE_DIRECTORY_BASE_PATH"

.field public static final CONFIGURE_PARTITIONED_COOKIES:Ljava/lang/String; = "CONFIGURE_PARTITIONED_COOKIES"

.field public static final DATA_DIRECTORY_BASE_PATH:Ljava/lang/String; = "DATA_DIRECTORY_BASE_PATH"

.field public static final DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "DATA_DIRECTORY_SUFFIX"

.field public static final UI_THREAD_STARTUP_MODE:Ljava/lang/String; = "UI_THREAD_STARTUP_MODE"

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_LONG_TASKS:I = 0x1

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_PLUS_MULTI_PROCESS:I = 0x4

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_SHORT_TASKS:I = 0x2

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_VERY_SHORT_TASKS:I = 0x3

.field public static final UI_THREAD_STARTUP_MODE_DEFAULT:I = -0x1

.field public static final UI_THREAD_STARTUP_MODE_SYNC:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.chromium.support_lib_boundary.ProcessGlobalConfigConstants.ProcessGlobalConfigMapKey (org.chromium.support_lib_boundary.ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey)
.class public interface abstract annotation Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey;
.super Ljava/lang/Object;
.source "ProcessGlobalConfigConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProcessGlobalConfigMapKey"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
