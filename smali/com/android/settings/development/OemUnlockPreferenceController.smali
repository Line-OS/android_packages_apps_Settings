.class public Lcom/android/settings/development/OemUnlockPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private final mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mOemLockManager:Landroid/service/oemlock/OemLockManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    .line 59
    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    goto :goto_0

    :cond_0
    const-string v0, "oem_lock"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    :goto_0
    const-string v0, "user"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "phone"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez p2, :cond_2

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    :goto_2
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleDeveloperOptionsToggled()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "no_factory_reset"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120aea

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSimLockedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120aed

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f120aec

    goto :goto_0

    :cond_2
    const v0, 0x7f120aee

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method confirmEnableOemUnlock()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->show(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oem_unlock_enable"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBootloaderUnlocked()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result p0

    return p0
.end method

.method isOemUnlockAllowedByUserAndCarrier()Z
    .locals 2

    .line 216
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowedByCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_factory_reset"

    .line 218
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isOemUnlockedAllowed()Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0, p3}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return p3
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->handleDeveloperOptionsToggled()V

    return-void
.end method

.method public onOemUnlockConfirmed()V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    return-void
.end method

.method public onOemUnlockDismissed()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/OemUnlockPreferenceController;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p1, p2}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const v0, 0x7f120ae9

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockedAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateOemUnlockSettingDescription()V

    .line 111
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "no_factory_reset"

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
