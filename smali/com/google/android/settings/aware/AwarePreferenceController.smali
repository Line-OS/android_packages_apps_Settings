.class public Lcom/google/android/settings/aware/AwarePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AwarePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/google/android/settings/aware/AwareHelper$Callback;


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private final mHelper:Lcom/google/android/settings/aware/AwareHelper;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private mPref:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance p2, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {p2, p1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    return-void
.end method

.method private enableAllFeatures()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v2, "silence_gesture"

    invoke-virtual {v1, v2}, Lcom/google/android/settings/aware/AwareHelper;->readFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v2, "skip_gesture"

    invoke-virtual {v1, v2}, Lcom/google/android/settings/aware/AwareHelper;->readFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v2, "doze_wake_display_gesture"

    invoke-virtual {v1, v2}, Lcom/google/android/settings/aware/AwareHelper;->readFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v2, "doze_wake_screen_gesture"

    invoke-virtual {v1, v2}, Lcom/google/android/settings/aware/AwareHelper;->readFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_3
    iget-object p0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    const-string v1, "aware_lock_enabled"

    invoke-virtual {p0, v1}, Lcom/google/android/settings/aware/AwareHelper;->readFeatureEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 125
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mPref:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isAirplaneModeOn()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "aware_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/aware/AwarePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "aware_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    iget-object p0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 87
    iget-object p0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mPref:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/aware/AwareHelper;->register(Lcom/google/android/settings/aware/AwareHelper$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->unregister()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/google/android/settings/aware/AwarePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p0}, Lcom/google/android/settings/aware/AwareSettingsDialogFragment;->show(Landroidx/fragment/app/Fragment;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "aware_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-direct {p0}, Lcom/google/android/settings/aware/AwarePreferenceController;->enableAllFeatures()V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwarePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
