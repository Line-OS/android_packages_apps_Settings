.class public Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;
.super Ljava/lang/Object;
.source "RestrictAppDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryTipDetector;


# static fields
.field static final USE_FAKE_DATA:Z = false


# instance fields
.field private mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

.field private mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 57
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    .line 59
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v4, v4, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionActiveHour:I

    int-to-long v4, v4

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->detectAnomalies(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object p0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->queryAllAnomalies(JI)Ljava/util/List;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-interface {p0}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 81
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 82
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object p0

    .line 85
    :cond_2
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object p0
.end method
