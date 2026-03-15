.class public Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsCustomPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->select()V

    .line 89
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x7f121316

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x578

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected areCustomOptionsSelected()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 75
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    .line 77
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 56
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method protected select()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x577

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->areCustomOptionsSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
