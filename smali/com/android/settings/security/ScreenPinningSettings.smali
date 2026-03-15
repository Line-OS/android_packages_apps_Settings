.class public Lcom/android/settings/security/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUseScreenLock:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "use_screen_lock"

    .line 55
    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 219
    new-instance v0, Lcom/android/settings/security/ScreenPinningSettings$2;

    invoke-direct {v0}, Lcom/android/settings/security/ScreenPinningSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/ScreenPinningSettings;Z)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result p0

    return p0
.end method

.method private getCurrentSecurityTitle()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 p0, 0x20000

    if-eq v0, p0, :cond_1

    const/high16 p0, 0x30000

    if-eq v0, p0, :cond_1

    const/high16 p0, 0x40000

    if-eq v0, p0, :cond_0

    const/high16 p0, 0x50000

    if-eq v0, p0, :cond_0

    const/high16 p0, 0x60000

    if-eq v0, p0, :cond_0

    const/high16 p0, 0x80000

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f120c9e

    return p0

    :cond_1
    const p0, 0x7f120ca0

    return p0

    .line 179
    :cond_2
    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f120c9f

    return p0

    :cond_3
    :goto_0
    const p0, 0x7f120c9d

    return p0
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lock_to_app_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_to_app_exit_locked"

    .line 123
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLockToAppEnabled(Z)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    :cond_0
    return-void
.end method

.method private setScreenLockUsed(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000

    const-string v1, "minimum_quality"

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x2b

    .line 139
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_exit_locked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f120784

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x56

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const v0, 0x7f120c9c

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 73
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 77
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2b

    if-ne p1, p2, :cond_1

    .line 156
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 157
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 162
    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 191
    invoke-direct {p0, p2}, Lcom/android/settings/security/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->updateDisplay()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102003f

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d017c

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public updateDisplay()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f150092

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 202
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroidx/preference/SwitchPreference;

    .line 205
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/security/ScreenPinningSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/ScreenPinningSettings$1;-><init>(Lcom/android/settings/security/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    return-void
.end method
