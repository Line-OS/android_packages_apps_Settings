.class public Lcom/android/settings/backup/BackupDataPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BackupDataPreferenceController.java"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "backup_data"

    invoke-static {p0, v0}, Lcom/android/settings/backup/PrivacySettingsUtils;->isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-virtual {v0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->isBackupGray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-virtual {v0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->isBackupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120045

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 48
    iget-object p0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-virtual {p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->isBackupGray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 49
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
