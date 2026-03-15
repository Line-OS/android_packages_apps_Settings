.class public Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelStoragePreferenceController.java"


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 41
    new-instance p1, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {p1, p2}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$refreshSummary$0$TopLevelStoragePreferenceController(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    long-to-double v2, v2

    div-double/2addr p3, v2

    .line 63
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide p2, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 64
    invoke-static {p0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const p0, 0x7f120e7b

    .line 62
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$refreshSummary$1$TopLevelStoragePreferenceController(Landroidx/preference/Preference;)V
    .locals 8

    .line 56
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v6

    .line 59
    iget-wide v0, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v0, v4

    long-to-double v4, v0

    .line 61
    new-instance v7, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    invoke-static {v7}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
