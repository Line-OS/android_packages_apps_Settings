.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field public suggestionLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return p0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 9

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    new-instance v8, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    .line 230
    iput-object p2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 231
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 232
    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "plugged"

    .line 233
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 234
    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 237
    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 238
    iget-boolean v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v2, :cond_1

    .line 239
    invoke-static {p0, p6, p3, v8}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, v8

    .line 241
    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V

    :goto_0
    const-string p0, "BatteryInfo"

    const-string p1, "time for getBatteryInfo"

    .line 243
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Z)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 18

    move-object/from16 v0, p0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 171
    new-instance v5, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 173
    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v5

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v5

    :goto_0
    const-string v6, "BatteryInfo"

    const-string v7, "time for getStats"

    .line 178
    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 182
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v7

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v8

    .line 186
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const/4 v10, -0x1

    const-string v11, "plugged"

    .line 190
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    .line 193
    invoke-interface {v7, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 194
    invoke-interface {v7, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 196
    invoke-static {v0, v7}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    const-string v4, "time for enhanced BatteryInfo"

    .line 198
    invoke-static {v6, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v7

    move-wide v4, v8

    move/from16 v6, p2

    .line 199
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v4, :cond_3

    .line 204
    invoke-virtual {v5, v8, v9}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    .line 205
    :goto_2
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 206
    invoke-static {v10, v11}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v13

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    const-string v7, "time for regular BatteryInfo"

    .line 209
    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-wide v4, v8

    move/from16 v6, p2

    .line 210
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 163
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public static getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7

    .line 217
    new-instance v6, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 218
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-wide v4, p3

    move v6, p5

    .line 221
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_8

    .line 321
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const/4 v8, 0x1

    move-wide v9, v6

    move-wide v11, v9

    move-wide v14, v11

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    move/from16 v19, v8

    const/4 v13, 0x0

    const/16 v18, 0x0

    .line 322
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v22

    if-eqz v22, :cond_7

    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v23, v9

    if-eqz v19, :cond_0

    .line 326
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v8

    const/16 v19, 0x0

    .line 328
    :cond_0
    iget-byte v8, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v8, v4, :cond_2

    if-ne v8, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v3, v23

    goto :goto_2

    .line 338
    :cond_2
    :goto_1
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v23, 0x39ef8b000L

    add-long v16, v16, v23

    cmp-long v8, v8, v16

    if-gtz v8, :cond_3

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v16, 0x493e0

    add-long v16, v20, v16

    cmp-long v8, v8, v16

    if-gez v8, :cond_4

    :cond_3
    move-wide v11, v6

    .line 342
    :cond_4
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 343
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v16, v11, v6

    if-nez v16, :cond_5

    sub-long v11, v3, v20

    sub-long v11, v8, v11

    :cond_5
    move-wide/from16 v16, v8

    .line 348
    :goto_2
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 350
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v9, v3

    move/from16 v13, v18

    goto :goto_3

    :cond_6
    move-wide v9, v3

    :goto_3
    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    move-wide/from16 v23, v9

    goto :goto_4

    :cond_8
    move-wide v11, v6

    move-wide v14, v11

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    move-wide/from16 v23, v20

    const/4 v13, 0x0

    .line 354
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long v16, v16, v14

    sub-long v2, v16, v23

    const/4 v4, 0x0

    .line 360
    :goto_5
    array-length v8, v1

    if-ge v4, v8, :cond_9

    .line 361
    aget-object v8, v1, v4

    invoke-interface {v8, v11, v12, v2, v3}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    cmp-long v2, v2, v11

    if-lez v2, :cond_13

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 364
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-wide v8, v6

    const/4 v3, 0x0

    .line 365
    :goto_6
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-ge v3, v13, :cond_13

    .line 366
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 367
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v16, v14, v23

    add-long v8, v8, v16

    sub-long v16, v8, v11

    cmp-long v4, v16, v6

    if-gez v4, :cond_a

    move-wide v5, v6

    goto :goto_7

    :cond_a
    move-wide/from16 v5, v16

    :goto_7
    const/4 v7, 0x0

    .line 373
    :goto_8
    array-length v4, v1

    if-ge v7, v4, :cond_b

    .line 374
    aget-object v4, v1, v7

    invoke-interface {v4, v5, v6, v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    move-wide/from16 v23, v14

    const/4 v5, 0x7

    const/4 v10, 0x5

    goto :goto_d

    .line 378
    :cond_c
    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-eq v4, v5, :cond_e

    const/4 v5, 0x7

    if-ne v4, v5, :cond_d

    goto :goto_9

    :cond_d
    move-wide v6, v8

    move-wide/from16 v14, v23

    goto :goto_b

    :cond_e
    const/4 v5, 0x7

    .line 380
    :goto_9
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v4, v6, v11

    if-ltz v4, :cond_f

    goto :goto_a

    .line 383
    :cond_f
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v6, v6, v20

    add-long/2addr v6, v11

    .line 385
    :goto_a
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 388
    :goto_b
    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x6

    if-eq v4, v10, :cond_11

    const/4 v10, 0x5

    if-ne v4, v10, :cond_10

    sub-long/2addr v8, v6

    .line 390
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v22, 0x36ee80

    cmp-long v4, v8, v22

    if-lez v4, :cond_12

    :cond_10
    const/4 v4, 0x0

    .line 391
    :goto_c
    array-length v8, v1

    if-ge v4, v8, :cond_12

    .line 392
    aget-object v8, v1, v4

    invoke-interface {v8}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_11
    const/4 v10, 0x5

    :cond_12
    move-wide v8, v6

    move-wide/from16 v23, v14

    :goto_d
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0x0

    goto :goto_6

    .line 400
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/4 v0, 0x0

    .line 402
    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 403
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 5

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p2

    const/4 p4, 0x1

    const-string v1, "status"

    .line 251
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    .line 253
    iput-boolean v1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const/4 v2, 0x0

    .line 254
    iput-object v2, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    const/4 v4, 0x2

    if-lez v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    .line 256
    iput-wide p2, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 257
    iget-wide p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 258
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    long-to-double p1, p1

    .line 257
    invoke-static {p0, p1, p2, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    const p2, 0x7f120b34

    const p3, 0x7f120b41

    new-array v0, p4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 260
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    new-array p3, v4, [Ljava/lang/Object;

    .line 262
    iget-object v0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v0, p3, v1

    aput-object p1, p3, p4

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const p0, 0x7f12024e

    .line 264
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 266
    iput-object v2, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 267
    iget p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    iget-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const p1, 0x7f120b33

    new-array p2, v4, [Ljava/lang/Object;

    .line 268
    iget-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p3, p2, v1

    aput-object p0, p2, p4

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 8

    .line 275
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 277
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 280
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    .line 282
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    .line 278
    :goto_0
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 286
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    iget-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 288
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    .line 284
    :goto_1
    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 291
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryTipStringFormatted(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_2
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 294
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    .line 295
    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_2
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 8

    .line 63
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    .line 123
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    const/4 v4, 0x0

    move v5, v4

    .line 124
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 125
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_0
    array-length p2, p2

    aput-object v1, v2, p2

    .line 128
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static {p2, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    const p2, 0x7f1203ff

    new-array v1, v3, [Ljava/lang/Object;

    .line 129
    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 130
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 129
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 132
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    const p0, 0x7f120c2f

    new-array v5, v3, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    .line 133
    div-long/2addr v1, v6

    .line 134
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 133
    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, v4

    aput-object p0, v0, v3

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method
