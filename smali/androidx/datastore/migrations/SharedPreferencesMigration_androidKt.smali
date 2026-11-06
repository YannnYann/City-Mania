###### Class androidx.datastore.migrations.SharedPreferencesMigration_androidKt (androidx.datastore.migrations.SharedPreferencesMigration_androidKt)
.class public final Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;
.super Ljava/lang/Object;
.source "SharedPreferencesMigration.android.kt"


# static fields
.field public static final MIGRATE_ALL_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 322
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-void
.end method

.method public static final getMIGRATE_ALL_KEYS()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-object v0
.end method
