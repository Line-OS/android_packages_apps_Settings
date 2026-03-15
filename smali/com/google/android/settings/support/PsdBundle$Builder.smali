.class public Lcom/google/android/settings/support/PsdBundle$Builder;
.super Ljava/lang/Object;
.source "PsdBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/support/PsdBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final CALL_STATISTICS_PATH:Ljava/lang/String;

.field private final DIAGNOSTICS_PATH:Ljava/lang/String;

.field private final TELEPHONY_AUTHORITY:Ljava/lang/String;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mContext:Landroid/content/Context;

.field private mPsdValuesSize:J

.field private mPsdValuesSizeLimit:J

.field private mSignalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 179
    iput-wide v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    const-string v0, "com.google.android.connectivitymonitor.troubleshooterprovider"

    .line 184
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->TELEPHONY_AUTHORITY:Ljava/lang/String;

    const-string v0, "call_statistics"

    .line 187
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->CALL_STATISTICS_PATH:Ljava/lang/String;

    const-string v0, "diagnostics"

    .line 189
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->DIAGNOSTICS_PATH:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    .line 193
    iput-wide p2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSizeLimit:J

    .line 194
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/support/PsdBundle$Builder;)Ljava/util/List;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/support/PsdBundle$Builder;)Ljava/util/List;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    return-object p0
.end method

.method private addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 6

    .line 410
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 411
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.connectivitymonitor.troubleshooterprovider"

    .line 412
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 416
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/google/android/settings/support/PsdBundle;->access$300()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 416
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 448
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    .line 423
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 425
    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 448
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :cond_4
    :try_start_1
    const-string v0, "KEY"

    .line 433
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "VALUE"

    .line 434
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 444
    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 447
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    .line 448
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object p0

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object p0

    :catchall_0
    move-exception p0

    .line 416
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_b

    .line 448
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v0
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 457
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    const-string v4, "user"

    .line 458
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 457
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object p0
.end method

.method private getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string p0, "bluetooth"

    .line 511
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEncodedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 499
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 506
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addTopBatteryApps$0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    .line 245
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide p0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private processBTDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;[Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object p1

    move v2, v1

    move v3, v2

    move v4, v3

    .line 479
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 480
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 481
    instance-of v6, v5, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v6, :cond_0

    invoke-interface {v5, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v0

    .line 484
    :cond_0
    instance-of v6, v5, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v6, :cond_1

    invoke-interface {v5, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    move v4, v3

    .line 491
    :cond_3
    aget-object p1, p2, v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/settings/support/PsdBundle$Builder;->getEncodedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    aget-object p1, p2, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 495
    aget-object p1, p2, p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addBatteryAnomalyApps()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 9

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getAnomalyAppList()Ljava/util/List;

    move-result-object v2

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 291
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 292
    iget-object v6, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 293
    iget-object v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "noe_battery_anomaly_names"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_battery_anomaly_types"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addConnectedBluetoothDevicesSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 8

    .line 318
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/StringBuilder;

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 324
    iget-object v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 326
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-direct {p0, v2, v1, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->processBTDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;[Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 332
    :cond_1
    array-length v0, v1

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v6, v1, v2

    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 335
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    :cond_3
    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "noe_connected_bluetooth_devices"

    .line 343
    invoke-virtual {p0, v3, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "noe_connected_bluetooth_devices_headset"

    .line 344
    invoke-virtual {p0, v0, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "noe_connected_bluetooth_devices_a2dp"

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addPairedBluetoothDevices()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 359
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->getEncodedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_paired_bluetooth_devices"

    .line 367
    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    .line 213
    iget-wide v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSizeLimit:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-wide p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    return-object p0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTelephonyTroubleshooterDiagnosticSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 2

    const-string v0, "noe_telephony_diagnostic_signal_flag"

    const-string v1, ""

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "diagnostics"

    .line 397
    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addTelephonyTroubleshooterStatisticsSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 2

    const-string v0, "noe_telephony_stats_signal_flag"

    const-string v1, ""

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "call_statistics"

    .line 383
    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addTopBatteryApps()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 19

    move-object/from16 v0, p0

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v12

    int-to-double v3, v2

    div-double v14, v12, v3

    .line 242
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 244
    sget-object v3, Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$tP7agSqdtiPjsbVQCpIx6atCWM8;->INSTANCE:Lcom/google/android/settings/support/-$$Lambda$PsdBundle$Builder$tP7agSqdtiPjsbVQCpIx6atCWM8;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 251
    iget-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    cmpg-double v5, v5, v14

    if-gez v5, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v5, v0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 258
    iget-object v5, v0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    const-wide/16 v16, 0x0

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v12

    move-object/from16 v18, v1

    move-object v1, v9

    move-wide/from16 v9, v16

    move-wide/from16 v16, v12

    move-object v12, v11

    move v11, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    .line 260
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v11, v12

    move-wide/from16 v12, v16

    move-object/from16 v1, v18

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v12

    goto :goto_0

    :cond_2
    move-object v12, v11

    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 266
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, v2, -0x1

    .line 270
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noe_battery_usage_names"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 274
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noe_battery_usage_percentages"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object v0
.end method

.method public build()Lcom/google/android/settings/support/PsdBundle;
    .locals 2

    .line 198
    new-instance v0, Lcom/google/android/settings/support/PsdBundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/support/PsdBundle;-><init>(Lcom/google/android/settings/support/PsdBundle$Builder;Lcom/google/android/settings/support/PsdBundle$1;)V

    return-object v0
.end method

.method getAnomalyAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-object v1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 403
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionActiveHour:I

    int-to-long v4, v0

    .line 405
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 403
    invoke-static {p0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->detectAnomalies(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
