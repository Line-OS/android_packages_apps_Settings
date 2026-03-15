.class public Lcom/google/android/settings/support/PsdValuesLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "PsdValuesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/google/android/settings/support/PsdBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z

.field static final NOE_ALARM_MAX_VOLUME:Ljava/lang/String; = "noe_alarm_max_volume"

.field static final NOE_BATTERY_LEVEL:Ljava/lang/String; = "noe_battery_level"

.field static final NOE_BATTERY_SCALE:Ljava/lang/String; = "noe_battery_scale"

.field static final NOE_BATTERY_STATUS:Ljava/lang/String; = "noe_battery_status"

.field static final NOE_BRIGHTNESS_LEVEL:Ljava/lang/String; = "noe_brightness_level"

.field static final NOE_CAMERA_VERSION_CODE:Ljava/lang/String; = "noe_camera_version_code"

.field static final NOE_CAMERA_VERSION_NAME:Ljava/lang/String; = "noe_camera_version_name"

.field static final NOE_CELLULAR_DBM:Ljava/lang/String; = "noe_cellular_dbm"

.field static final NOE_CELLULAR_RADIO_TYPE:Ljava/lang/String; = "noe_cellular_radio_type"

.field static final NOE_CELLULAR_STRENGTH:Ljava/lang/String; = "noe_cellular_strength"

.field static final NOE_CHARGING_STATUS:Ljava/lang/String; = "noe_charging_status"

.field static final NOE_DEVICE_ACTIVATION_TIME:Ljava/lang/String; = "noe_device_activation_time"

.field static final NOE_IMEI:Ljava/lang/String; = "noe_imei"

.field static final NOE_LOCATION_MODE:Ljava/lang/String; = "noe_location_mode"

.field static final NOE_MUSIC_MAX_VOLUME:Ljava/lang/String; = "noe_music_max_volume"

.field static final NOE_NOTIFICATION_MAX_VOLUME:Ljava/lang/String; = "noe_notification_max_volume"

.field static final NOE_PREVIOUS_OS:Ljava/lang/String; = "noe_previous_os"

.field static final NOE_RINGER_MAX_VOLUME:Ljava/lang/String; = "noe_ringer_max_volume"

.field static final NOE_SYSTEM_MAX_VOLUME:Ljava/lang/String; = "noe_system_max_volume"

.field static final NOE_USB_DATA_ROLE:Ljava/lang/String; = "noe_usb_data_role"

.field static final NOE_USB_FUNCTIONS:Ljava/lang/String; = "noe_usb_functions"

.field static final NOE_USB_POWER_ROLE:Ljava/lang/String; = "noe_usb_power_role"

.field static final NOE_VOICE_CALL_MAX_VOLUME:Ljava/lang/String; = "noe_voice_call_max_volume"

.field static final NOE_WEAR_VERSION_CODE:Ljava/lang/String; = "noe_wear_version_code"

.field static final NOE_WEAR_VERSION_NAME:Ljava/lang/String; = "noe_wear_version_name"

.field static final NOE_WIFI_AVAILABLE:Ljava/lang/String; = "noe_wifi_available"

.field static final NOE_WIFI_CONNECTED:Ljava/lang/String; = "noe_wifi_connected"

.field static final NOE_WIFI_SECURITY_KEY_VALID:Ljava/lang/String; = "noe_wifi_security_key_valid"

.field static final NOE_WIFI_SPEED:Ljava/lang/String; = "noe_wifi_speed"

.field static final NOE_WIFI_STRENGTH:Ljava/lang/String; = "noe_wifi_strength"

.field static sUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/settings/support/PsdValuesLoader;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v0, "PsdValuesLoader"

    const/4 v1, 0x3

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    return-void
.end method

