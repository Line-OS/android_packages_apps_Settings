.class public Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;
.super Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.source "PowerUsageFeatureProviderGoogleImpl.java"


# static fields
.field static final AVERAGE_BATTERY_LIFE_COL:Ljava/lang/String; = "average_battery_life"

.field static final BATTERY_ESTIMATE_BASED_ON_USAGE_COL:Ljava/lang/String; = "is_based_on_usage"

.field static final BATTERY_ESTIMATE_COL:Ljava/lang/String; = "battery_estimate"

.field static final BATTERY_LEVEL_COL:Ljava/lang/String; = "battery_level"

.field static final CUSTOMIZED_TO_USER:I = 0x1

.field static final GFLAG_ADDITIONAL_BATTERY_INFO_ENABLED:Ljava/lang/String; = "settingsgoogle:additional_battery_info_enabled"

.field static final GFLAG_BATTERY_ADVANCED_UI_ENABLED:Ljava/lang/String; = "settingsgoogle:battery_advanced_ui_enabled"

.field static final GFLAG_POWER_ACCOUNTING_TOGGLE_ENABLED:Ljava/lang/String; = "settingsgoogle:power_accounting_toggle_enabled"

.field static final IS_EARLY_WARNING_COL:Ljava/lang/String; = "is_early_warning"

.field static final NEED_EARLY_WARNING:I = 0x1

.field private static final PACKAGES_SERVICE:[Ljava/lang/String;

.field static final TIMESTAMP_COL:Ljava/lang/String; = "timestamp_millis"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.apps.gcs"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->PACKAGES_SERVICE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getEnhancedBatteryPredictionCurveUri()Landroid/net/Uri;
    .locals 1

    .line 218
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 219
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 220
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "discharge_curve"

    .line 221
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getEnhancedBatteryPredictionUri()Landroid/net/Uri;
    .locals 1

    .line 210
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 211
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 212
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "time_remaining"

    .line 213
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAdvancedUsageScreenInfoString()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1200df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 242
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 243
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 244
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "early_warning"

    .line 245
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "id"

    .line 246
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-eqz p0, :cond_4

    .line 257
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "is_early_warning"

    .line 259
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    move p2, v1

    :cond_1
    if-eqz p0, :cond_2

    .line 261
    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    return p2

    :catchall_0
    move-exception p1

    .line 255
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_3

    .line 261
    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw p2

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    return p2
.end method

.method public getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 9

    .line 131
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->getEnhancedBatteryPredictionUri()Landroid/net/Uri;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    .line 136
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_based_on_usage"

    .line 138
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 141
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :cond_1
    :goto_0
    move v3, v2

    const-string v0, "average_battery_life"

    .line 145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v4, -0x1

    if-eq v0, v1, :cond_3

    .line 148
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    const-wide/16 v4, 0xf

    .line 151
    invoke-static {v4, v5}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 152
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 153
    invoke-static {v6, v7}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 155
    :cond_2
    invoke-static {v0, v1, v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v0

    move-wide v4, v0

    :cond_3
    const-string v0, "battery_estimate"

    .line 162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 164
    new-instance v6, Lcom/android/settingslib/fuelgauge/Estimate;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    .line 166
    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    return-object v6

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_5

    .line 166
    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v0

    :cond_6
    if-eqz p0, :cond_7

    invoke-static {p1, p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_7
    return-object p1
.end method

.method public getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
    .locals 6

    .line 173
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->getEnhancedBatteryPredictionCurveUri()Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 185
    invoke-static {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :cond_1
    :try_start_1
    const-string v0, "timestamp_millis"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "battery_level"

    .line 179
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 180
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 181
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sub-long/2addr v3, p2

    long-to-int v3, v3

    .line 183
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 182
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 185
    :try_start_2
    invoke-static {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v2

    :catchall_0
    move-exception p2

    .line 174
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_4

    .line 185
    :try_start_4
    invoke-static {p2, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p3
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object p0
.end method

.method public getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120b4f

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 232
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120b53

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->isTurboEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 197
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "com.google.android.apps.turbo"

    const/16 v1, 0x200

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 200
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method isTurboEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "com.google.android.apps.turbo"

    const-string v0, "NudgesBatteryEstimates__estimated_time_remaining_provider_enabled"

    const/4 v1, 0x0

    .line 270
    invoke-static {p1, p0, v0, v1}, Lcom/google/android/settings/experiments/PhenotypeProxy;->getFlagByPackageAndKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 4

    .line 104
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 109
    :cond_0
    array-length v0, p0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 110
    sget-object v3, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->PACKAGES_SERVICE:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
