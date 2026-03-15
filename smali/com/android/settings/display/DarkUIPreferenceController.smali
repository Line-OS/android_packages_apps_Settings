.class public Lcom/android/settings/display/DarkUIPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DarkUIPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final DARK_MODE_PREFS:Ljava/lang/String; = "dark_mode_prefs"

.field public static final DIALOG_SEEN:I = 0x1

.field public static final PREF_DARK_MODE_DIALOG_SEEN:Ljava/lang/String; = "dark_mode_dialog_seen"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPreference:Landroidx/preference/SwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/android/settings/display/DarkUIPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/DarkUIPreferenceController$1;-><init>(Lcom/android/settings/display/DarkUIPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 66
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private showDarkModeDialog()V
    .locals 2

    .line 102
    new-instance v0, Lcom/android/settings/display/DarkUIInfoDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/display/DarkUIInfoDialogFragment;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPowerSaveMode()Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dark_mode_dialog_seen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->showDarkModeDialog()V

    return v1

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return v2
.end method

.method public setParentFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method setUiModeManager(Landroid/app/UiModeManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method updateEnabledStateIfNeeded()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->isPowerSaveMode()Z

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f1204ce

    goto :goto_0

    :cond_1
    const v0, 0x7f1204cd

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->updateEnabledStateIfNeeded()V

    return-void
.end method