.method protected static dumpBatteryStats(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "batterystats"

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settingsgoogle:psd_battery_stats"

    const/4 v3, 0x0

    .line 636
    invoke-static {v1, v2, v3}, Lcom/google/android/settings/experiments/GServicesProxy;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "PsdValuesLoader"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 639
    sget-boolean p0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Not collecting battery_stats, skip."

    .line 640
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    .line 648
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v0, v3, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 653
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const-string v5, "-c"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 654
    sget-boolean v0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Failed to dump battery stats."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p0, :cond_5

    goto :goto_1

    .line 657
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 658
    invoke-static {p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_4

    .line 664
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v3

    :goto_0
    :try_start_2
    const-string v1, "IOException while dumping batterystats"

    .line 661
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    .line 664
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    return-object v3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_6
    throw v0
.end method

.method private static getCellularStrength(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 10

    .line 576
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    .line 582
    filled-new-array {p0, p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 588
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 589
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    .line 593
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    instance-of v9, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_1

    .line 596
    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v5

    .line 597
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v6

    .line 598
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    goto :goto_1

    .line 599
    :cond_1
    instance-of v9, v5, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_2

    .line 600
    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v5

    .line 601
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v6

    .line 602
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v7

    goto :goto_1

    .line 603
    :cond_2
    instance-of v9, v5, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_3

    .line 604
    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    .line 605
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v6

    .line 606
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    goto :goto_1

    .line 607
    :cond_3
    instance-of v9, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_4

    .line 608
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 609
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    .line 610
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v6

    .line 611
    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    .line 614
    :cond_4
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 618
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v4, 0x1

    if-lez p0, :cond_6

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    const/4 v0, 0x2

    .line 627
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method

.method static getDeviceAgeInDays(Landroid/content/ContentResolver;)J
    .locals 5

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "device_registration_time"

    const-wide/16 v3, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUsbMode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .line 562
    sget-object v0, Lcom/google/android/settings/support/PsdValuesLoader;->sUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 565
    :cond_0
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    move-object v0, v1

    .line 567
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v1

    .line 568
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result p0

    .line 569
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 571
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x2

    .line 572
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p0

    return-object v3
.end method

.method private static getWifiExtras(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 789
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 792
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 793
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    const-string p0, ""

    .line 797
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWifiStatus(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    const-string v0, "connectivity"

    .line 806
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_4

    .line 808
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_3

    aget-object v8, v0, v3

    .line 809
    invoke-virtual {p0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v8, :cond_2

    .line 810
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 812
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v6, v7

    .line 815
    :cond_0
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    move v5, v4

    goto :goto_1

    :cond_1
    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 821
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    return-object p0

    :cond_4
    const-string p0, ""

    .line 824
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasModifiedSystemProperties()Z
    .locals 2

    const-string v0, "ro.debuggable"

    .line 885
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.secure"

    .line 886
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static hasSuperUserBinary()Z
    .locals 4

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/sbin"

    .line 856
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin"

    .line 857
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/xbin"

    .line 858
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local/xbin"

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local/bin"

    .line 860
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/sd/xbin"

    .line 861
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/failsafe"

    .line 862
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local"

    .line 863
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "PATH"

    .line 865
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 866
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 868
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 869
    new-instance v2, Ljava/io/File;

    const-string v3, "su"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isDevOrTestKeys()Z
    .locals 2

    .line 879
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "test-keys"

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dev-keys"

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDeviceRooted()Z
    .locals 1

    .line 851
    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->isDevOrTestKeys()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->hasModifiedSystemProperties()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->hasSuperUserBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static makePsdBundle(Landroid/content/Context;I)Lcom/google/android/settings/support/PsdBundle;
    .locals 61

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v1, :cond_3

    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v6

    .line 190
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "phone"

    .line 193
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    const-string v12, "wifi"

    .line 194
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    const-string v13, "audio"

    .line 196
    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 199
    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "screen_brightness_mode"

    .line 203
    invoke-static {v9, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "screen_off_timeout"

    .line 207
    invoke-static {v9, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "location"

    .line 213
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    if-eqz v4, :cond_4

    const-string v6, "gps"

    .line 216
    invoke-virtual {v4, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 215
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v11, :cond_5

    .line 227
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 229
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 230
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 231
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    move-wide/from16 v24, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v24, v2

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_5
    const-wide/16 v2, 0x0

    move-object/from16 v26, v5

    const-string v5, "android_id"

    .line 235
    invoke-static {v9, v5, v2, v3}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.sys.timezone"

    .line 239
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_6

    const/4 v5, 0x1

    .line 267
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v29

    .line 266
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v5

    const/4 v5, 0x4

    .line 269
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v30

    .line 268
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v30, v5

    const/4 v5, 0x3

    .line 271
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v31

    .line 270
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v31, v5

    const/4 v5, 0x2

    .line 273
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v32

    .line 272
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v32, v5

    const/4 v5, 0x0

    .line 275
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v33

    .line 274
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v5

    const/4 v5, 0x5

    .line 277
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v34

    .line 276
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v5

    goto :goto_6

    :cond_6
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    :goto_6
    if-eqz v7, :cond_a

    const-string v5, "screen_brightness"

    .line 282
    invoke-static {v9, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v11, :cond_7

    .line 286
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v36

    .line 287
    invoke-static {v11}, Lcom/google/android/settings/support/PsdValuesLoader;->getCellularStrength(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    .line 289
    aget-object v37, v11, v17

    move-object/from16 v38, v5

    const/4 v5, 0x1

    .line 290
    aget-object v19, v11, v5

    const/16 v18, 0x2

    .line 291
    aget-object v11, v11, v18

    move-object/from16 v39, v11

    move-object/from16 v11, v19

    goto :goto_7

    :cond_7
    move-object/from16 v38, v5

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    .line 295
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->dumpBatteryStats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_8

    .line 297
    sget-boolean v19, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz v19, :cond_8

    move-object/from16 v41, v11

    new-array v11, v5, [Ljava/lang/Object;

    .line 299
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v42, v15

    const/4 v15, 0x0

    aput-object v5, v11, v15

    const-string v5, "Dump battery stats, length: %d"

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "PsdValuesLoader"

    .line 298
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    move-object/from16 v41, v11

    move-object/from16 v42, v15

    const/4 v15, 0x0

    :goto_8
    if-eqz v13, :cond_9

    .line 306
    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 305
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x5

    .line 309
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 308
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    .line 312
    invoke-virtual {v13, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v16

    .line 311
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v5

    const/4 v5, 0x4

    .line 315
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 314
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v5

    const/4 v5, 0x3

    .line 318
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v28

    .line 317
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    const/4 v5, 0x2

    .line 321
    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v43

    .line 320
    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual {v13}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v43, v5

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v43, 0x0

    :goto_9
    const-string v5, "plugged"

    move-object/from16 v44, v11

    const/4 v11, -0x1

    .line 326
    invoke-virtual {v14, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->getUsbMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    .line 333
    invoke-static {v12}, Lcom/google/android/settings/support/PsdValuesLoader;->getWifiExtras(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v45, v12

    goto :goto_a

    :cond_a
    move-object/from16 v42, v15

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    :goto_a
    const-string v12, ""

    if-eqz v8, :cond_c

    .line 339
    invoke-static {v9}, Lcom/google/android/settings/support/PsdValuesLoader;->getDeviceAgeInDays(Landroid/content/ContentResolver;)J

    move-result-wide v46

    .line 340
    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v48, 0x1e

    cmp-long v46, v46, v48

    if-gtz v46, :cond_b

    const-string v46, "1"

    goto :goto_b

    :cond_b
    const-string v46, "0"

    :goto_b
    move-object/from16 v60, v46

    move-object/from16 v46, v11

    move-object/from16 v11, v60

    goto :goto_c

    :cond_c
    move-object/from16 v46, v11

    move-object v8, v12

    move-object v11, v8

    .line 345
    :goto_c
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->getWifiStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v47

    move-object/from16 v48, v5

    const-string v5, "scale"

    move-object/from16 v49, v13

    const/4 v13, -0x1

    .line 348
    invoke-virtual {v14, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v15

    const-string v15, "level"

    .line 350
    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "location_mode"

    move-object/from16 v50, v11

    const/4 v11, 0x0

    .line 354
    invoke-static {v9, v15, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 358
    invoke-static {v14, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->readBatteryInfo(Landroid/content/Intent;I)[Ljava/lang/String;

    move-result-object v14

    .line 362
    invoke-static {v0, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readStorage(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v15

    .line 366
    invoke-static {v0, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readRam(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v51

    move/from16 v52, v7

    const-string v7, "com.google.android.GoogleCamera"

    .line 369
    invoke-static {v10, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v53, v8

    const-string v8, "com.google.android.wearable.app"

    .line 372
    invoke-static {v10, v8}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 375
    invoke-static {v10, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v54, v8

    const-string v8, "com.google.android.gms"

    .line 379
    invoke-static {v10, v8}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v55, v7

    const-string v7, "com.android.vending"

    .line 383
    invoke-static {v10, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v10, "update_url"

    .line 387
    invoke-static {v9, v10, v12}, Lcom/google/android/settings/experiments/GServicesProxy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 390
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readBluetoothInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v56

    move-object/from16 v58, v7

    move-object/from16 v57, v8

    const-wide/32 v7, 0x61a80

    move-object/from16 v59, v10

    const-string v10, "settingsgoogle:psd_values_size_limit_bytes"

    .line 393
    invoke-static {v9, v10, v7, v8}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 399
    new-instance v9, Lcom/google/android/settings/support/PsdBundle$Builder;

    invoke-direct {v9, v0, v7, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;-><init>(Landroid/content/Context;J)V

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v8, "noe_display_name"

    .line 400
    invoke-virtual {v9, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "noe_type"

    .line 401
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v9, "noe_product"

    .line 402
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_sdk_int"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v9, "noe_incremental"

    .line 404
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v9, "noe_codename"

    .line 405
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v9, "noe_board"

    .line 406
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v9, "noe_brand"

    .line 407
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v9, "noe_fingerprint"

    .line 408
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    const-string v9, "noe_base_os"

    .line 409
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 410
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_preview_sdk_int"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const-string v9, "noe_security_patch"

    .line 411
    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/settings/support/PsdValuesLoader;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 413
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_dump_datetime"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    if-nez v3, :cond_d

    move-object v3, v12

    :cond_d
    const-string v8, "noe_timezone"

    .line 414
    invoke-virtual {v7, v8, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string v8, "noe_bootloader"

    .line 415
    invoke-virtual {v3, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    .line 416
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "noe_radio"

    invoke-virtual {v3, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    if-nez v6, :cond_e

    move-object v6, v12

    :cond_e
    const-string v7, "noe_network_operator"

    .line 418
    invoke-virtual {v3, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    if-nez v21, :cond_f

    move-object v6, v12

    goto :goto_d

    :cond_f
    move-object/from16 v6, v21

    :goto_d
    const-string v7, "noe_network_type"

    .line 419
    invoke-virtual {v3, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    if-nez v22, :cond_10

    move-object v6, v12

    goto :goto_e

    :cond_10
    move-object/from16 v6, v22

    :goto_e
    const-string v7, "noe_phone_type"

    .line 420
    invoke-virtual {v3, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    if-nez v23, :cond_11

    move-object v6, v12

    goto :goto_f

    :cond_11
    move-object/from16 v6, v23

    :goto_f
    const-string v7, "noe_is_volte_available"

    .line 421
    invoke-virtual {v3, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v7, "noe_build_id"

    .line 423
    invoke-virtual {v3, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    const-string v6, "noe_decimal_gsf_id"

    .line 425
    invoke-virtual {v3, v6, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_gps_enabled"

    .line 426
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v42, :cond_12

    move-object v3, v12

    goto :goto_10

    :cond_12
    move-object/from16 v3, v42

    :goto_10
    const-string v4, "noe_screen_brightness_mode"

    .line 427
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v29, :cond_13

    move-object v3, v12

    goto :goto_11

    :cond_13
    move-object/from16 v3, v29

    :goto_11
    const-string v4, "noe_system_max_volume"

    .line 429
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v30, :cond_14

    move-object v3, v12

    goto :goto_12

    :cond_14
    move-object/from16 v3, v30

    :goto_12
    const-string v4, "noe_alarm_max_volume"

    .line 430
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v33, :cond_15

    move-object v3, v12

    goto :goto_13

    :cond_15
    move-object/from16 v3, v33

    :goto_13
    const-string v4, "noe_voice_call_max_volume"

    .line 432
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v34, :cond_16

    move-object v3, v12

    goto :goto_14

    :cond_16
    move-object/from16 v3, v34

    :goto_14
    const-string v4, "noe_notification_max_volume"

    .line 434
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v31, :cond_17

    move-object v3, v12

    goto :goto_15

    :cond_17
    move-object/from16 v3, v31

    :goto_15
    const-string v4, "noe_music_max_volume"

    .line 436
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v32, :cond_18

    move-object v3, v12

    goto :goto_16

    :cond_18
    move-object/from16 v3, v32

    :goto_16
    const-string v4, "noe_ringer_max_volume"

    .line 437
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v26, :cond_19

    move-object v3, v12

    goto :goto_17

    :cond_19
    move-object/from16 v3, v26

    :goto_17
    const-string v4, "noe_display_timeout"

    .line 440
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v20, :cond_1a

    move-object v3, v12

    goto :goto_18

    :cond_1a
    move-object/from16 v3, v20

    :goto_18
    const-string v4, "noe_sim_state"

    .line 441
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_good_reboots_last_day"

    .line 442
    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_bad_reboots_last_day"

    .line 443
    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_good_reboots_last_week"

    .line 444
    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_bad_reboots_last_week"

    .line 445
    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_location_mode"

    .line 446
    invoke-virtual {v2, v3, v11}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    .line 447
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readWifiState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "noe_wifi_state"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 448
    aget-object v4, v47, v3

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 449
    aget-object v4, v47, v3

    goto :goto_19

    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readWifiSecurityKeyValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_19
    const-string v3, "noe_wifi_security_key_valid"

    .line 448
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v14, v3

    const-string v3, "noe_battery_health"

    .line 450
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_battery_level"

    .line 451
    invoke-virtual {v2, v3, v13}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_battery_scale"

    .line 452
    invoke-virtual {v2, v3, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v4, v14, v3

    const-string v3, "noe_battery_voltage"

    .line 453
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v14, v3

    const-string v4, "noe_battery_present"

    .line 454
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v15, v3

    const-string v5, "noe_storage_available"

    .line 455
    invoke-virtual {v2, v5, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v15, v4

    const-string v6, "noe_storage_total"

    .line 456
    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v51, v3

    const-string v6, "noe_ram_available"

    .line 457
    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v51, v4

    const-string v6, "noe_ram_total"

    .line 458
    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v1, v3

    const-string v6, "noe_google_app_version_code"

    .line 459
    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v1, v1, v4

    const-string v5, "noe_google_app_version_name"

    .line 460
    invoke-virtual {v2, v5, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v57, v3

    const-string v5, "noe_google_play_services_version_code"

    .line 461
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v57, v4

    const-string v5, "noe_google_play_services_version_name"

    .line 463
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v58, v3

    const-string v5, "noe_google_play_store_version_code"

    .line 465
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v58, v4

    const-string v5, "noe_google_play_store_version_name"

    .line 466
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    const-string v2, "noe_update_url"

    move-object/from16 v5, v59

    .line 467
    invoke-virtual {v1, v2, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v56, v3

    const-string v5, "noe_num_bluetooth_connections"

    .line 468
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v56, v4

    const-string v5, "noe_bluetooth_enabled"

    .line 469
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    .line 470
    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->isDeviceRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "noe_is_rooted"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v55, v3

    const-string v5, "noe_camera_version_code"

    .line 471
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v55, v4

    const-string v5, "noe_camera_version_name"

    .line 472
    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v54, v3

    const-string v3, "noe_wear_version_code"

    .line 473
    invoke-virtual {v1, v3, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v54, v4

    const-string v3, "noe_wear_version_name"

    .line 474
    invoke-virtual {v1, v3, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    move/from16 v2, p1

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1c

    .line 477
    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addPairedBluetoothDevices()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    .line 478
    invoke-virtual {v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addConnectedBluetoothDevicesSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    .line 479
    invoke-virtual {v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTopBatteryApps()Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1c
    if-ne v4, v2, :cond_1d

    const-string v3, "noe_device_activation_time"

    move-object/from16 v8, v53

    .line 483
    invoke-virtual {v1, v3, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1d
    if-nez v2, :cond_1e

    const-string v2, "noe_device_under_thirty"

    move-object/from16 v3, v50

    .line 487
    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1e
    if-eqz v52, :cond_2d

    if-nez v35, :cond_1f

    move-object v2, v12

    goto :goto_1a

    :cond_1f
    move-object/from16 v2, v35

    :goto_1a
    const-string v3, "noe_voice_call_volume"

    .line 492
    invoke-virtual {v1, v3, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v16, :cond_20

    move-object v3, v12

    goto :goto_1b

    :cond_20
    move-object/from16 v3, v16

    :goto_1b
    const-string v4, "noe_notification_volume"

    .line 494
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v44, :cond_21

    move-object v3, v12

    goto :goto_1c

    :cond_21
    move-object/from16 v3, v44

    :goto_1c
    const-string v4, "noe_system_volume"

    .line 496
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v14, v3

    const-string v3, "noe_battery_status"

    .line 498
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v27, :cond_22

    move-object v3, v12

    goto :goto_1d

    :cond_22
    move-object/from16 v3, v27

    :goto_1d
    const-string v4, "noe_alarm_volume"

    .line 499
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v28, :cond_23

    move-object v3, v12

    goto :goto_1e

    :cond_23
    move-object/from16 v3, v28

    :goto_1e
    const-string v4, "noe_music_volume"

    .line 500
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v43, :cond_24

    move-object v3, v12

    goto :goto_1f

    :cond_24
    move-object/from16 v3, v43

    :goto_1f
    const-string v4, "noe_ringer_volume"

    .line 501
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v38, :cond_25

    move-object v3, v12

    goto :goto_20

    :cond_25
    move-object/from16 v3, v38

    :goto_20
    const-string v4, "noe_brightness_level"

    .line 503
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v49, :cond_26

    move-object v3, v12

    goto :goto_21

    :cond_26
    move-object/from16 v3, v49

    :goto_21
    const-string v4, "noe_headset_attached"

    .line 505
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v40, :cond_27

    move-object v3, v12

    goto :goto_22

    :cond_27
    move-object/from16 v3, v40

    :goto_22
    const-string v4, "noe_battery_stats"

    .line 507
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v48, :cond_28

    move-object v3, v12

    goto :goto_23

    :cond_28
    move-object/from16 v3, v48

    :goto_23
    const-string v4, "noe_charging_status"

    .line 508
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v46, v3

    const-string v3, "noe_usb_functions"

    .line 509
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v46, v3

    const-string v3, "noe_usb_power_role"

    .line 510
    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v46, v3

    const-string v4, "noe_usb_data_role"

    .line 511
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v36, :cond_29

    move-object v3, v12

    goto :goto_24

    :cond_29
    move-object/from16 v3, v36

    :goto_24
    const-string v4, "noe_imei"

    .line 512
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v37, :cond_2a

    move-object v3, v12

    goto :goto_25

    :cond_2a
    move-object/from16 v3, v37

    :goto_25
    const-string v4, "noe_cellular_radio_type"

    .line 513
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v41, :cond_2b

    move-object v3, v12

    goto :goto_26

    :cond_2b
    move-object/from16 v3, v41

    :goto_26
    const-string v4, "noe_cellular_strength"

    .line 515
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v39, :cond_2c

    goto :goto_27

    :cond_2c
    move-object/from16 v12, v39

    :goto_27
    const-string v3, "noe_cellular_dbm"

    .line 517
    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v47, v3

    const-string v5, "noe_wifi_available"

    .line 518
    invoke-virtual {v2, v5, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v47, v4

    const-string v6, "noe_wifi_connected"

    .line 519
    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v3, v45, v3

    const-string v5, "noe_wifi_speed"

    .line 520
    invoke-virtual {v2, v5, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v3, v45, v4

    const-string v4, "noe_wifi_strength"

    .line 521
    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 523
    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addBatteryAnomalyApps()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyTroubleshooterDiagnosticSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyTroubleshooterStatisticsSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 528
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1110000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "genie-eng:app_pkg_name"

    const-string v3, "com.google.android.settings.gphone"

    .line 529
    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 532
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v24

    .line 533
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x3fb

    const/4 v7, 0x0

    long-to-int v9, v2

    const-string v8, "latency"

    .line 534
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 540
    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->build()Lcom/google/android/settings/support/PsdBundle;

    move-result-object v0

    return-object v0
.end method

.method private static readBatteryInfo(Landroid/content/Intent;I)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 673
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "health"

    .line 674
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const-string v4, "status"

    .line 676
    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, p1

    :cond_1
    const-string p1, "voltage"

    .line 678
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x3

    const-string v1, "present"

    .line 680
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v0
.end method

.method private static readBluetoothInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 685
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    .line 687
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 689
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 692
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 693
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 698
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 701
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PsdValuesLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/google/android/settings/support/PsdValuesLoader;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 740
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 738
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method protected static readRam(Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "activity"

    .line 746
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 748
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 749
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 750
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 751
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    if-nez p1, :cond_0

    .line 753
    invoke-static {v4, v5}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v4

    .line 754
    invoke-static {v6, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v6

    .line 756
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    .line 757
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_1
    const-string p0, ""

    aput-object p0, v0, v2

    aput-object p0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected static readStorage(Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 8

    .line 766
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_3

    .line 771
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 772
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 773
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 774
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 775
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 776
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 780
    invoke-static {v1, v2}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v1

    .line 781
    invoke-static {v3, v4}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    move-wide p0, v3

    goto :goto_1

    :cond_3
    move-wide p0, v1

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 784
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3
.end method

.method private static readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 713
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 715
    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 716
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p0, v1, v2

    goto :goto_0

    :cond_0
    aput-object v0, v1, v3

    aput-object v0, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PsdValuesLoader"

    const-string p1, "Failed to find package"

    .line 722
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v0, v1, v3

    aput-object v0, v1, v2

    :goto_0
    return-object v1
.end method

.method private static readWifiSecurityKeyValid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "wifi"

    .line 828
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    .line 830
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 832
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 833
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 837
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static readWifiState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "wifi"

    .line 846
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static roundToDays(J)J
    .locals 1

    .line 550
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static roundToMB(J)J
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    .line 632
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method
